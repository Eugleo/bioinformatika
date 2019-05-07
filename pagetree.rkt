#lang racket

(require pollen/pagetree)
(provide generate-pagetree)

(define LECTURE-PAGE-NAME "lecture-page.html")

(define (less-than x y)
    (cond
        [(equal? x LECTURE-PAGE-NAME) #t]
        [(equal? y LECTURE-PAGE-NAME) #f]
        [else (string<? x y)]))

(define doc (build-path "doc"))
(define list-of-files
    (for/list ([topic (directory-list doc #:build? #t)]
               #:when (directory-exists? topic))
        (define lectures
            (for/list ([lecture (directory-list topic)]
                       #:when (regexp-match #rx"^(.*)\\.pm$" (path->string lecture)))
                (path->string (path-replace-extension lecture #""))))
        (map
            (lambda (lec)
                (string->symbol (string-append (path->string topic) "/" lec)))
            (sort lectures less-than))))

(define (generate-pagetree)
    (define pt `(index.html ,@list-of-files))
    (if (pagetree? pt) pt "Error: Invalid pagetree"))
