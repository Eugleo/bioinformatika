<html>
◊(define parent-page (parent here))
◊(define children-list (children here))

<head>
    <meta charset="UTF-8">
    <title>notes:◊(select-from-metas 'header here)</title>
    <meta name="viewport" content="initial-scale = 1.0,maximum-scale = 1.0" />
    <link rel="stylesheet" type="text/css" media="all" href="../../styles.css" />
    <script type="text/javascript" async
        src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML">
        </script>
    <script type="text/javascript">
        let h;

        document.onreadystatechange = function () {
            if (document.readyState == "interactive") {
                h = document.getElementById('sticky-header');
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
    </script>
</head>

<body>
    <div class="sticky-header" id="sticky-header">
        <div class="wrapper">
            <span class="page-title"><a class="no-style" href="/bioinformatika" title="Úvodní stránka">notes</a>:<strong>◊(select-from-metas 'header here)</strong></span>
        </div>
    </div>
    <div class="container">
         ◊(map ->html (select-from-doc 'body here))
    </div>
</body>

</html>