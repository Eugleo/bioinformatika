#lang racket

(require pollen/pagetree pollen/decode txexpr pollen/template/html)

(require (prefix-in pygments: pollen/unstable/pygments))

(require pollen/core pollen/setup)

(require racket/pretty)

#| Setup |#

(module setup racket/base
  (require pollen/setup)
  (provide (all-defined-out))

  (define poly-targets '(html md tex pdf))

  (define BLOCK-TAGS
  '(name li box lecture details summary list-title answer img question q-label q-body ql dl dt dd
    proof slide-aside-wrapper default-block-tags section subsection subsubsection subsubsubsection))
  (define block-tags
    (append BLOCK-TAGS default-block-tags)))

(provide slide lecture)

(define (latexify id content)
  (apply string-append `("\\" ,id "{" ,@(map ((curry format) "~a") content) "}")))

(define (lecture str)
  (case (current-poly-target)
    [(md) (em (format "<Přednáška č. ~a>" str))]
    [(tex pdf) (apply string-append `("\\marginline{" "Přednáška č. " ,(format "~a" str) "}"))]
    [else `(div [[class "lecture"]] (lecture ,(format "Přednáška ~a." str)))]))

(define (slide #:inline [inline #f] #:t [title #f] #:s [source 1] . slides)
  (case (current-poly-target)
    [(md)
      (if (= (length slides) 1)
          `("[Pr. " ,source ", slide " ,@slides "]")
          `("[Pr. " ,source ", slidy: " ,(string-join (map ~v slides) ", ") "]"))]
    [(tex pdf)
    (apply string-append
      (for/list ([n (in-list slides)])
          (img (format "slides-~a/slide-~a.jpg" source n)
               (format "Prezentace č. ~a, slide č. ~a" source n)
               #:label (format "slides-~a-slide-~a" source n))))]
    [else
      `(,(if inline 'slide-inline-wrapper 'slide-aside-wrapper)
        (,(if inline '@ 'aside)
        ,@(for/list ([n (in-list slides)])
          `(a [[href ,(format "javascript:toggleImageVisible('slides-~a-slide-~a')" source n)]
                [class "lnk-slide"]]
              ,slide-svg)))
        (@
        ,@(for/list ([n (in-list slides)])
          `(img [[id ,(format "slides-~a-slide-~a" source n)]
                  [class "slide"]
                  [src ,(format "resources/images/slides-~a/slide-~a.jpg" source n)]
                  [style "display: none; width: 100%; height: auto;"]]))))]))


#| Page organization |#

(provide title section subsection subsubsection)

(define (title . elements)
  (case (current-poly-target)
    [(md) `("# " ,@elements)]
    [(tex pdf) (make-section-title-tex "chapter" elements)]
    [else (make-section-title 'h1 elements)]))
(define (section . elements)
  (case (current-poly-target)
    [(md) `("## " ,@elements)]
    [(tex pdf) (apply string-append `("\\section" "{" ,@elements "} \\label{" ,@elements "} " "\\FloatBarrier\n" ))]
    [else (make-section-title 'h2 elements)]))
(define (subsection . elements)
  (case (current-poly-target)
    [(md) `("### " ,@elements)]
    [(tex pdf) (make-section-title-tex "subsection" elements)]
    [else (make-section-title 'h3 elements)]))
(define (subsubsection . elements)
  (case (current-poly-target)
    [(md) `("#### " ,@elements)]
    [(tex pdf) (make-section-title-tex "subsubsection" elements)]
    [else (make-section-title 'h4 elements)]))

(define CURRENT-SECTION-TITLES (make-hash))
(define (get-id-num id)
  (cond
    [(hash-has-key? CURRENT-SECTION-TITLES id)
     (hash-update! CURRENT-SECTION-TITLES id add1)
     (hash-ref CURRENT-SECTION-TITLES id)]
    [else
     (hash-set! CURRENT-SECTION-TITLES id 1)
     1]))

(define (make-section-title name elements)
  (define normalized-content (apply string-append (filter string? elements)))
  (define duplicate-titles-count (get-id-num normalized-content))
  (define id
    (if (eq? duplicate-titles-count 1)
        normalized-content
        (format "~a-~a" normalized-content duplicate-titles-count)))
  `(,name [[id ,id]]
      (a [[class "internal-link"] [href ,(format "#~a" id)]]
       ,@elements)))

(define (make-section-title-tex name elements)
  (define normalized-content (apply string-append (filter string? elements)))
  (apply string-append `("\\" ,name "{" ,@elements "} \\label{" ,@elements "}\n" )))

(define link-svg
  `(svg [[class "link"] [xlmns "http://www.w3.org/2000/svg"] [viewBox "0 0 24 24"]]
    (path [[d "M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"]])
    (path [[d "M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"]])))

#| Lists |#

(provide definitions term ls)

(define (definitions . elements)
  (case (current-poly-target)
    [(md) elements]
    [(tex pdf) (apply string-append `("\\begin{description}\n" ,@elements "\n\\end{description}\n"))]
    [else `(dl ,@elements)]))

(define (term atom . body)
  (case (current-poly-target)
    [(md) `(,(strong atom) "\n" ,@body)]
    [(tex pdf) (apply string-append `("\\item" "[" ,atom "]" "\\hfill \\\\\n" ,@body "\n"))]
    [else `(@ (dt ,atom) (dd ,@body))]))

(define (ls #:t [title #f] . elements)
  (case (current-poly-target)
    [(md) (ls-md title elements)]
    [(tex pdf) (ls-tex title elements)]
    [else (ls-html title elements)]))

(define (ls-md title elements)
  (define (dehash el)
    (cond
      [(string? el) (string-replace el "# " "1. ")]
      [else el]))

  (define dehashed (elements-recurse dehash elements))
  (if title
    `(,title "\n" ,@dehashed)
    dehashed))

(define (ls-tex title elems)
  (define (go acc prev lvl xs)
    (cond
      [(null? xs)
       (values (list (unbullet acc)) '())]
      [(and (newline? prev) (bullet-lvl (first xs)))
       (define new-lvl (bullet-lvl (first xs)))
       (cond
         [(> lvl new-lvl) (values (list (unbullet acc)) xs)]
         [(< lvl new-lvl)
          (define ord (bullet-ord? (first xs)))
          (define-values (subitems rst-lower) (go (list (first xs)) (first xs) new-lvl (rest xs)))
          (define listed-subitems (make-list-tex ord subitems))
          (cond
           [(null? rst-lower) (values (list (unbullet (cons listed-subitems acc))) '())]
           [else
              (define next-lvl (bullet-lvl (first rst-lower)))
              (cond
                [(> lvl next-lvl)
                  (values (list (unbullet (cons listed-subitems acc))) rst-lower)]
                [else
                  (define-values (elseitems rst-same)
                    (go (list (first rst-lower)) (first rst-lower) lvl (rest rst-lower)))
                  (values (cons (unbullet (cons listed-subitems acc)) elseitems) rst-same)])])]
         [else
           (define-values (elseitems rst-same) (go (list (first xs)) (first xs) lvl (rest xs)))
           (values (cons (unbullet acc) elseitems) rst-same)])]
      [else
        (go (cons (first xs) acc) (first xs) lvl (rest xs))]))

  (define joined (indent-bullets elems))
  (define-values (items _) (go (list (first joined)) (first joined) 0 (rest joined)))
  (define listed-items (make-list-tex (bullet-ord? (first joined)) items))

  (cond
    [title (apply string-append `("\\paragraph{" ,title "}\n" ,listed-items "\n"))]
    [else (format "~a\n" listed-items)]))

(define (make-list-tex ord items)
  (define (helper s) (apply string-append `("    \\item " ,@s "\n")))
  (apply string-append `(,(if ord "\\begin{myEnumerate}[nosep]\n" "\\begin{myItemize}[nosep]\n")
    ,@(map helper items)
    ,(if ord "\\end{myEnumerate}\n" "\\end{myItemize}\n"))))

(define (elements-recurse f xs)
  (cond
    [(null? xs) '()]
    [(list? (first xs))
     (cons (elements-recurse f (first xs)) (elements-recurse f (rest xs)))]
    [else (cons (f (first xs)) (elements-recurse f (rest xs)))]))

(define (ls-html title elems)
  (define (go acc prev lvl xs)
    (cond
      [(null? xs)
       (values (list (unbullet acc)) '())]
      [(and (newline? prev) (bullet-lvl (first xs)))
       (define new-lvl (bullet-lvl (first xs)))
       (cond
         [(> lvl new-lvl)
          (values (list (unbullet acc)) xs)]
         [(< lvl new-lvl)
          (define ord (bullet-ord? (first xs)))
          (define-values (subitems rst-lower) (go (list (first xs)) (first xs) new-lvl (rest xs)))
          (define listed-subitems (make-list ord subitems))
          (cond
           [(null? rst-lower) (values (list (unbullet (cons listed-subitems acc))) '())]
           [else
              (define next-lvl (bullet-lvl (first rst-lower)))
              (cond
                [(> lvl next-lvl)
                  (values (list (unbullet (cons listed-subitems acc))) rst-lower)]
                [else
                  (define-values (elseitems rst-same)
                    (go (list (first rst-lower)) (first rst-lower) lvl (rest rst-lower)))
                  (values (cons (unbullet (cons listed-subitems acc)) elseitems) rst-same)])])]
         [else
           (define-values (elseitems rst-same) (go (list (first xs)) (first xs) lvl (rest xs)))
           (values (cons (unbullet acc) elseitems) rst-same)])]
      [else
        (go (cons (first xs) acc) (first xs) lvl (rest xs))]))

  (define joined (indent-bullets elems))
  (define-values (items _) (go (list (first joined)) (first joined) 0 (rest joined)))
  (define listed-items (make-list (bullet-ord? (first joined)) items))

  (cond
    [title `(div [[class "list"]] (list-title ,title) ,listed-items)]
    [else listed-items]))

(define (make-list ord items)
  (cons (if ord 'ol 'ul) (map ((curry cons) 'li) items)))

(define (bullet-ord? str)
  (regexp-match? #rx"\\s*# " str))

(define (indent-bullets elems)
  (define (go acc prev xs)
    (cond
      [(null? xs) acc]
      [(and (string? prev) (regexp-match? #rx"^ +$" prev) (bullet-lvl (first xs)))
       (go (cons (string-append prev (first xs)) (rest acc)) (first xs) (rest xs))]
      [else (go (cons (first xs) acc) (first xs) (rest xs))]))
  (cond
    [(null? elems) '()]
    [else (reverse (go (list (first elems)) (first elems) (rest elems)))]))

(define u-lvls (vector "- " "    - " "        - " "            - " "                - "))
(define o-lvls (vector "# " "    # " "        # " "            # " "                # "))
(define (bullet-lvl str)
  (define (go n)
    (cond
      [(not (string? str)) #f]
      [(eq? n -1) #f]
      [(string-prefix? str (vector-ref u-lvls n)) n]
      [(string-prefix? str (vector-ref o-lvls n)) n]
      [else (go (sub1 n))]))
  (go 4))

(define (unbullet xs)
  (drop-bullet (reverse (drop-newlines xs))))

(define (drop-bullet xs)
  (cond
    [(null? xs) '()]
    [else (cons (second (regexp-match #rx"\\s*[#-] (.*)" (first xs))) (rest xs))]))

(define (drop-newlines xs)
  (cond
    [(null? xs) xs]
    [(eq? (first xs) "\n") (drop-newlines (rest xs))]
    [else xs]))

(define BULLET "- ")

(define (newline? str)
  (and (string? str) (eq? str "\n")))

#| tex pdft formatting |#

(provide em strong)

(define (em . elements)
  (case (current-poly-target)
    [(md) `("_" ,@elements "_")]
    [(tex pdf) (latexify "emph" elements)]
    [else `(em ,@elements)]))

(define (strong . elements)
  (case (current-poly-target)
    [(md) `("**" ,@elements "**")]
    [(tex pdf) (latexify "textbf" elements)]
    [else `(strong ,@elements)]))

#| Basic elements|#

(provide link $ $$ align$ u chem img highlight code)

(define (u str)
  (case (current-poly-target)
    [(md html) ($ (string-append "\\pu{" str "}"))]
    [(tex pdf)
      (define number (regexp-match? #rx"\\d" str))
      (define matches (regexp-match #rx"^(.*) (.*)$" str))
      (if number
          (string-append "\\SI{" (list-ref matches 1) "}{" (list-ref matches 2) "}")
          (string-append "\\si{" str "}"))]))

(define (link #:title [title #f] url . description)
  (case (current-poly-target)
    [(md)
      (define url+title
        (if title
          (format "~a \"~a\"" url title)
          url))
      `("[" ,description "]" "(" ,url+title ")")]
    [(tex pdf)
      (cond
        [(string-prefix? url "#") (apply string-append `("\\hyperref[" ,(string-trim url "#" #:right? #f) "]" "{" ,@description "}"))]
        [else (apply string-append `("\\href{" ,(string-replace (string-trim url "#" #:right? #f) "#" "\\#") "}" "{" ,@description "}"))])]
    [else
      (define attr-list
        (if title
            `[[href ,url] [title ,title]]
            `[[href ,url]]))
        `(a ,attr-list
          ,@(if (not (null? description)) description (list url)))]))

(define ($ . elements)
  (case (current-poly-target)
    [(md) `("$" ,@elements "$")]
    [(tex pdf) (apply string-append `("\\(" ,@elements "\\)"))]
    [else `(mathjax  ,(apply string-append `("\\(" ,@elements "\\)")))]))

(define ($$ . elements)
  (case (current-poly-target)
    [(md) `("$$" ,@elements "$$")]
    [(tex pdf) (apply string-append `("\\[" ,@elements "\\]"))]
    [else
      `(div [[class "scrollable"]]
        (mathjax ,(apply string-append `("\\[" ,@elements "\\]"))))]))

(define (align$ . elements)
  (case (current-poly-target)
    [(md) `("$$" ,@elements "$$")]
    [(tex pdf) (apply string-append `("\\begin{align*}" ,@elements "\\end{align*}\n"))]
    [else `(mathjax ,(apply string-append `("\\begin{align*}" ,@elements "\\end{align*}")))]))

(define (chem str)
  ($ (string-append "\\ce{" str "}")))

(define (img #:root [root "resources/images/"]
             #:label [label ""]
             #:w [w #f]
             #:h [h #f]
             link
             . alt)
  (define loc (string-append root link))
  (case (current-poly-target)
    [(md) `("![" ,@alt "]" "(" ,loc ")")]
    [(tex pdf) (apply string-append
              `("\\begin{figure}\n"
                "    \\caption{" ,@alt "}\n"
                "    \\includegraphics[width=0.85\\textwidth]{" ,link "}\n"
                "    \\centering\n"
                "    \\label{" ,label "}\n"
                "\\end{figure}\n"))]
    [else
      (define width (if w (format "~apx" w) "100%"))
      (define height (if h (format "~apx" h) "auto"))
      (define image
        `(img [[src ,loc]
              [style ,(format "max-width: ~a; max-height: ~a;" width height)]]))
      (define image-no-size
        `(img [[src ,loc]]))
      (cond
        [(empty? alt) image]
        [else
          `(div [[class "figure-wrapper"]
                 [style ,(format "max-width: ~a; max-height: ~a;" width height)]]
                ,image-no-size
                (div [[class "figure-caption"]]
                     ,@alt))])]))

(define (highlight lang . elements)
  (case (current-poly-target)
    [(md) `("```" ,lang "\n" ,@elements "\n```")]
    [(tex pdf) (apply string-append `("\\begin{lstlisting}\n" ,@elements "\\end{lstlisting}\n"))]
    [else (pygments:highlight lang (string-join elements ""))]))

(define (code . elements)
  (case (current-poly-target)
    [(md) `("`" ,@elements "`")]
    [(tex pdf) (latexify "inlinecode" elements)]
    [else `(code ,@elements)]))

#| Common shortcuts |#

(provide deg alpha beta gamma delta Delta epsilon lambda sigma pi omega Omega angs)

(define deg
  (case (current-poly-target)
    [(tex pdf) "\\(^{\\circ}\\)"]
    [else '(strong "°")]))

(define (def-symbol unicode latex)
  (case (current-poly-target)
    [(tex pdf) `("\\(" ,latex "\\)")]
    [else unicode]))

(define angs "Å")
(define alpha "α" )
(define beta "β")
(define gamma "γ")
(define delta "δ")
(define Delta "Δ")
(define epsilon "ε")
(define lambda "λ")
(define pi "π")
(define sigma "σ")
(define omega "ω")
(define Omega "Ω")

#| Boxes |#

(provide meta todo def note theorem proof lemma prop coll box)

(define (meta . body)
  (case (current-poly-target)
    [(tex pdf) (apply string-append `("\\meta{" ,@body "}"))]
    [else (internal-box "META" #:class "meta" body)]))

(define (todo . body)
  (case (current-poly-target)
    [(tex pdf) (apply string-append `("\\todo{" ,@body "}"))]
    [else (internal-box "TODO" #:class "todo" body)]))

(define (def (title #f) . body)
  (internal-box (make-title "Definice" title) body))

(define (note . body)
  (internal-box "Poznámka" body))

(define (theorem (title #f) . body)
  (internal-box (make-title "Věta" title) body))

(define (prop [title #f] . body)
  (internal-box (make-title "Tvrzení" title) body))

(define (proof . body)
  (internal-box "Důkaz" body))

(define (lemma [title #f] . body)
  (internal-box (make-title "Lemma" title) body))

(define (coll . body)
  (internal-box "Důsledek" body))

(define (box title #:class [cl "plain"] . body)
  (internal-box title #:class cl body))

(define (internal-box title #:class [cl "plain"] body)
  (case (current-poly-target)
    [(md) `("###### " ,title "\n" ,@body)]
    [(tex pdf)
      (apply string-append `("\\mybox{" ,title "}{" ,@body "}\n"))]
    [else
      `(box [[class ,cl]]
        (div [[class "title"]] ,title)
        (div [[class "body"]] ,@body))]))

(define (make-title base title)
  (if title (format "~a (~a)" base title) base))

(provide options make-relative-path root questions question answer)

(define (questions label #:sep [sep "."] . elements)
  (define number 0)
  (define (get-label el)
    (set! number (add1 number))
    (format "~a~a~a" label sep number))
  (define (label-question el)
    (cond
      [(not (txexpr? el)) el]
      [(equal? (get-tag el) 'question)
       `(question (q-label ,(get-label el)) (q-body ,@(get-elements el)))]
      [(equal? (get-tag el) 'answer)
       `(answer (a-label "Odp:") (a-body ,@(get-elements el)))]
      [else el]))
  `(ql ,@(map label-question elements)))

(define (question . elements) `(question ,@elements))
(define (answer . elements) `(answer ,@elements))

(define (make-relative-path path)
  (cond
    [path
      (define m (regexp-match #rx".*\\/(.*)$" (symbol->string path)))
      (if m (second m) path)]
    [else #f]))

(define slide-svg
  `(svg
    ((xlmns "http://www.w3.org/2000/svg")
     (class "svg-slide")
     (viewBox "0 0 24 24"))
    (rect [[x "3"] [y "3"] [width "18"] [height "18"] [rx "2"]])
    (circle [[cx "8.5"] [cy "8.5"] [r "1.5"]])
    (path ((d "M20.4 14.5L16 10 4 20")))))

;; Insert a definition with an optional title

(define (smart-dot str)
  (string-replace*
    str
    '(". " "&#8288;. ")
    '(", " "&#8288;, ")
    '("-" "&#8288;-")
    '("–" "&#8288;—")
    '("—" "&#8288;—")))

(define (smart-implies str)
  (string-replace*
    str
    '("<=>" "\\(\\iff\\)")
    '("<=" "\\(\\impliedby\\)")
    '("=>" "\\(\\implies\\)")
    '("<->" "\\(\\leftrightarrow\\)")
    '("->" "\\(\\rightarrow\\)")
    '("<-" "\\(\\leftarrow\\)")))

(define (string-replace* str . pairs)
  (for/fold ([acc str])
            ([p (in-list pairs)])
    (string-replace acc (first p) (second p))))

(define (options #:t [title "Optiony"] . elements)
  (cond
    [title `(div [[class "list"]] (list-title ,title) (ul ,@elements))]
    [else `(ul ,@elements)]))

;; Decode the tex pdft, fix hyphenation, dashes, quotes
(define (root . elements)
  (case (current-poly-target)
    [(md) elements]
    [(tex pdf)
      (define (depercent el)
        (cond
          [(string? el) (string-replace* el '("%" "\\%"))]
          [else el]))
      (elements-recurse depercent elements)]
    [(html)

  (define-values (_ headings)
    (splitf-txexpr `(root ,@elements)
                   (λ(x) (and (txexpr? x) (member (car x) '(h1 h2 h3 h4 h5 h6 h7))))))

  ;; covert these headings into toc entries using helper function
  (define toc-entries `(ol [[class "toc"]] ,(apply ls (apply append (map heading->toc-entry headings)))))

  ;; package the content into a `body` tag, and the toc-entries into a `toc-entries` tag
  `(root
    (body
      ,@(decode-elements2
          (decode-elements
            elements
            #:exclude-tags '(mathjax pre code)
            #:string-proc (compose1 smart-implies smart-quotes smart-dashes))))
    (toc-entries ,toc-entries))]))

(define (decode-elements2 elements)
  (decode-elements
    elements
    #:exclude-tags '(mathjax pre code dt li slide-inline-wrapper slide-aside-wrapper)
    #:txexpr-elements-proc decode-paras))

(define (decode-paras elements)
  (define (helper x) (decode-linebreaks x " "))
  (decode-paragraphs elements #:linebreak-proc helper))

(define HDR-LVL (make-hash '((h1 . "# ") (h2 . "    - ") (h3 . "        - ") (h4 . "            - ") (h5 . "                - "))))
(define (heading->toc-entry heading)
  (if (equal? (get-tag heading) 'h1)
      `(,(hash-ref HDR-LVL (get-tag heading)) (strong ,@(get-elements heading)) "\n")
      `(,(hash-ref HDR-LVL (get-tag heading)) ,@(get-elements heading) "\n")))
