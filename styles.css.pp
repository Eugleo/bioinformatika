#lang pollen

@font-face {
  font-family: "IBM Plex Roman";
  font-weight: normal;
  src: url('resources/fonts/IBMPlexSerif-Regular.woff2');
}

@font-face {
  font-family: "IBM Plex Roman";
  font-weight: bold;
  src: url('resources/fonts/IBMPlexSerif-Bold.woff2');
}

@font-face {
  font-family: "IBM Plex Roman";
  font-weight: normal;
  font-style: italic;
  src: url('resources/fonts/IBMPlexSerif-Italic.woff2');
}

@font-face {
  font-family: "IBM Plex Roman";
  font-weight: bold;
  font-style: italic;
  src: url('resources/fonts/IBMPlexSerif-BoldItalic.woff2');
}

@font-face {
  font-family: "IBM Plex Sans";
  font-style: normal;
  src: url('resources/fonts/IBMPlexSans-Regular.woff2');
}

@font-face {
  font-family: "IBM Plex Sans";
  font-weight: bold;
  src: url('resources/fonts/IBMPlexSans-Bold.woff2');
}

@font-face {
  font-family: "IBM Plex Sans";
  font-weight: normal;
  font-style: italic;
  src: url('resources/fonts/IBMPlexSans-Italic.woff2');
}

@font-face {
  font-family: "IBM Plex Mono";
  font-weight: normal;
  src: url('resources/fonts/IBMPlexMono-Regular.woff2');
}

@font-face {
  font-family: "IBM Plex Mono";
  font-weight: bold;
  src: url('resources/fonts/IBMPlexMono-Bold.woff2');
}

@font-face {
  font-family: "IBM Plex Mono";
  font-style: italic;
  src: url('resources/fonts/IBMPlexMono-Italic.woff2');
}

/* Page layout
–––––––––––––––––––––––––––––––––––––––––––––––– */

.container {
  position: relative;
  width: 90%;
  margin-left: auto;
  margin-right: auto;
}

@media (min-width: 750px) {
  .container {
      max-width: 690px;
   }
}

/* Typography
–––––––––––––––––––––––––––––––––––––––––––––––– */

html {
  font-size: 18px;
}

body {
  font-family: "IBM Plex Roman";
  color: black;
  font-kerning: normal;
  font-feature-settings: 'kern' 1;
}

* {
  margin: 0;
  padding: 0;
}

/* Typography
–––––––––––––––––––––––––––––––––––––––––––––––– */

◊(define BASE-FONT-SIZE 1.7) ◊; used as rem
◊(define BASE-MULTIPLE 1.613)
◊(define LINE-HEIGHT 1.6) ◊; used as rem

◊(define (font-size multiple)
  (format "font-size: ~arem;" multiple))

◊(define (line-height multiple)
  (format "line-height: ~arem;" (* multiple LINE-HEIGHT)))

◊(define (margin-top multiple)
  (format "margin-top: ~arem;" (* multiple LINE-HEIGHT)))

◊(define (margin-bottom multiple)
  (format "margin-bottom: ~arem;" (* multiple LINE-HEIGHT)))

◊(define (padding-top multiple)
  (format "padding-top: ~arem;" (* multiple LINE-HEIGHT)))

◊(define (padding-bottom multiple)
  (format "padding-bottom: ~arem;" (* multiple LINE-HEIGHT)))

h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: "IBM Plex Sans";
}

◊(struct heading (name margin-top margin-bottom size line-height))
◊(define (insert-heading h)
  (format "~a {\n    ~a\n    ~a\n    ~a\n    ~a\n}"
          (heading-name h)
          (margin-top (heading-margin-top h))
          (margin-bottom (heading-margin-bottom h))
          (font-size (heading-size h))
          (line-height (heading-line-height h))))

◊(insert-heading (heading 'h1 2 1 2.618 2))
◊(insert-heading (heading 'h2 1 0.5 2.118 1.5))
◊(insert-heading (heading 'h3 1 0.5 1.618 1.5))
◊(insert-heading (heading 'h4 1 0.5 1.309 1))

h1 {
  font-family: "IBM Plex Roman";
  font-style: italic;
  font-weight: normal;
  border-bottom: 2px solid black;
}

p {
  ◊(margin-bottom 1)
}

body {
  ◊(line-height 1)
}

/* Spacing
–––––––––––––––––––––––––––––––––––––––––––––––– */

ul ul, ul ol, ol ol, ol ul {
  ◊(margin-bottom 0)
}

ul, ol {
  padding-left: 30px;
  ◊(margin-bottom 1)
}

li {
  ◊(margin-bottom 0)
}

.highlight {
  ◊(margin-bottom 1)
}

.highlight * {
  margin-bottom: 0;
}

dt {
  margin-bottom: 0;
}

dd {
  padding-left: 30px;
  ◊(margin-bottom 1)
}

.scrollable {
  overflow: auto;
  ◊(margin-top 0.5)
  ◊(margin-bottom 0.5)
}

img {
  margin-left: auto;
  margin-right: auto;
  display: block;
}

/* Lists
–––––––––––––––––––––––––––––––––––––––––––––––– */

ul {
  list-style: circle outside;
}

ol {
  list-style: latin outside;
}

dt {
  font-family: "IBM Plex Sans";
  font-weight: bold;
}

dl {
  ◊(margin-bottom 1)
}

dl > *:last-child {
  margin-bottom: 0;
}

dd > *:last-child {
  margin-bottom: 0;
}

list-title {
  font-family: "IBM Plex Mono";
}

◊; Lists without titles should be close to preceeding paragraphs
p + ul {
  ◊(margin-top -1)
}

p + ol {
  ◊(margin-top -1)
}

q-body {
  margin-right: 30px;
  margin-bottom: 0;
}

q-label {
  margin-right: 1rem;
  margin-bottom: 0;
}

question {
  display: flex;
  justify-content: flex-start;
  align-items: flex-start;
   margin-bottom: 0;
}

a-label {
  margin-right: 1rem;
  color: rgb(194, 194, 194);
}

answer {
  display: block;
  ◊(margin-bottom 1)
}

/* Images
–––––––––––––––––––––––––––––––––––––––––––––––– */

img {
  ◊(margin-bottom 1)
}

img {
  cursor: "zoom-in";
}

.figure-wrapper img {
  ◊(margin-bottom 0.3)
  display: block;
  max-width: 100%;
  max-height: 100%;
  margin: 15px;
  margin: 15px;
  object-fit: contain;
  cursor: zoom-in;
}

.figure-caption {
  ◊(font-size 0.8)
  ◊(line-height 0.8)
  padding: 5px;
  font-family: "IBM Plex Sans";
  text-align: center;
  background: #f6f6f6;
}

.figure-wrapper {
  ◊(margin-bottom 1)
  margin-left: auto;
  margin-right: auto;
  display: flex;
  margin-bottom: 1.6rem;
  align-items: stretch;
  background: #ffffff;
  border: 1px solid #d2d2d2;
  flex-direction: column;
  align-content: center;
}

/* Boxes
–––––––––––––––––––––––––––––––––––––––––––––––– */

box {
  display: block;
  border-top-right-radius: 1.5rem;
  ◊(margin-bottom 1)
}

box > .body {
  position: relative;
  padding-left: 30px;
  padding-right: 30px;
  ◊(padding-top 0.5)
  ◊(padding-bottom 0.5)
  border-top-style: solid;
  border-bottom-style: solid;
  border-top-width: 1px;
  border-bottom-width: 1px;
}

box > .body > *:last-child {
  margin-bottom: 0;
}

box > .title {
  font-family: "IBM Plex Sans";
  padding: .2rem 1rem .2rem 1.5rem;
  padding-left: 30px;
  top: 2px;
  border-top-right-radius: 1.5rem;
  margin-bottom: 0;
}

box.plain {
  background: #fcfcfc;
}

box.plain > .title {
  background: #f6f6f6;
  color: #666;
}

box.plain > .body {
  border-color: #ebebeb;
}

box.todo {
  border-left: solid 3px #ffc400;
  background-color: #fffef2;
}

box.todo > .title {
    background-color: #fff9d4;
    color: #ffc400;
}

box.todo > div.body {
  border-color: #fff0be;
}

box.meta {
  border-left: solid 3px #3072dc;
  background-color: #dae4f9;
}

box.meta > .title {
    color: #3072dc;
}

box.meta > .body {
  background-color: #f2f7ff;
  border-color: #d1dff7;
}

/* Slides
–––––––––––––––––––––––––––––––––––––––––––––––– */

a.lnk-slide:hover {
  background-color: transparent;
}

svg.svg-slide:hover {
  stroke: #288dce;
}

aside {
  position: absolute;
  left: -22px;
  width: 17px;
  margin-bottom: 0;
  line-height: 18px;
  padding-top: 4px;
}

svg.svg-slide {
  width: 17px;
  height: 17px;
  fill: none;
  stroke: #186697;
  stroke-width: 2px;
  stroke-linecap: round;
  stroke-linejoin: bevel;
  transition: stroke 0.25s;
}

img.slide {
  max-width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

slide-inline-wrapper > img.slide {
   ◊(margin-top 1)
}

slide-link {
  margin-bottom: 0;
  display: inline;
}

/* Sidenote
–––––––––––––––––––––––––––––––––––––––––––––––– */

.sidenote {
    display: block;
    width: 5em;
    float: left;
    margin-left: -7em;
    text-align: right;
}

abr {
  cursor: default;
  transition: color 0.2s ease;
}

abr:hover {
  color: olivedrab;
}

abr::after {
  content: "*";
  color: olivedrab;
}

/* Colors
–––––––––––––––––––––––––––––––––––––––––––––––– */

blue {
  color: #07a;
}

red {
  color: #FF285B;
}

green {
  color: #275;
}

/* Links
–––––––––––––––––––––––––––––––––––––––––––––––– */

a {
  text-decoration: none;
  color: rgb(37, 103, 58);
  transition: background-color 0.25s;
}

a:hover {
  background-color: rgba(8, 139, 8, 0.05);
  color: rgba(8, 139, 8);
}

/* Navigation
–––––––––––––––––––––––––––––––––––––––––––––––– */

.wrapper {
  margin-left: auto;
  margin-right: auto;
  display: flex;
  align-items: center;
  height: 100%;
  justify-content: space-between;
  width: 90%
}

@media (min-width: 750px) {
  .wrapper {
     max-width: 690px;
   }
}

.sticky-header {
  -webkit-transition: background 0.2s;
  transition: background 0.2s;
  transition-delay: 0s;
  position: fixed;
  top: 0;
  height: 50px;
  width: 100%;
  z-index: 999;
  left: 0;
}

.page-title {
  font-family: "IBM Plex Mono";
}

.page-navigation {
  font-family: "IBM Plex Mono";
  color: rgb(48, 48, 48);
}

page-end {
  font-size: 30px;
  text-align: center;
  width: 100%;
  display: block;
  ◊(margin-top 2)
  ◊(margin-bottom 2.5)
}


/* Links
–––––––––––––––––––––––––––––––––––––––––––––––– */

.internal-link {
  color: inherit;
  text-decoration: none;
}

.internal-link:hover {
  color: inherit;
  background-color: transparent;
  text-decoration: underline;
}

/* Miscellaneous
–––––––––––––––––––––––––––––––––––––––––––––––– */

lecture {
  line-height: 1.5rem;
  border-style: solid;
  border-width: 2px;
  border-radius: 5px;
  border-color: #D9D9D9;
  color: #D9D9D9;
  text-align: center;
  margin: 0 auto;
  padding-left: 10px;
  padding-right: 10px;
  height: 1.5rem;
  margin-bottom: 0;
}

.lecture {
  position: absolute;
  right: -200px;
  margin-bottom: 0;
  display: none;
}

@media (min-width: 800px) {
  lecture {
    display: block;
  }
}

/* Media Queries
–––––––––––––––––––––––––––––––––––––––––––––––––– */

/*
Note: The best way to structure the use of media queries is to create the queries
near the relevant code. For example, if you wanted to change the styles for buttons
on small devices, paste the mobile query code up in the buttons section and style it
there.
*/

/* Larger than mobile */

@media (min-width: 400px) {}

/* Larger than phablet (also point when grid becomes active) */

@media (min-width: 550px) {}

/* Larger than tablet */

@media (min-width: 750px) {}

/* Larger than desktop */

@media (min-width: 1000px) {}

/* Larger than Desktop HD */

@media (min-width: 1200px) {}

/* Code highlighting
–––––––––––––––––––––––––––––––––––––––––––––––––– */

code {
  border: 1px solid #ebebeb;
  border-radius: 5px;
  background: #fcfcfc;
  font-family: "IBM Plex Mono";
  padding-left: 3px;
  padding-right: 3px;
  white-space: pre-wrap;
}

.highlight, pre {
    ◊(padding-top 0.5)
    ◊(padding-bottom 0.5)
    background: #fcfcfc;
    border-top: 1px solid #ebebeb;
    border-bottom: 1px solid #ebebeb;
    overflow: auto;
}

.highlight .linenos {
    display: none;
}

pre {
    ◊(margin-bottom 1)
    ◊(margin-top 1)
    font-family: "IBM Plex Mono";
    white-space: pre;
    padding-left: 30px;
    padding-right: 30px;
}

.highlight pre {
  ◊(margin-bottom 0)
  ◊(margin-top 0)
  padding-top: 0;
  padding-bottom: 0;
  background: clear;
  border-top: none;
  border-bottom: none;
}



◊; syntax colors adapted from Racket documentation
◊define[paren-color]{#888}
◊define[comment-color]{#c2741f}
◊define[keyword-color]{#07a}
◊define[name-color]{#444}
◊define[literal-color]{#275}
◊define[function-color]{rgb(39, 42, 126)}
◊define[builtin-color]{rgb(189, 44, 127)}

◊; styling classes for Pygments
.p { color: ◊|paren-color|;}
.c { color: #998; font-style: italic; } /* Comment */
.err { color: red; font-style: italic; } /* Error */
.o { color: #000; } /* Operator */
.cm { color: ◊|comment-color|; font-style: italic } /* Comment.Multiline */
.cp { color: ◊|comment-color|; font-style: italic } /* Comment.Preproc */
.c1 { color: ◊|comment-color|; font-style: italic } /* Comment.Single */
.cs { color: ◊|comment-color|; font-style: italic } /* Comment.Special */
.gd { color: #000; background-color: #ffdddd } /* Generic.Deleted */
.ge { color: #000; font-style: italic } /* Generic.Emph */
.gr { color: #a00; } /* Generic.Error */
.gh { color: #999; } /* Generic.Heading */
.gi { color: #000; background-color: #ddffdd } /* Generic.Inserted */
.go { color: #888; } /* Generic.Output */
.gp { color: #555; } /* Generic.Prompt */
.gs { } /* Generic.Strong */
.gu { color: #aaa; } /* Generic.Subheading */
.gt { color: #a00; } /* Generic.Traceback */
.k { color: ◊|keyword-color|; } /* Keyword */
.kc { color: ◊|keyword-color|; } /* Keyword.Constant */
.kd { color: ◊|keyword-color|; } /* Keyword.Declaration */
.kn { color: ◊|keyword-color|; } /* Keyword.Namespace */
.kp { color: ◊|keyword-color|; } /* Keyword.Pseudo */
.kr { color: ◊|keyword-color|; } /* Keyword.Reserved */
.kt { color: ◊|keyword-color|; } /* Keyword.Type */
.ow { color: ◊|function-color|; } /* Operator.Word */
.w { color: #bbb; } /* Text.Whitespace */
.m { color: ◊|literal-color|; } /* Literal.Number */
.mf { color: ◊|literal-color|; } /* Literal.Number.Float */
.mh { color: ◊|literal-color|; } /* Literal.Number.Hex */
.mi { color: ◊|literal-color|; } /* Literal.Number.Integer */
.mo { color: ◊|literal-color|; } /* Literal.Number.Oct */
.s { color: ◊|literal-color|;} /* Literal.String */
.sb { color: ◊|literal-color|; } /* Literal.String.Backtick */
.sc { color: ◊|literal-color|; } /* Literal.String.Char */
.sd { color: ◊|literal-color|; } /* Literal.String.Doc */
.s2 { color: ◊|literal-color|; } /* Literal.String.Double */
.se { color: ◊|literal-color|; } /* Literal.String.Escape */
.sh { color: ◊|literal-color|; } /* Literal.String.Heredoc */
.si { color: ◊|literal-color|; } /* Literal.String.Interpol */
.sx { color: ◊|literal-color|; } /* Literal.String.Other */
.sr { color: ◊|literal-color|; } /* Literal.String.Regex */
.s1 { color: ◊|literal-color|; } /* Literal.String.Single */
.ss { color: ◊|literal-color|; } /* Literal.String.Symbol */
.bp { color: ◊|builtin-color|; } /* Name.Builtin.Pseudo */
.vc { color: #077; } /* Name.Variable.Class */
.vg { color: #077; } /* Name.Variable.Global */
.vi { color: #077; } /* Name.Variable.Instance */
.il { color: #099; } /* Literal.Number.Integer.Long */
