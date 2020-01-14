<!DOCTYPE html>
<html>
◊(define parent-page (make-relative-path (parent here)))
◊(define previous-page (make-relative-path (previous here)))
◊(define next-page (make-relative-path (next here)))
◊(define show-prev (and previous-page (not (equal? previous-page parent-page))))
◊(define show-next (and next-page (not (equal? next-page parent-page))))
◊(define lecture-page (select-from-metas 'header "lecture-page.html"))

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale = 1.0,maximum-scale = 1.0" />
    <title>◊(select-from-metas 'header "lecture-page.html"):◊(select-from-metas 'header here)</title>
    <link rel="stylesheet" type="text/css" media="all" href="../../styles.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://unpkg.com/popper.js@1"></script>
    <script src="https://unpkg.com/tippy.js@5"></script>
    <script type="text/x-mathjax-config">
        MathJax.Ajax.config.path["mhchem"] = "https://cdnjs.cloudflare.com/ajax/libs/mathjax-mhchem/3.3.2";
        MathJax.Hub.Config({
            jax: ["input/TeX","output/CommonHTML"],
            extensions: ["[mhchem]/mhchem.js", "tex2jax.js","MathMenu.js","MathZoom.js", "AssistiveMML.js", "a11y/accessibility-menu.js"],
            TeX: {
                extensions: ["AMSmath.js","AMSsymbols.js","noErrors.js","noUndefined.js"]
            },
            CommonHTML: {
                scale: 98
            }
        });
    </script>
    <script type="text/javascript" async
        src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js">
        </script>
    <script type="text/javascript">
        var visibilities = {};
        function toggleImageVisible(id) {
            var img = document.getElementById(id);
            if (id in visibilities) {
                 img.style.display = (visibilities[id] ? 'none' : 'block');
                 visibilities[id] = !visibilities[id];
            } else {
                img.style.display = 'block'
                visibilities[id] = true;
            }
        }

        let h;
        document.onreadystatechange = function() {
            if (document.readyState == "interactive") {
                h = document.getElementById('sticky-header');
                tippy("abr", {
                    boundary: "window",
                    maxWidth: "none"
                });

                $("img").click(function() {
                    var src = $(this).attr('src');
                    $('<div>').css({
                        background: 'RGBA(0,0,0,.5) url('+src+') no-repeat center',
                        backgroundSize: 'contain',
                        width:'100%', height:'100%',
                        position:'fixed',
                        zIndex:'10000',
                        top:'0', left:'0',
                        cursor: 'zoom-out'
                    }).click(function(){
                        $(this).remove();
                    }).appendTo('body');
                });
            }
        }

        let lastOffset = 10;
        let first = true;
        window.onscroll = function() {
            var doc = document.documentElement;
            var o = (window.pageYOffset || doc.scrollTop)  - (doc.clientTop || 0);
            if (o <= 8 && (lastOffset > 8 || first)) {
                first = false;
                h.style.boxShadow = 'none';
                h.style.backgroundColor = 'rgb(255, 255, 255)';
            } else if (o > 8 && (lastOffset <= 8 || first)) {
                first = false;
                h.style.boxShadow = '0px 1px 3px lightgrey';
                h.style.backgroundColor = 'rgb(255, 255, 255)';
            }
            lastOffset = window.pageYOffset;
        };

        function showAllSlides() {
            allSlides = document.getElementsByClassName("slide");
            for (i = 0; i < allSlides.length; i++) {
                var id = allSlides[i].id;
                if (!visibilities[id]) {
                    toggleImageVisible(allSlides[i].id);
                }
            }
        }

        function hideAllSlides() {
            allSlides = document.getElementsByClassName("slide");
            for (i = 0; i < allSlides.length; i++) {
                var id = allSlides[i].id;
                if (visibilities[id]) {
                    toggleImageVisible(allSlides[i].id);
                }
            }
        }
    </script>
</head>

<body>
    <div class="sticky-header" id="sticky-header">
        <div class="wrapper">
            <span class="page-title"><a class="no-style" href="/bioinformatika" title="Úvodní stránka">notes</a>:<a class="no-style" href=lecture-page.html title="◊(select-from-metas 'title "lecture-page.html")">◊|lecture-page|</a>:<strong>◊(select-from-metas 'header here)</strong></span>
            <span class="page-navigation">
                &lt;<a href="javascript:showAllSlides()">+</a>/<a href="javascript:hideAllSlides()">–</a>&gt;
            </span>
        </div>
    </div>
    <div class="container">
        ◊when/block[(select-from-metas 'toc here)]{
            ◊(->html ◊title{Obsah})

            ◊(->html (select-from-doc 'toc-entries here))
        }

◊(map ->html (select-from-doc 'body here))
    </div>
     <page-end> ⋅ 𝓔 ⋅ </page-end>
    </body>
</html>