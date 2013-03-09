.class public Lorg/ccil/cowan/tagsoup/HTMLSchema;
.super Lorg/ccil/cowan/tagsoup/Schema;
.source "HTMLSchema.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/HTMLModels;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x1

    const v7, 0x9000

    const v6, 0x40001000

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Schema;-><init>()V

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->setURI(Ljava/lang/String;)V

    const-string v0, "html"

    invoke-virtual {p0, v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->setPrefix(Ljava/lang/String;)V

    const-string v0, "<pcdata>"

    const/high16 v1, 0x4000

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "<root>"

    const/high16 v1, -0x8000

    invoke-virtual {p0, v0, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "a"

    const v1, 0x40008000

    const/16 v2, 0x1000

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "abbr"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "acronym"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "address"

    const v1, 0x40041000

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "applet"

    const v1, 0x40081004

    invoke-virtual {p0, v0, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "area"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "b"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "base"

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "basefont"

    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "bdo"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "bgsound"

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "big"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "blink"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "blockquote"

    const v1, 0x40001004

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "body"

    const v1, 0x40001004

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "br"

    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "button"

    const v1, 0x40001004

    invoke-virtual {p0, v0, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "canvas"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "caption"

    const/high16 v1, 0x20

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "center"

    const v1, 0x40001004

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "cite"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "code"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "col"

    const v1, 0x200040

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "colgroup"

    const/16 v1, 0x40

    const/high16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "comment"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "dd"

    const v1, 0x40001004

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "del"

    const v1, 0x40001004

    const/16 v2, 0x100c

    invoke-virtual {p0, v0, v1, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "dfn"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "dir"

    const/16 v1, 0x4000

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "div"

    const v1, 0x40001004

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "dl"

    const/16 v1, 0x80

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "dt"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "em"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "fieldset"

    const v1, 0x40003004

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "font"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "form"

    const v1, 0x40409024

    const/16 v2, 0x104

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "frame"

    const/16 v1, 0x200

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "frameset"

    const/16 v1, 0x200

    const/16 v2, 0xa00

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "h1"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "h2"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "h3"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "h4"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "h5"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "h6"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "head"

    const/16 v1, 0x400

    const/16 v2, 0x800

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "hr"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "html"

    const/16 v1, 0x800

    const/high16 v2, -0x8000

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "i"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "iframe"

    const v1, 0x40001004

    invoke-virtual {p0, v0, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "img"

    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "input"

    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "ins"

    const v1, 0x40001004

    const/16 v2, 0x1004

    invoke-virtual {p0, v0, v1, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "isindex"

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "kbd"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "label"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "legend"

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "li"

    const v1, 0x40001004

    const/16 v2, 0x4000

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "link"

    const/16 v1, 0x1400

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "listing"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "map"

    const/4 v1, 0x6

    const/16 v2, 0x1000

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "marquee"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "menu"

    const/16 v1, 0x4000

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "meta"

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "nobr"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "noframes"

    const/16 v1, 0x1014

    const/16 v2, 0xa04

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "noscript"

    const v1, 0x40001004

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "object"

    const v1, 0x40081004

    const v2, 0x9400

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "ol"

    const/16 v1, 0x4000

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "optgroup"

    const/high16 v1, 0x2

    const/high16 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "option"

    const/high16 v1, 0x4000

    const/high16 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "p"

    const v1, 0x40101000

    const v2, 0x40004

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "param"

    const/high16 v1, 0x8

    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "pre"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "q"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "rb"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "rbc"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "rp"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "rt"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "rtc"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "ruby"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "s"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "samp"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "script"

    const/high16 v1, 0x4000

    const v2, 0x7fffffff

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "select"

    const/high16 v1, 0x2

    const/16 v2, 0x1000

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "small"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "span"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "strike"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "strong"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "style"

    const/high16 v1, 0x4000

    const/16 v2, 0x1400

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "sub"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "sup"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "table"

    const v1, 0x200100

    const v2, 0x100004

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "tbody"

    const/high16 v1, 0x40

    const/high16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "td"

    const v1, 0x40001004

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "textarea"

    const/high16 v1, 0x4000

    const/16 v2, 0x1000

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "tfoot"

    const v1, 0x400120

    const/high16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "th"

    const v1, 0x40001004

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "thead"

    const v1, 0x400120

    const/high16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "title"

    const/high16 v1, 0x4000

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "tr"

    const/16 v1, 0x120

    const/high16 v2, 0x60

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "tt"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "u"

    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "ul"

    const/16 v1, 0x4000

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "var"

    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "wbr"

    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "xmp"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    const-string v0, "<pcdata>"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    const-string v1, "<root>"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abbr"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acronym"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applet"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "map"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "basefont"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdo"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bgsound"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blink"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v1, "html"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "form"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "canvas"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    const-string v1, "table"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "center"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cite"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "table"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "table"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dd"

    const-string v1, "dl"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfn"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dt"

    const-string v1, "dl"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fieldset"

    const-string v1, "form"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "frameset"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frameset"

    const-string v1, "html"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h1"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h2"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h3"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h4"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h5"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h6"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "head"

    const-string v1, "html"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "i"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "form"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isindex"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kbd"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, "form"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "legend"

    const-string v1, "fieldset"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v1, "ul"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "link"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "listing"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "map"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "marquee"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menu"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nobr"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noframes"

    const-string v1, "html"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noscript"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optgroup"

    const-string v1, "select"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "select"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "object"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pre"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rb"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rbc"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rp"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rt"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rtc"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ruby"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "samp"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "script"

    const-string v1, "html"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "form"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "small"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "span"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strike"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strong"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "style"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sub"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sup"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "table"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "tr"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "form"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "table"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "tr"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "table"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    const-string v1, "head"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "tbody"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tt"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "var"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wbr"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmp"

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "hreflang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "shape"

    const-string v2, "CDATA"

    const-string v3, "rect"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applet"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "nohref"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "shape"

    const-string v2, "CDATA"

    const-string v3, "rect"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "clear"

    const-string v2, "CDATA"

    const-string v3, "none"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "disabled"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "type"

    const-string v2, "CDATA"

    const-string v3, "submit"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "span"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "span"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v1, "compact"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    const-string v1, "compact"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "enctype"

    const-string v2, "CDATA"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "method"

    const-string v2, "CDATA"

    const-string v3, "get"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "frameborder"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "noresize"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "scrolling"

    const-string v2, "CDATA"

    const-string v3, "auto"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h1"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h2"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h3"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h4"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h5"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h6"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "noshade"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "frameborder"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "scrolling"

    const-string v2, "CDATA"

    const-string v3, "auto"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "ismap"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "checked"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "disabled"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "ismap"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "maxlength"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "readonly"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "type"

    const-string v2, "CDATA"

    const-string v3, "text"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, "for"

    const-string v2, "IDREF"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "legend"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v1, "value"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "link"

    const-string v1, "hreflang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "marquee"

    const-string v1, "width"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menu"

    const-string v1, "compact"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "http-equiv"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "name"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "declare"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "compact"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "start"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optgroup"

    const-string v1, "disabled"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "disabled"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "selected"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "valuetype"

    const-string v2, "CDATA"

    const-string v3, "data"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pre"

    const-string v1, "width"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rt"

    const-string v1, "rbspan"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "script"

    const-string v1, "defer"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "disabled"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "multiple"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "size"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "frame"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "rules"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "colspan"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "headers"

    const-string v2, "IDREFS"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "nowrap"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "rowspan"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "scope"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "cols"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "disabled"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "readonly"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "rows"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "tabindex"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "colspan"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "headers"

    const-string v2, "IDREFS"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "nowrap"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "rowspan"

    const-string v2, "CDATA"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "scope"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "align"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "valign"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "compact"

    const-string v2, "BOOLEAN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "type"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmp"

    const-string v1, "width"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abbr"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acronym"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applet"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "basefont"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdo"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bgsound"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blink"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "canvas"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "center"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cite"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dd"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfn"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dt"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fieldset"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frameset"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h1"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h2"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h3"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h4"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h5"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h6"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "head"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "i"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isindex"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kbd"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "legend"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "link"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "listing"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "map"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "marquee"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menu"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nobr"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noframes"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noscript"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optgroup"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pre"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rb"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rbc"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rp"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rt"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rtc"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ruby"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "samp"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "script"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "small"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "span"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strike"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strong"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "style"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sub"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sup"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tt"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "var"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wbr"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmp"

    const-string v1, "class"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abbr"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acronym"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applet"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "basefont"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdo"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bgsound"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blink"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "canvas"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "center"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cite"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dd"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfn"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dt"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fieldset"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frameset"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h1"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h2"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h3"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h4"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h5"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h6"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "head"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "i"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isindex"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kbd"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "legend"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "link"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "listing"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "map"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "marquee"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menu"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nobr"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noframes"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noscript"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optgroup"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pre"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rb"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rbc"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rp"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rt"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rtc"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ruby"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "samp"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "script"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "small"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "span"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strike"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strong"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "style"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sub"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sup"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tt"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "var"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wbr"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmp"

    const-string v1, "dir"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abbr"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acronym"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applet"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "basefont"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdo"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bgsound"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blink"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "canvas"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "center"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cite"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dd"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfn"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dt"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fieldset"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frameset"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h1"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h2"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h3"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h4"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h5"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h6"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "head"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "i"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isindex"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kbd"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "legend"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "link"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "listing"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "map"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "marquee"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menu"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nobr"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noframes"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noscript"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optgroup"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pre"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rb"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rbc"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rp"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rt"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rtc"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ruby"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "samp"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "script"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "small"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "span"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strike"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strong"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "style"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sub"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sup"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tt"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "var"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wbr"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmp"

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abbr"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acronym"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applet"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "basefont"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdo"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bgsound"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blink"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "canvas"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "center"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cite"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "col"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colgroup"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dd"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfn"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dt"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fieldset"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frameset"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h1"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h2"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h3"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h4"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h5"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "h6"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "head"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "i"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframe"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isindex"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kbd"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "legend"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "link"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "listing"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "map"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "marquee"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menu"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nobr"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noframes"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noscript"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "object"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ol"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optgroup"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "option"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pre"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rb"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rbc"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rp"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rt"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rtc"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ruby"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "samp"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "script"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "small"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "span"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strike"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strong"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "style"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sub"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sup"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tbody"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tfoot"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thead"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tt"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "var"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wbr"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmp"

    const-string v1, "lang"

    const-string v2, "NMTOKEN"

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aacgr"

    const/16 v1, 0x3ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Aacgr"

    const/16 v1, 0x386

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "aacute"

    const/16 v1, 0xe1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Aacute"

    const/16 v1, 0xc1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "abreve"

    const/16 v1, 0x103

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Abreve"

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ac"

    const/16 v1, 0x223e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "acd"

    const/16 v1, 0x223f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "acirc"

    const/16 v1, 0xe2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Acirc"

    const/16 v1, 0xc2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "acute"

    const/16 v1, 0xb4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "acy"

    const/16 v1, 0x430

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Acy"

    const/16 v1, 0x410

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "aelig"

    const/16 v1, 0xe6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "AElig"

    const/16 v1, 0xc6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "af"

    const/16 v1, 0x2061

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "afr"

    const v1, 0x1d51e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Afr"

    const v1, 0x1d504

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "agr"

    const/16 v1, 0x3b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Agr"

    const/16 v1, 0x391

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "agrave"

    const/16 v1, 0xe0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Agrave"

    const/16 v1, 0xc0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "alefsym"

    const/16 v1, 0x2135

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "aleph"

    const/16 v1, 0x2135

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "alpha"

    const/16 v1, 0x3b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Alpha"

    const/16 v1, 0x391

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "amacr"

    const/16 v1, 0x101

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Amacr"

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "amalg"

    const/16 v1, 0x2a3f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "amp"

    const/16 v1, 0x26

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "and"

    const/16 v1, 0x2227

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "And"

    const/16 v1, 0x2a53

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "andand"

    const/16 v1, 0x2a55

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "andd"

    const/16 v1, 0x2a5c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "andslope"

    const/16 v1, 0x2a58

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "andv"

    const/16 v1, 0x2a5a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ang"

    const/16 v1, 0x2220

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ange"

    const/16 v1, 0x29a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angle"

    const/16 v1, 0x2220

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsd"

    const/16 v1, 0x2221

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdaa"

    const/16 v1, 0x29a8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdab"

    const/16 v1, 0x29a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdac"

    const/16 v1, 0x29aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdad"

    const/16 v1, 0x29ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdae"

    const/16 v1, 0x29ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdaf"

    const/16 v1, 0x29ad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdag"

    const/16 v1, 0x29ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angmsdah"

    const/16 v1, 0x29af

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angrt"

    const/16 v1, 0x221f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angrtvb"

    const/16 v1, 0x22be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angrtvbd"

    const/16 v1, 0x299d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angsph"

    const/16 v1, 0x2222

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angst"

    const/16 v1, 0x212b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "angzarr"

    const/16 v1, 0x237c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "aogon"

    const/16 v1, 0x105

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Aogon"

    const/16 v1, 0x104

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "aopf"

    const v1, 0x1d552

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Aopf"

    const v1, 0x1d538

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ap"

    const/16 v1, 0x2248

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "apacir"

    const/16 v1, 0x2a6f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ape"

    const/16 v1, 0x224a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "apE"

    const/16 v1, 0x2a70

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "apid"

    const/16 v1, 0x224b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "apos"

    const/16 v1, 0x27

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ApplyFunction"

    const/16 v1, 0x2061

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "approx"

    const/16 v1, 0x2248

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "approxeq"

    const/16 v1, 0x224a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "aring"

    const/16 v1, 0xe5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Aring"

    const/16 v1, 0xc5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ascr"

    const v1, 0x1d4b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ascr"

    const v1, 0x1d49c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Assign"

    const/16 v1, 0x2254

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ast"

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "asymp"

    const/16 v1, 0x2248

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "asympeq"

    const/16 v1, 0x224d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "atilde"

    const/16 v1, 0xe3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Atilde"

    const/16 v1, 0xc3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "auml"

    const/16 v1, 0xe4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Auml"

    const/16 v1, 0xc4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "awconint"

    const/16 v1, 0x2233

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "awint"

    const/16 v1, 0x2a11

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.alpha"

    const v1, 0x1d6c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.beta"

    const v1, 0x1d6c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.chi"

    const v1, 0x1d6d8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.delta"

    const v1, 0x1d6c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Delta"

    const v1, 0x1d6ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.epsi"

    const v1, 0x1d6c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.epsiv"

    const v1, 0x1d6dc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.eta"

    const v1, 0x1d6c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.gamma"

    const v1, 0x1d6c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Gamma"

    const v1, 0x1d6aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.gammad"

    const v1, 0x1d7cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Gammad"

    const v1, 0x1d7ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.iota"

    const v1, 0x1d6ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.kappa"

    const v1, 0x1d6cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.kappav"

    const v1, 0x1d6de

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.lambda"

    const v1, 0x1d6cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Lambda"

    const v1, 0x1d6b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.mu"

    const v1, 0x1d6cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.nu"

    const v1, 0x1d6ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.omega"

    const v1, 0x1d6da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Omega"

    const v1, 0x1d6c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.phi"

    const v1, 0x1d6d7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Phi"

    const v1, 0x1d6bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.phiv"

    const v1, 0x1d6df

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.pi"

    const v1, 0x1d6d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Pi"

    const v1, 0x1d6b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.piv"

    const v1, 0x1d6e1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.psi"

    const v1, 0x1d6d9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Psi"

    const v1, 0x1d6bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.rho"

    const v1, 0x1d6d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.rhov"

    const v1, 0x1d6e0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.sigma"

    const v1, 0x1d6d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Sigma"

    const v1, 0x1d6ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.sigmav"

    const v1, 0x1d6d3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.tau"

    const v1, 0x1d6d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Theta"

    const v1, 0x1d6af

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.thetas"

    const v1, 0x1d6c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.thetav"

    const v1, 0x1d6dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.upsi"

    const v1, 0x1d6d6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Upsi"

    const v1, 0x1d6bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.xi"

    const v1, 0x1d6cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.Xi"

    const v1, 0x1d6b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "b.zeta"

    const v1, 0x1d6c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "backcong"

    const/16 v1, 0x224c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "backepsilon"

    const/16 v1, 0x3f6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "backprime"

    const/16 v1, 0x2035

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "backsim"

    const/16 v1, 0x223d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "backsimeq"

    const/16 v1, 0x22cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Backslash"

    const/16 v1, 0x2216

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Barv"

    const/16 v1, 0x2ae7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "barvee"

    const/16 v1, 0x22bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "barwed"

    const/16 v1, 0x2305

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Barwed"

    const/16 v1, 0x2306

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "barwedge"

    const/16 v1, 0x2305

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bbrk"

    const/16 v1, 0x23b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bbrktbrk"

    const/16 v1, 0x23b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bcong"

    const/16 v1, 0x224c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bcy"

    const/16 v1, 0x431

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bcy"

    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bdquo"

    const/16 v1, 0x201e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "becaus"

    const/16 v1, 0x2235

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "because"

    const/16 v1, 0x2235

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bemptyv"

    const/16 v1, 0x29b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bepsi"

    const/16 v1, 0x3f6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bernou"

    const/16 v1, 0x212c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bernoullis"

    const/16 v1, 0x212c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "beta"

    const/16 v1, 0x3b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Beta"

    const/16 v1, 0x392

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "beth"

    const/16 v1, 0x2136

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "between"

    const/16 v1, 0x226c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bfr"

    const v1, 0x1d51f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bfr"

    const v1, 0x1d505

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bgr"

    const/16 v1, 0x3b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bgr"

    const/16 v1, 0x392

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigcap"

    const/16 v1, 0x22c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigcirc"

    const/16 v1, 0x25ef

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigcup"

    const/16 v1, 0x22c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigodot"

    const/16 v1, 0x2a00

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigoplus"

    const/16 v1, 0x2a01

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigotimes"

    const/16 v1, 0x2a02

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigsqcup"

    const/16 v1, 0x2a06

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigstar"

    const/16 v1, 0x2605

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigtriangledown"

    const/16 v1, 0x25bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigtriangleup"

    const/16 v1, 0x25b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "biguplus"

    const/16 v1, 0x2a04

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigvee"

    const/16 v1, 0x22c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bigwedge"

    const/16 v1, 0x22c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bkarow"

    const/16 v1, 0x290d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blacklozenge"

    const/16 v1, 0x29eb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blacksquare"

    const/16 v1, 0x25aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blacktriangle"

    const/16 v1, 0x25b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blacktriangledown"

    const/16 v1, 0x25be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blacktriangleleft"

    const/16 v1, 0x25c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blacktriangleright"

    const/16 v1, 0x25b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blank"

    const/16 v1, 0x2423

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blk12"

    const/16 v1, 0x2592

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blk14"

    const/16 v1, 0x2591

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "blk34"

    const/16 v1, 0x2593

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "block"

    const/16 v1, 0x2588

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bnot"

    const/16 v1, 0x2310

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bNot"

    const/16 v1, 0x2aed

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bopf"

    const v1, 0x1d553

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bopf"

    const v1, 0x1d539

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bot"

    const/16 v1, 0x22a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bottom"

    const/16 v1, 0x22a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bowtie"

    const/16 v1, 0x22c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxbox"

    const/16 v1, 0x29c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxdl"

    const/16 v1, 0x2510

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxdL"

    const/16 v1, 0x2555

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxDl"

    const/16 v1, 0x2556

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxDL"

    const/16 v1, 0x2557

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxdr"

    const/16 v1, 0x250c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxdR"

    const/16 v1, 0x2552

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxDr"

    const/16 v1, 0x2553

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxDR"

    const/16 v1, 0x2554

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxh"

    const/16 v1, 0x2500

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxH"

    const/16 v1, 0x2550

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxhd"

    const/16 v1, 0x252c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxhD"

    const/16 v1, 0x2565

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxHd"

    const/16 v1, 0x2564

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxHD"

    const/16 v1, 0x2566

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxhu"

    const/16 v1, 0x2534

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxhU"

    const/16 v1, 0x2568

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxHu"

    const/16 v1, 0x2567

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxHU"

    const/16 v1, 0x2569

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxminus"

    const/16 v1, 0x229f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxplus"

    const/16 v1, 0x229e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxtimes"

    const/16 v1, 0x22a0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxul"

    const/16 v1, 0x2518

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxuL"

    const/16 v1, 0x255b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxUl"

    const/16 v1, 0x255c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxUL"

    const/16 v1, 0x255d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxur"

    const/16 v1, 0x2514

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxuR"

    const/16 v1, 0x2558

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxUr"

    const/16 v1, 0x2559

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxUR"

    const/16 v1, 0x255a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxv"

    const/16 v1, 0x2502

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxV"

    const/16 v1, 0x2551

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxvh"

    const/16 v1, 0x253c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxvH"

    const/16 v1, 0x256a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxVh"

    const/16 v1, 0x256b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxVH"

    const/16 v1, 0x256c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxvl"

    const/16 v1, 0x2524

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxvL"

    const/16 v1, 0x2561

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxVl"

    const/16 v1, 0x2562

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxVL"

    const/16 v1, 0x2563

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxvr"

    const/16 v1, 0x251c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxvR"

    const/16 v1, 0x255e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxVr"

    const/16 v1, 0x255f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "boxVR"

    const/16 v1, 0x2560

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bprime"

    const/16 v1, 0x2035

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "breve"

    const/16 v1, 0x2d8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "brvbar"

    const/16 v1, 0xa6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bscr"

    const v1, 0x1d4b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bscr"

    const/16 v1, 0x212c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bsemi"

    const/16 v1, 0x204f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bsim"

    const/16 v1, 0x223d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bsime"

    const/16 v1, 0x22cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bsol"

    const/16 v1, 0x5c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bsolb"

    const/16 v1, 0x29c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bull"

    const/16 v1, 0x2022

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bullet"

    const/16 v1, 0x2022

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bump"

    const/16 v1, 0x224e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bumpe"

    const/16 v1, 0x224f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bumpE"

    const/16 v1, 0x2aae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "bumpeq"

    const/16 v1, 0x224f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Bumpeq"

    const/16 v1, 0x224e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cacute"

    const/16 v1, 0x107

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cacute"

    const/16 v1, 0x106

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cap"

    const/16 v1, 0x2229

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cap"

    const/16 v1, 0x22d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "capand"

    const/16 v1, 0x2a44

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "capbrcup"

    const/16 v1, 0x2a49

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "capcap"

    const/16 v1, 0x2a4b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "capcup"

    const/16 v1, 0x2a47

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "capdot"

    const/16 v1, 0x2a40

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CapitalDifferentialD"

    const/16 v1, 0x2145

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "caret"

    const/16 v1, 0x2041

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "caron"

    const/16 v1, 0x2c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cayleys"

    const/16 v1, 0x212d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ccaps"

    const/16 v1, 0x2a4d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ccaron"

    const/16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ccaron"

    const/16 v1, 0x10c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ccedil"

    const/16 v1, 0xe7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ccedil"

    const/16 v1, 0xc7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ccirc"

    const/16 v1, 0x109

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ccirc"

    const/16 v1, 0x108

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cconint"

    const/16 v1, 0x2230

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ccups"

    const/16 v1, 0x2a4c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ccupssm"

    const/16 v1, 0x2a50

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cdot"

    const/16 v1, 0x10b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cdot"

    const/16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cedil"

    const/16 v1, 0xb8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cedilla"

    const/16 v1, 0xb8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cemptyv"

    const/16 v1, 0x29b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cent"

    const/16 v1, 0xa2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "centerdot"

    const/16 v1, 0xb7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cfr"

    const v1, 0x1d520

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cfr"

    const/16 v1, 0x212d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "chcy"

    const/16 v1, 0x447

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CHcy"

    const/16 v1, 0x427

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "check"

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "checkmark"

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "chi"

    const/16 v1, 0x3c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Chi"

    const/16 v1, 0x3a7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cir"

    const/16 v1, 0x25cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circ"

    const/16 v1, 0x2c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circeq"

    const/16 v1, 0x2257

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circlearrowleft"

    const/16 v1, 0x21ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circlearrowright"

    const/16 v1, 0x21bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circledast"

    const/16 v1, 0x229b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circledcirc"

    const/16 v1, 0x229a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circleddash"

    const/16 v1, 0x229d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CircleDot"

    const/16 v1, 0x2299

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circledR"

    const/16 v1, 0xae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "circledS"

    const/16 v1, 0x24c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CircleMinus"

    const/16 v1, 0x2296

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CirclePlus"

    const/16 v1, 0x2295

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CircleTimes"

    const/16 v1, 0x2297

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cire"

    const/16 v1, 0x2257

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cirE"

    const/16 v1, 0x29c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cirfnint"

    const/16 v1, 0x2a10

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cirmid"

    const/16 v1, 0x2aef

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cirscir"

    const/16 v1, 0x29c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ClockwiseContourIntegral"

    const/16 v1, 0x2232

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CloseCurlyDoubleQuote"

    const/16 v1, 0x201d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CloseCurlyQuote"

    const/16 v1, 0x2019

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "clubs"

    const/16 v1, 0x2663

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "clubsuit"

    const/16 v1, 0x2663

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "colon"

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Colon"

    const/16 v1, 0x2237

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "colone"

    const/16 v1, 0x2254

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Colone"

    const/16 v1, 0x2a74

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "coloneq"

    const/16 v1, 0x2254

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "comma"

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "commat"

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "comp"

    const/16 v1, 0x2201

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "compfn"

    const/16 v1, 0x2218

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "complement"

    const/16 v1, 0x2201

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "complexes"

    const/16 v1, 0x2102

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cong"

    const/16 v1, 0x2245

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "congdot"

    const/16 v1, 0x2a6d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Congruent"

    const/16 v1, 0x2261

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "conint"

    const/16 v1, 0x222e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Conint"

    const/16 v1, 0x222f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ContourIntegral"

    const/16 v1, 0x222e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "copf"

    const v1, 0x1d554

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Copf"

    const/16 v1, 0x2102

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "coprod"

    const/16 v1, 0x2210

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Coproduct"

    const/16 v1, 0x2210

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "copy"

    const/16 v1, 0xa9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "copysr"

    const/16 v1, 0x2117

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CounterClockwiseContourIntegral"

    const/16 v1, 0x2233

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "crarr"

    const/16 v1, 0x21b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cross"

    const/16 v1, 0x2717

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cross"

    const/16 v1, 0x2a2f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cscr"

    const v1, 0x1d4b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cscr"

    const v1, 0x1d49e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "csub"

    const/16 v1, 0x2acf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "csube"

    const/16 v1, 0x2ad1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "csup"

    const/16 v1, 0x2ad0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "csupe"

    const/16 v1, 0x2ad2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ctdot"

    const/16 v1, 0x22ef

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cudarrl"

    const/16 v1, 0x2938

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cudarrr"

    const/16 v1, 0x2935

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cuepr"

    const/16 v1, 0x22de

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cuesc"

    const/16 v1, 0x22df

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cularr"

    const/16 v1, 0x21b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cularrp"

    const/16 v1, 0x293d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cup"

    const/16 v1, 0x222a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Cup"

    const/16 v1, 0x22d3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cupbrcap"

    const/16 v1, 0x2a48

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cupcap"

    const/16 v1, 0x2a46

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "CupCap"

    const/16 v1, 0x224d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cupcup"

    const/16 v1, 0x2a4a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cupdot"

    const/16 v1, 0x228d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cupor"

    const/16 v1, 0x2a45

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curarr"

    const/16 v1, 0x21b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curarrm"

    const/16 v1, 0x293c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curlyeqprec"

    const/16 v1, 0x22de

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curlyeqsucc"

    const/16 v1, 0x22df

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curlyvee"

    const/16 v1, 0x22ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curlywedge"

    const/16 v1, 0x22cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curren"

    const/16 v1, 0xa4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curvearrowleft"

    const/16 v1, 0x21b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "curvearrowright"

    const/16 v1, 0x21b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cuvee"

    const/16 v1, 0x22ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cuwed"

    const/16 v1, 0x22cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cwconint"

    const/16 v1, 0x2232

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cwint"

    const/16 v1, 0x2231

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "cylcty"

    const/16 v1, 0x232d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dagger"

    const/16 v1, 0x2020

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dagger"

    const/16 v1, 0x2021

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "daleth"

    const/16 v1, 0x2138

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "darr"

    const/16 v1, 0x2193

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dArr"

    const/16 v1, 0x21d3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Darr"

    const/16 v1, 0x21a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dash"

    const/16 v1, 0x2010

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dashv"

    const/16 v1, 0x22a3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dashv"

    const/16 v1, 0x2ae4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dbkarow"

    const/16 v1, 0x290f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dblac"

    const/16 v1, 0x2dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dcaron"

    const/16 v1, 0x10f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dcaron"

    const/16 v1, 0x10e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dcy"

    const/16 v1, 0x434

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dcy"

    const/16 v1, 0x414

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dd"

    const/16 v1, 0x2146

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DD"

    const/16 v1, 0x2145

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ddagger"

    const/16 v1, 0x2021

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ddarr"

    const/16 v1, 0x21ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DDotrahd"

    const/16 v1, 0x2911

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ddotseq"

    const/16 v1, 0x2a77

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "deg"

    const/16 v1, 0xb0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Del"

    const/16 v1, 0x2207

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "delta"

    const/16 v1, 0x3b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Delta"

    const/16 v1, 0x394

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "demptyv"

    const/16 v1, 0x29b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dfisht"

    const/16 v1, 0x297f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dfr"

    const v1, 0x1d521

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dfr"

    const v1, 0x1d507

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dgr"

    const/16 v1, 0x3b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dgr"

    const/16 v1, 0x394

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dHar"

    const/16 v1, 0x2965

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dharl"

    const/16 v1, 0x21c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dharr"

    const/16 v1, 0x21c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DiacriticalAcute"

    const/16 v1, 0xb4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DiacriticalDot"

    const/16 v1, 0x2d9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DiacriticalDoubleAcute"

    const/16 v1, 0x2dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DiacriticalGrave"

    const/16 v1, 0x60

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DiacriticalTilde"

    const/16 v1, 0x2dc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "diam"

    const/16 v1, 0x22c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "diamond"

    const/16 v1, 0x22c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "diamondsuit"

    const/16 v1, 0x2666

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "diams"

    const/16 v1, 0x2666

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "die"

    const/16 v1, 0xa8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DifferentialD"

    const/16 v1, 0x2146

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "digamma"

    const/16 v1, 0x3dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "disin"

    const/16 v1, 0x22f2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "div"

    const/16 v1, 0xf7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "divide"

    const/16 v1, 0xf7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "divideontimes"

    const/16 v1, 0x22c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "divonx"

    const/16 v1, 0x22c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "djcy"

    const/16 v1, 0x452

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DJcy"

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dlcorn"

    const/16 v1, 0x231e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dlcrop"

    const/16 v1, 0x230d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dollar"

    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dopf"

    const v1, 0x1d555

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dopf"

    const v1, 0x1d53b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dot"

    const/16 v1, 0x2d9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dot"

    const/16 v1, 0xa8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "doteq"

    const/16 v1, 0x2250

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "doteqdot"

    const/16 v1, 0x2251

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DotEqual"

    const/16 v1, 0x2250

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dotminus"

    const/16 v1, 0x2238

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dotplus"

    const/16 v1, 0x2214

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dotsquare"

    const/16 v1, 0x22a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "doublebarwedge"

    const/16 v1, 0x2306

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleContourIntegral"

    const/16 v1, 0x222f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleDot"

    const/16 v1, 0xa8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleDownArrow"

    const/16 v1, 0x21d3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleLeftArrow"

    const/16 v1, 0x21d0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleLeftRightArrow"

    const/16 v1, 0x21d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleLeftTee"

    const/16 v1, 0x2ae4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleLongLeftArrow"

    const/16 v1, 0x27f8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleLongLeftRightArrow"

    const/16 v1, 0x27fa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleLongRightArrow"

    const/16 v1, 0x27f9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleRightArrow"

    const/16 v1, 0x21d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleRightTee"

    const/16 v1, 0x22a8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleUpArrow"

    const/16 v1, 0x21d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleUpDownArrow"

    const/16 v1, 0x21d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DoubleVerticalBar"

    const/16 v1, 0x2225

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "downarrow"

    const/16 v1, 0x2193

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Downarrow"

    const/16 v1, 0x21d3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownArrowBar"

    const/16 v1, 0x2913

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownArrowUpArrow"

    const/16 v1, 0x21f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "downdownarrows"

    const/16 v1, 0x21ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "downharpoonleft"

    const/16 v1, 0x21c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "downharpoonright"

    const/16 v1, 0x21c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownLeftRightVector"

    const/16 v1, 0x2950

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownLeftTeeVector"

    const/16 v1, 0x295e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownLeftVector"

    const/16 v1, 0x21bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownLeftVectorBar"

    const/16 v1, 0x2956

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownRightTeeVector"

    const/16 v1, 0x295f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownRightVector"

    const/16 v1, 0x21c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownRightVectorBar"

    const/16 v1, 0x2957

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownTee"

    const/16 v1, 0x22a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DownTeeArrow"

    const/16 v1, 0x21a7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "drbkarow"

    const/16 v1, 0x2910

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "drcorn"

    const/16 v1, 0x231f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "drcrop"

    const/16 v1, 0x230c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dscr"

    const v1, 0x1d4b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dscr"

    const v1, 0x1d49f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dscy"

    const/16 v1, 0x455

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DScy"

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dsol"

    const/16 v1, 0x29f6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dstrok"

    const/16 v1, 0x111

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Dstrok"

    const/16 v1, 0x110

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dtdot"

    const/16 v1, 0x22f1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dtri"

    const/16 v1, 0x25bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dtrif"

    const/16 v1, 0x25be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "duarr"

    const/16 v1, 0x21f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "duhar"

    const/16 v1, 0x296f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dwangle"

    const/16 v1, 0x29a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dzcy"

    const/16 v1, 0x45f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "DZcy"

    const/16 v1, 0x40f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "dzigrarr"

    const/16 v1, 0x27ff

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eacgr"

    const/16 v1, 0x3ad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Eacgr"

    const/16 v1, 0x388

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eacute"

    const/16 v1, 0xe9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Eacute"

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "easter"

    const/16 v1, 0x2a6e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ecaron"

    const/16 v1, 0x11b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ecaron"

    const/16 v1, 0x11a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ecir"

    const/16 v1, 0x2256

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ecirc"

    const/16 v1, 0xea

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ecirc"

    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ecolon"

    const/16 v1, 0x2255

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ecy"

    const/16 v1, 0x44d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ecy"

    const/16 v1, 0x42d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eDDot"

    const/16 v1, 0x2a77

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "edot"

    const/16 v1, 0x117

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eDot"

    const/16 v1, 0x2251

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Edot"

    const/16 v1, 0x116

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ee"

    const/16 v1, 0x2147

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eeacgr"

    const/16 v1, 0x3ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "EEacgr"

    const/16 v1, 0x389

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eegr"

    const/16 v1, 0x3b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "EEgr"

    const/16 v1, 0x397

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "efDot"

    const/16 v1, 0x2252

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "efr"

    const v1, 0x1d522

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Efr"

    const v1, 0x1d508

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eg"

    const/16 v1, 0x2a9a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "egr"

    const/16 v1, 0x3b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Egr"

    const/16 v1, 0x395

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "egrave"

    const/16 v1, 0xe8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Egrave"

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "egs"

    const/16 v1, 0x2a96

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "egsdot"

    const/16 v1, 0x2a98

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "el"

    const/16 v1, 0x2a99

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Element"

    const/16 v1, 0x2208

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "elinters"

    const/16 v1, 0x23e7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ell"

    const/16 v1, 0x2113

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "els"

    const/16 v1, 0x2a95

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "elsdot"

    const/16 v1, 0x2a97

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "emacr"

    const/16 v1, 0x113

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Emacr"

    const/16 v1, 0x112

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "empty"

    const/16 v1, 0x2205

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "emptyset"

    const/16 v1, 0x2205

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "EmptySmallSquare"

    const/16 v1, 0x25fb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "emptyv"

    const/16 v1, 0x2205

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "EmptyVerySmallSquare"

    const/16 v1, 0x25ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "emsp"

    const/16 v1, 0x2003

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "emsp13"

    const/16 v1, 0x2004

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "emsp14"

    const/16 v1, 0x2005

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eng"

    const/16 v1, 0x14b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ENG"

    const/16 v1, 0x14a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ensp"

    const/16 v1, 0x2002

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eogon"

    const/16 v1, 0x119

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Eogon"

    const/16 v1, 0x118

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eopf"

    const v1, 0x1d556

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Eopf"

    const v1, 0x1d53c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "epar"

    const/16 v1, 0x22d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eparsl"

    const/16 v1, 0x29e3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eplus"

    const/16 v1, 0x2a71

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "epsi"

    const/16 v1, 0x3f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "epsilon"

    const/16 v1, 0x3b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Epsilon"

    const/16 v1, 0x395

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "epsiv"

    const/16 v1, 0x3b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eqcirc"

    const/16 v1, 0x2256

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eqcolon"

    const/16 v1, 0x2255

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eqsim"

    const/16 v1, 0x2242

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eqslantgtr"

    const/16 v1, 0x2a96

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eqslantless"

    const/16 v1, 0x2a95

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Equal"

    const/16 v1, 0x2a75

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "equals"

    const/16 v1, 0x3d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "EqualTilde"

    const/16 v1, 0x2242

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "equest"

    const/16 v1, 0x225f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Equilibrium"

    const/16 v1, 0x21cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "equiv"

    const/16 v1, 0x2261

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "equivDD"

    const/16 v1, 0x2a78

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eqvparsl"

    const/16 v1, 0x29e5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "erarr"

    const/16 v1, 0x2971

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "erDot"

    const/16 v1, 0x2253

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "escr"

    const/16 v1, 0x212f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Escr"

    const/16 v1, 0x2130

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "esdot"

    const/16 v1, 0x2250

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "esim"

    const/16 v1, 0x2242

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Esim"

    const/16 v1, 0x2a73

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eta"

    const/16 v1, 0x3b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Eta"

    const/16 v1, 0x397

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "eth"

    const/16 v1, 0xf0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ETH"

    const/16 v1, 0xd0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "euml"

    const/16 v1, 0xeb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Euml"

    const/16 v1, 0xcb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "euro"

    const/16 v1, 0x20ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "excl"

    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "exist"

    const/16 v1, 0x2203

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Exists"

    const/16 v1, 0x2203

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "expectation"

    const/16 v1, 0x2130

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "exponentiale"

    const/16 v1, 0x2147

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fallingdotseq"

    const/16 v1, 0x2252

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fcy"

    const/16 v1, 0x444

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Fcy"

    const/16 v1, 0x424

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "female"

    const/16 v1, 0x2640

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ffilig"

    const v1, 0xfb03

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fflig"

    const v1, 0xfb00

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ffllig"

    const v1, 0xfb04

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ffr"

    const v1, 0x1d523

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ffr"

    const v1, 0x1d509

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "filig"

    const v1, 0xfb01

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "FilledSmallSquare"

    const/16 v1, 0x25fc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "FilledVerySmallSquare"

    const/16 v1, 0x25aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "flat"

    const/16 v1, 0x266d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fllig"

    const v1, 0xfb02

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fltns"

    const/16 v1, 0x25b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fnof"

    const/16 v1, 0x192

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fopf"

    const v1, 0x1d557

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Fopf"

    const v1, 0x1d53d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "forall"

    const/16 v1, 0x2200

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fork"

    const/16 v1, 0x22d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "forkv"

    const/16 v1, 0x2ad9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Fouriertrf"

    const/16 v1, 0x2131

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fpartint"

    const/16 v1, 0x2a0d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac12"

    const/16 v1, 0xbd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac13"

    const/16 v1, 0x2153

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac14"

    const/16 v1, 0xbc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac15"

    const/16 v1, 0x2155

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac16"

    const/16 v1, 0x2159

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac18"

    const/16 v1, 0x215b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac23"

    const/16 v1, 0x2154

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac25"

    const/16 v1, 0x2156

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac34"

    const/16 v1, 0xbe

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac35"

    const/16 v1, 0x2157

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac38"

    const/16 v1, 0x215c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac45"

    const/16 v1, 0x2158

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac56"

    const/16 v1, 0x215a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac58"

    const/16 v1, 0x215d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frac78"

    const/16 v1, 0x215e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frasl"

    const/16 v1, 0x2044

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "frown"

    const/16 v1, 0x2322

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "fscr"

    const v1, 0x1d4bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Fscr"

    const/16 v1, 0x2131

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gacute"

    const/16 v1, 0x1f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gamma"

    const/16 v1, 0x3b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gamma"

    const/16 v1, 0x393

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gammad"

    const/16 v1, 0x3dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gammad"

    const/16 v1, 0x3dc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gap"

    const/16 v1, 0x2a86

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gbreve"

    const/16 v1, 0x11f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gbreve"

    const/16 v1, 0x11e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gcedil"

    const/16 v1, 0x122

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gcirc"

    const/16 v1, 0x11d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gcirc"

    const/16 v1, 0x11c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gcy"

    const/16 v1, 0x433

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gcy"

    const/16 v1, 0x413

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gdot"

    const/16 v1, 0x121

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gdot"

    const/16 v1, 0x120

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ge"

    const/16 v1, 0x2265

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gE"

    const/16 v1, 0x2267

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gel"

    const/16 v1, 0x22db

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gEl"

    const/16 v1, 0x2a8c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "geq"

    const/16 v1, 0x2265

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "geqq"

    const/16 v1, 0x2267

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "geqslant"

    const/16 v1, 0x2a7e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ges"

    const/16 v1, 0x2a7e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gescc"

    const/16 v1, 0x2aa9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gesdot"

    const/16 v1, 0x2a80

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gesdoto"

    const/16 v1, 0x2a82

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gesdotol"

    const/16 v1, 0x2a84

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gesles"

    const/16 v1, 0x2a94

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gfr"

    const v1, 0x1d524

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gfr"

    const v1, 0x1d50a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gg"

    const/16 v1, 0x226b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gg"

    const/16 v1, 0x22d9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ggg"

    const/16 v1, 0x22d9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ggr"

    const/16 v1, 0x3b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ggr"

    const/16 v1, 0x393

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gimel"

    const/16 v1, 0x2137

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gjcy"

    const/16 v1, 0x453

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GJcy"

    const/16 v1, 0x403

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gl"

    const/16 v1, 0x2277

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gla"

    const/16 v1, 0x2aa5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "glE"

    const/16 v1, 0x2a92

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "glj"

    const/16 v1, 0x2aa4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gnap"

    const/16 v1, 0x2a8a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gnapprox"

    const/16 v1, 0x2a8a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gne"

    const/16 v1, 0x2a88

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gnE"

    const/16 v1, 0x2269

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gneq"

    const/16 v1, 0x2a88

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gneqq"

    const/16 v1, 0x2269

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gnsim"

    const/16 v1, 0x22e7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gopf"

    const v1, 0x1d558

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gopf"

    const v1, 0x1d53e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "grave"

    const/16 v1, 0x60

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterEqual"

    const/16 v1, 0x2265

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterEqualLess"

    const/16 v1, 0x22db

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterFullEqual"

    const/16 v1, 0x2267

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterGreater"

    const/16 v1, 0x2aa2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterLess"

    const/16 v1, 0x2277

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterSlantEqual"

    const/16 v1, 0x2a7e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "GreaterTilde"

    const/16 v1, 0x2273

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gscr"

    const/16 v1, 0x210a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gscr"

    const v1, 0x1d4a2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gsim"

    const/16 v1, 0x2273

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gsime"

    const/16 v1, 0x2a8e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gsiml"

    const/16 v1, 0x2a90

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gt"

    const/16 v1, 0x3e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Gt"

    const/16 v1, 0x226b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtcc"

    const/16 v1, 0x2aa7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtcir"

    const/16 v1, 0x2a7a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtdot"

    const/16 v1, 0x22d7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtlPar"

    const/16 v1, 0x2995

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtquest"

    const/16 v1, 0x2a7c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtrapprox"

    const/16 v1, 0x2a86

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtrarr"

    const/16 v1, 0x2978

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtrdot"

    const/16 v1, 0x22d7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtreqless"

    const/16 v1, 0x22db

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtreqqless"

    const/16 v1, 0x2a8c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtrless"

    const/16 v1, 0x2277

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "gtrsim"

    const/16 v1, 0x2273

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hacek"

    const/16 v1, 0x2c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hairsp"

    const/16 v1, 0x200a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "half"

    const/16 v1, 0xbd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hamilt"

    const/16 v1, 0x210b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hardcy"

    const/16 v1, 0x44a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "HARDcy"

    const/16 v1, 0x42a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "harr"

    const/16 v1, 0x2194

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hArr"

    const/16 v1, 0x21d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "harrcir"

    const/16 v1, 0x2948

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "harrw"

    const/16 v1, 0x21ad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hat"

    const/16 v1, 0x5e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hbar"

    const/16 v1, 0x210f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hcirc"

    const/16 v1, 0x125

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hcirc"

    const/16 v1, 0x124

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hearts"

    const/16 v1, 0x2665

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "heartsuit"

    const/16 v1, 0x2665

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hellip"

    const/16 v1, 0x2026

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hercon"

    const/16 v1, 0x22b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hfr"

    const v1, 0x1d525

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hfr"

    const/16 v1, 0x210c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "HilbertSpace"

    const/16 v1, 0x210b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hksearow"

    const/16 v1, 0x2925

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hkswarow"

    const/16 v1, 0x2926

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hoarr"

    const/16 v1, 0x21ff

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "homtht"

    const/16 v1, 0x223b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hookleftarrow"

    const/16 v1, 0x21a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hookrightarrow"

    const/16 v1, 0x21aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hopf"

    const v1, 0x1d559

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hopf"

    const/16 v1, 0x210d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "horbar"

    const/16 v1, 0x2015

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "HorizontalLine"

    const/16 v1, 0x2500

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hscr"

    const v1, 0x1d4bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hscr"

    const/16 v1, 0x210b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hslash"

    const/16 v1, 0x210f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hstrok"

    const/16 v1, 0x127

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Hstrok"

    const/16 v1, 0x126

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "HumpDownHump"

    const/16 v1, 0x224e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "HumpEqual"

    const/16 v1, 0x224f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hybull"

    const/16 v1, 0x2043

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "hyphen"

    const/16 v1, 0x2010

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iacgr"

    const/16 v1, 0x3af

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iacgr"

    const/16 v1, 0x38a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iacute"

    const/16 v1, 0xed

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iacute"

    const/16 v1, 0xcd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ic"

    const/16 v1, 0x2063

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "icirc"

    const/16 v1, 0xee

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Icirc"

    const/16 v1, 0xce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "icy"

    const/16 v1, 0x438

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Icy"

    const/16 v1, 0x418

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "idiagr"

    const/16 v1, 0x390

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "idigr"

    const/16 v1, 0x3ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Idigr"

    const/16 v1, 0x3aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Idot"

    const/16 v1, 0x130

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iecy"

    const/16 v1, 0x435

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "IEcy"

    const/16 v1, 0x415

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iexcl"

    const/16 v1, 0xa1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iff"

    const/16 v1, 0x21d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ifr"

    const v1, 0x1d526

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ifr"

    const/16 v1, 0x2111

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "igr"

    const/16 v1, 0x3b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Igr"

    const/16 v1, 0x399

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "igrave"

    const/16 v1, 0xec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Igrave"

    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ii"

    const/16 v1, 0x2148

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iiiint"

    const/16 v1, 0x2a0c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iiint"

    const/16 v1, 0x222d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iinfin"

    const/16 v1, 0x29dc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iiota"

    const/16 v1, 0x2129

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ijlig"

    const/16 v1, 0x133

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "IJlig"

    const/16 v1, 0x132

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Im"

    const/16 v1, 0x2111

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "imacr"

    const/16 v1, 0x12b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Imacr"

    const/16 v1, 0x12a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "image"

    const/16 v1, 0x2111

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ImaginaryI"

    const/16 v1, 0x2148

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "imagline"

    const/16 v1, 0x2110

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "imagpart"

    const/16 v1, 0x2111

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "imath"

    const/16 v1, 0x131

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "imof"

    const/16 v1, 0x22b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "imped"

    const/16 v1, 0x1b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Implies"

    const/16 v1, 0x21d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "in"

    const/16 v1, 0x2208

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "incare"

    const/16 v1, 0x2105

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "infin"

    const/16 v1, 0x221e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "infintie"

    const/16 v1, 0x29dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "inodot"

    const/16 v1, 0x131

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "int"

    const/16 v1, 0x222b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Int"

    const/16 v1, 0x222c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "intcal"

    const/16 v1, 0x22ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "integers"

    const/16 v1, 0x2124

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Integral"

    const/16 v1, 0x222b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "intercal"

    const/16 v1, 0x22ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Intersection"

    const/16 v1, 0x22c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "intlarhk"

    const/16 v1, 0x2a17

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "intprod"

    const/16 v1, 0x2a3c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "InvisibleComma"

    const/16 v1, 0x2063

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "InvisibleTimes"

    const/16 v1, 0x2062

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iocy"

    const/16 v1, 0x451

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "IOcy"

    const/16 v1, 0x401

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iogon"

    const/16 v1, 0x12f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iogon"

    const/16 v1, 0x12e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iopf"

    const v1, 0x1d55a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iopf"

    const v1, 0x1d540

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iota"

    const/16 v1, 0x3b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iota"

    const/16 v1, 0x399

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iprod"

    const/16 v1, 0x2a3c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iquest"

    const/16 v1, 0xbf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iscr"

    const v1, 0x1d4be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iscr"

    const/16 v1, 0x2110

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "isin"

    const/16 v1, 0x2208

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "isindot"

    const/16 v1, 0x22f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "isinE"

    const/16 v1, 0x22f9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "isins"

    const/16 v1, 0x22f4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "isinsv"

    const/16 v1, 0x22f3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "isinv"

    const/16 v1, 0x2208

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "it"

    const/16 v1, 0x2062

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "itilde"

    const/16 v1, 0x129

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Itilde"

    const/16 v1, 0x128

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iukcy"

    const/16 v1, 0x456

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iukcy"

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "iuml"

    const/16 v1, 0xef

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Iuml"

    const/16 v1, 0xcf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jcirc"

    const/16 v1, 0x135

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jcirc"

    const/16 v1, 0x134

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jcy"

    const/16 v1, 0x439

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jcy"

    const/16 v1, 0x419

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jfr"

    const v1, 0x1d527

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jfr"

    const v1, 0x1d50d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jmath"

    const/16 v1, 0x237

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jopf"

    const v1, 0x1d55b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jopf"

    const v1, 0x1d541

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jscr"

    const v1, 0x1d4bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jscr"

    const v1, 0x1d4a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jsercy"

    const/16 v1, 0x458

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jsercy"

    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "jukcy"

    const/16 v1, 0x454

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Jukcy"

    const/16 v1, 0x404

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kappa"

    const/16 v1, 0x3ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kappa"

    const/16 v1, 0x39a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kappav"

    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kcedil"

    const/16 v1, 0x137

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kcedil"

    const/16 v1, 0x136

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kcy"

    const/16 v1, 0x43a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kcy"

    const/16 v1, 0x41a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kfr"

    const v1, 0x1d528

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kfr"

    const v1, 0x1d50e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kgr"

    const/16 v1, 0x3ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kgr"

    const/16 v1, 0x39a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kgreen"

    const/16 v1, 0x138

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "khcy"

    const/16 v1, 0x445

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "KHcy"

    const/16 v1, 0x425

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "khgr"

    const/16 v1, 0x3c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "KHgr"

    const/16 v1, 0x3a7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kjcy"

    const/16 v1, 0x45c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "KJcy"

    const/16 v1, 0x40c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kopf"

    const v1, 0x1d55c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kopf"

    const v1, 0x1d542

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "kscr"

    const v1, 0x1d4c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Kscr"

    const v1, 0x1d4a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lAarr"

    const/16 v1, 0x21da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lacute"

    const/16 v1, 0x13a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lacute"

    const/16 v1, 0x139

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "laemptyv"

    const/16 v1, 0x29b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lagran"

    const/16 v1, 0x2112

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lambda"

    const/16 v1, 0x3bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lambda"

    const/16 v1, 0x39b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lang"

    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lang"

    const/16 v1, 0x27ea

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "langd"

    const/16 v1, 0x2991

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "langle"

    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lap"

    const/16 v1, 0x2a85

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Laplacetrf"

    const/16 v1, 0x2112

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "laquo"

    const/16 v1, 0xab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larr"

    const/16 v1, 0x2190

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lArr"

    const/16 v1, 0x21d0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Larr"

    const/16 v1, 0x219e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrb"

    const/16 v1, 0x21e4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrbfs"

    const/16 v1, 0x291f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrfs"

    const/16 v1, 0x291d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrhk"

    const/16 v1, 0x21a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrlp"

    const/16 v1, 0x21ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrpl"

    const/16 v1, 0x2939

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrsim"

    const/16 v1, 0x2973

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "larrtl"

    const/16 v1, 0x21a2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lat"

    const/16 v1, 0x2aab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "latail"

    const/16 v1, 0x2919

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lAtail"

    const/16 v1, 0x291b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "late"

    const/16 v1, 0x2aad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbarr"

    const/16 v1, 0x290c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lBarr"

    const/16 v1, 0x290e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbbrk"

    const/16 v1, 0x2997

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbrace"

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbrack"

    const/16 v1, 0x5b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbrke"

    const/16 v1, 0x298b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbrksld"

    const/16 v1, 0x298f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lbrkslu"

    const/16 v1, 0x298d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lcaron"

    const/16 v1, 0x13e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lcaron"

    const/16 v1, 0x13d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lcedil"

    const/16 v1, 0x13c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lcedil"

    const/16 v1, 0x13b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lceil"

    const/16 v1, 0x2308

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lcub"

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lcy"

    const/16 v1, 0x43b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lcy"

    const/16 v1, 0x41b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ldca"

    const/16 v1, 0x2936

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ldquo"

    const/16 v1, 0x201c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ldquor"

    const/16 v1, 0x201e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ldrdhar"

    const/16 v1, 0x2967

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ldrushar"

    const/16 v1, 0x294b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ldsh"

    const/16 v1, 0x21b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "le"

    const/16 v1, 0x2264

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lE"

    const/16 v1, 0x2266

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftAngleBracket"

    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftarrow"

    const/16 v1, 0x2190

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Leftarrow"

    const/16 v1, 0x21d0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftArrowBar"

    const/16 v1, 0x21e4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftArrowRightArrow"

    const/16 v1, 0x21c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftarrowtail"

    const/16 v1, 0x21a2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftCeiling"

    const/16 v1, 0x2308

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftDoubleBracket"

    const/16 v1, 0x27e6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftDownTeeVector"

    const/16 v1, 0x2961

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftDownVector"

    const/16 v1, 0x21c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftDownVectorBar"

    const/16 v1, 0x2959

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftFloor"

    const/16 v1, 0x230a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftharpoondown"

    const/16 v1, 0x21bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftharpoonup"

    const/16 v1, 0x21bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftleftarrows"

    const/16 v1, 0x21c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftrightarrow"

    const/16 v1, 0x2194

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Leftrightarrow"

    const/16 v1, 0x21d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftrightarrows"

    const/16 v1, 0x21c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftrightharpoons"

    const/16 v1, 0x21cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftrightsquigarrow"

    const/16 v1, 0x21ad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftRightVector"

    const/16 v1, 0x294e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftTee"

    const/16 v1, 0x22a3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftTeeArrow"

    const/16 v1, 0x21a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftTeeVector"

    const/16 v1, 0x295a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leftthreetimes"

    const/16 v1, 0x22cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftTriangle"

    const/16 v1, 0x22b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftTriangleBar"

    const/16 v1, 0x29cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftTriangleEqual"

    const/16 v1, 0x22b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftUpDownVector"

    const/16 v1, 0x2951

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftUpTeeVector"

    const/16 v1, 0x2960

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftUpVector"

    const/16 v1, 0x21bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftUpVectorBar"

    const/16 v1, 0x2958

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftVector"

    const/16 v1, 0x21bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LeftVectorBar"

    const/16 v1, 0x2952

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leg"

    const/16 v1, 0x22da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lEg"

    const/16 v1, 0x2a8b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leq"

    const/16 v1, 0x2264

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leqq"

    const/16 v1, 0x2266

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "leqslant"

    const/16 v1, 0x2a7d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "les"

    const/16 v1, 0x2a7d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lescc"

    const/16 v1, 0x2aa8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesdot"

    const/16 v1, 0x2a7f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesdoto"

    const/16 v1, 0x2a81

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesdotor"

    const/16 v1, 0x2a83

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesges"

    const/16 v1, 0x2a93

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lessapprox"

    const/16 v1, 0x2a85

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lessdot"

    const/16 v1, 0x22d6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesseqgtr"

    const/16 v1, 0x22da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesseqqgtr"

    const/16 v1, 0x2a8b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LessEqualGreater"

    const/16 v1, 0x22da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LessFullEqual"

    const/16 v1, 0x2266

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LessGreater"

    const/16 v1, 0x2276

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lessgtr"

    const/16 v1, 0x2276

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LessLess"

    const/16 v1, 0x2aa1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lesssim"

    const/16 v1, 0x2272

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LessSlantEqual"

    const/16 v1, 0x2a7d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LessTilde"

    const/16 v1, 0x2272

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lfisht"

    const/16 v1, 0x297c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lfloor"

    const/16 v1, 0x230a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lfr"

    const v1, 0x1d529

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lfr"

    const v1, 0x1d50f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lg"

    const/16 v1, 0x2276

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lgE"

    const/16 v1, 0x2a91

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lgr"

    const/16 v1, 0x3bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lgr"

    const/16 v1, 0x39b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lHar"

    const/16 v1, 0x2962

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lhard"

    const/16 v1, 0x21bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lharu"

    const/16 v1, 0x21bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lharul"

    const/16 v1, 0x296a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lhblk"

    const/16 v1, 0x2584

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ljcy"

    const/16 v1, 0x459

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LJcy"

    const/16 v1, 0x409

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ll"

    const/16 v1, 0x226a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ll"

    const/16 v1, 0x22d8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "llarr"

    const/16 v1, 0x21c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "llcorner"

    const/16 v1, 0x231e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lleftarrow"

    const/16 v1, 0x21da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "llhard"

    const/16 v1, 0x296b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lltri"

    const/16 v1, 0x25fa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lmidot"

    const/16 v1, 0x140

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lmidot"

    const/16 v1, 0x13f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lmoust"

    const/16 v1, 0x23b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lmoustache"

    const/16 v1, 0x23b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lnap"

    const/16 v1, 0x2a89

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lnapprox"

    const/16 v1, 0x2a89

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lne"

    const/16 v1, 0x2a87

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lnE"

    const/16 v1, 0x2268

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lneq"

    const/16 v1, 0x2a87

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lneqq"

    const/16 v1, 0x2268

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lnsim"

    const/16 v1, 0x22e6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "loang"

    const/16 v1, 0x27ec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "loarr"

    const/16 v1, 0x21fd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lobrk"

    const/16 v1, 0x27e6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "longleftarrow"

    const/16 v1, 0x27f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Longleftarrow"

    const/16 v1, 0x27f8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "longleftrightarrow"

    const/16 v1, 0x27f7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Longleftrightarrow"

    const/16 v1, 0x27fa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "longmapsto"

    const/16 v1, 0x27fc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "longrightarrow"

    const/16 v1, 0x27f6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Longrightarrow"

    const/16 v1, 0x27f9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "looparrowleft"

    const/16 v1, 0x21ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "looparrowright"

    const/16 v1, 0x21ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lopar"

    const/16 v1, 0x2985

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lopf"

    const v1, 0x1d55d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lopf"

    const v1, 0x1d543

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "loplus"

    const/16 v1, 0x2a2d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lotimes"

    const/16 v1, 0x2a34

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lowast"

    const/16 v1, 0x2217

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lowbar"

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LowerLeftArrow"

    const/16 v1, 0x2199

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "LowerRightArrow"

    const/16 v1, 0x2198

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "loz"

    const/16 v1, 0x25ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lozenge"

    const/16 v1, 0x25ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lozf"

    const/16 v1, 0x29eb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lpar"

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lparlt"

    const/16 v1, 0x2993

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lrarr"

    const/16 v1, 0x21c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lrcorner"

    const/16 v1, 0x231f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lrhar"

    const/16 v1, 0x21cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lrhard"

    const/16 v1, 0x296d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lrm"

    const/16 v1, 0x200e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lrtri"

    const/16 v1, 0x22bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsaquo"

    const/16 v1, 0x2039

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lscr"

    const v1, 0x1d4c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lscr"

    const/16 v1, 0x2112

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsh"

    const/16 v1, 0x21b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsim"

    const/16 v1, 0x2272

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsime"

    const/16 v1, 0x2a8d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsimg"

    const/16 v1, 0x2a8f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsqb"

    const/16 v1, 0x5b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsquo"

    const/16 v1, 0x2018

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lsquor"

    const/16 v1, 0x201a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lstrok"

    const/16 v1, 0x142

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lstrok"

    const/16 v1, 0x141

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lt"

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Lt"

    const/16 v1, 0x226a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltcc"

    const/16 v1, 0x2aa6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltcir"

    const/16 v1, 0x2a79

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltdot"

    const/16 v1, 0x22d6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lthree"

    const/16 v1, 0x22cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltimes"

    const/16 v1, 0x22c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltlarr"

    const/16 v1, 0x2976

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltquest"

    const/16 v1, 0x2a7b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltri"

    const/16 v1, 0x25c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltrie"

    const/16 v1, 0x22b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltrif"

    const/16 v1, 0x25c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ltrPar"

    const/16 v1, 0x2996

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "lurdshar"

    const/16 v1, 0x294a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "luruhar"

    const/16 v1, 0x2966

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "macr"

    const/16 v1, 0xaf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "male"

    const/16 v1, 0x2642

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "malt"

    const/16 v1, 0x2720

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "maltese"

    const/16 v1, 0x2720

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "map"

    const/16 v1, 0x21a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Map"

    const/16 v1, 0x2905

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mapsto"

    const/16 v1, 0x21a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mapstodown"

    const/16 v1, 0x21a7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mapstoleft"

    const/16 v1, 0x21a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mapstoup"

    const/16 v1, 0x21a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "marker"

    const/16 v1, 0x25ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mcomma"

    const/16 v1, 0x2a29

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mcy"

    const/16 v1, 0x43c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mcy"

    const/16 v1, 0x41c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mdash"

    const/16 v1, 0x2014

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mDDot"

    const/16 v1, 0x223a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "measuredangle"

    const/16 v1, 0x2221

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "MediumSpace"

    const/16 v1, 0x205f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mellintrf"

    const/16 v1, 0x2133

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mfr"

    const v1, 0x1d52a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mfr"

    const v1, 0x1d510

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mgr"

    const/16 v1, 0x3bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mgr"

    const/16 v1, 0x39c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mho"

    const/16 v1, 0x2127

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "micro"

    const/16 v1, 0xb5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mid"

    const/16 v1, 0x2223

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "midast"

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "midcir"

    const/16 v1, 0x2af0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "middot"

    const/16 v1, 0xb7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "minus"

    const/16 v1, 0x2212

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "minusb"

    const/16 v1, 0x229f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "minusd"

    const/16 v1, 0x2238

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "minusdu"

    const/16 v1, 0x2a2a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "MinusPlus"

    const/16 v1, 0x2213

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mlcp"

    const/16 v1, 0x2adb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mldr"

    const/16 v1, 0x2026

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mnplus"

    const/16 v1, 0x2213

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "models"

    const/16 v1, 0x22a7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mopf"

    const v1, 0x1d55e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mopf"

    const v1, 0x1d544

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mp"

    const/16 v1, 0x2213

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mscr"

    const v1, 0x1d4c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mscr"

    const/16 v1, 0x2133

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mstpos"

    const/16 v1, 0x223e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mu"

    const/16 v1, 0x3bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Mu"

    const/16 v1, 0x39c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "multimap"

    const/16 v1, 0x22b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "mumap"

    const/16 v1, 0x22b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nabla"

    const/16 v1, 0x2207

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nacute"

    const/16 v1, 0x144

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Nacute"

    const/16 v1, 0x143

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nap"

    const/16 v1, 0x2249

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "napos"

    const/16 v1, 0x149

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "napprox"

    const/16 v1, 0x2249

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "natur"

    const/16 v1, 0x266e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "natural"

    const/16 v1, 0x266e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "naturals"

    const/16 v1, 0x2115

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nbsp"

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ncap"

    const/16 v1, 0x2a43

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ncaron"

    const/16 v1, 0x148

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ncaron"

    const/16 v1, 0x147

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ncedil"

    const/16 v1, 0x146

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ncedil"

    const/16 v1, 0x145

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ncong"

    const/16 v1, 0x2247

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ncup"

    const/16 v1, 0x2a42

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ncy"

    const/16 v1, 0x43d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ncy"

    const/16 v1, 0x41d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ndash"

    const/16 v1, 0x2013

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ne"

    const/16 v1, 0x2260

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nearhk"

    const/16 v1, 0x2924

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nearr"

    const/16 v1, 0x2197

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "neArr"

    const/16 v1, 0x21d7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nearrow"

    const/16 v1, 0x2197

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NegativeMediumSpace"

    const/16 v1, 0x200b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NegativeThickSpace"

    const/16 v1, 0x200b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NegativeThinSpace"

    const/16 v1, 0x200b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NegativeVeryThinSpace"

    const/16 v1, 0x200b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nequiv"

    const/16 v1, 0x2262

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nesear"

    const/16 v1, 0x2928

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NestedGreaterGreater"

    const/16 v1, 0x226b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NestedLessLess"

    const/16 v1, 0x226a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NewLine"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nexist"

    const/16 v1, 0x2204

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nexists"

    const/16 v1, 0x2204

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nfr"

    const v1, 0x1d52b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Nfr"

    const v1, 0x1d511

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nge"

    const/16 v1, 0x2271

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ngeq"

    const/16 v1, 0x2271

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ngr"

    const/16 v1, 0x3bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ngr"

    const/16 v1, 0x39d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ngsim"

    const/16 v1, 0x2275

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ngt"

    const/16 v1, 0x226f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ngtr"

    const/16 v1, 0x226f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nharr"

    const/16 v1, 0x21ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nhArr"

    const/16 v1, 0x21ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nhpar"

    const/16 v1, 0x2af2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ni"

    const/16 v1, 0x220b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nis"

    const/16 v1, 0x22fc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nisd"

    const/16 v1, 0x22fa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "niv"

    const/16 v1, 0x220b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "njcy"

    const/16 v1, 0x45a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NJcy"

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nlarr"

    const/16 v1, 0x219a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nlArr"

    const/16 v1, 0x21cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nldr"

    const/16 v1, 0x2025

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nle"

    const/16 v1, 0x2270

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nleftarrow"

    const/16 v1, 0x219a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nLeftarrow"

    const/16 v1, 0x21cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nleftrightarrow"

    const/16 v1, 0x21ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nLeftrightarrow"

    const/16 v1, 0x21ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nleq"

    const/16 v1, 0x2270

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nless"

    const/16 v1, 0x226e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nlsim"

    const/16 v1, 0x2274

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nlt"

    const/16 v1, 0x226e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nltri"

    const/16 v1, 0x22ea

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nltrie"

    const/16 v1, 0x22ec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nmid"

    const/16 v1, 0x2224

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NoBreak"

    const/16 v1, 0x2060

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NonBreakingSpace"

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nopf"

    const v1, 0x1d55f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Nopf"

    const/16 v1, 0x2115

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "not"

    const/16 v1, 0xac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Not"

    const/16 v1, 0x2aec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotCongruent"

    const/16 v1, 0x2262

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotCupCap"

    const/16 v1, 0x226d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotDoubleVerticalBar"

    const/16 v1, 0x2226

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotElement"

    const/16 v1, 0x2209

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotEqual"

    const/16 v1, 0x2260

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotExists"

    const/16 v1, 0x2204

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotGreater"

    const/16 v1, 0x226f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotGreaterEqual"

    const/16 v1, 0x2271

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotGreaterLess"

    const/16 v1, 0x2279

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotGreaterTilde"

    const/16 v1, 0x2275

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notin"

    const/16 v1, 0x2209

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notinva"

    const/16 v1, 0x2209

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notinvb"

    const/16 v1, 0x22f7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notinvc"

    const/16 v1, 0x22f6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotLeftTriangle"

    const/16 v1, 0x22ea

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotLeftTriangleEqual"

    const/16 v1, 0x22ec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotLess"

    const/16 v1, 0x226e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotLessEqual"

    const/16 v1, 0x2270

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotLessGreater"

    const/16 v1, 0x2278

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotLessTilde"

    const/16 v1, 0x2274

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notni"

    const/16 v1, 0x220c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notniva"

    const/16 v1, 0x220c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notnivb"

    const/16 v1, 0x22fe

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "notnivc"

    const/16 v1, 0x22fd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotPrecedes"

    const/16 v1, 0x2280

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotPrecedesSlantEqual"

    const/16 v1, 0x22e0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotReverseElement"

    const/16 v1, 0x220c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotRightTriangle"

    const/16 v1, 0x22eb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotRightTriangleEqual"

    const/16 v1, 0x22ed

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotSquareSubsetEqual"

    const/16 v1, 0x22e2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotSquareSupersetEqual"

    const/16 v1, 0x22e3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotSubsetEqual"

    const/16 v1, 0x2288

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotSucceeds"

    const/16 v1, 0x2281

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotSucceedsSlantEqual"

    const/16 v1, 0x22e1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotSupersetEqual"

    const/16 v1, 0x2289

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotTilde"

    const/16 v1, 0x2241

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotTildeEqual"

    const/16 v1, 0x2244

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotTildeFullEqual"

    const/16 v1, 0x2247

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotTildeTilde"

    const/16 v1, 0x2249

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "NotVerticalBar"

    const/16 v1, 0x2224

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "npar"

    const/16 v1, 0x2226

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nparallel"

    const/16 v1, 0x2226

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "npolint"

    const/16 v1, 0x2a14

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "npr"

    const/16 v1, 0x2280

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nprcue"

    const/16 v1, 0x22e0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nprec"

    const/16 v1, 0x2280

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nrarr"

    const/16 v1, 0x219b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nrArr"

    const/16 v1, 0x21cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nrightarrow"

    const/16 v1, 0x219b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nRightarrow"

    const/16 v1, 0x21cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nrtri"

    const/16 v1, 0x22eb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nrtrie"

    const/16 v1, 0x22ed

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsc"

    const/16 v1, 0x2281

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsccue"

    const/16 v1, 0x22e1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nscr"

    const v1, 0x1d4c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Nscr"

    const v1, 0x1d4a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nshortmid"

    const/16 v1, 0x2224

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nshortparallel"

    const/16 v1, 0x2226

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsim"

    const/16 v1, 0x2241

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsime"

    const/16 v1, 0x2244

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsimeq"

    const/16 v1, 0x2244

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsmid"

    const/16 v1, 0x2224

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nspar"

    const/16 v1, 0x2226

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsqsube"

    const/16 v1, 0x22e2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsqsupe"

    const/16 v1, 0x22e3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsub"

    const/16 v1, 0x2284

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsube"

    const/16 v1, 0x2288

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsubseteq"

    const/16 v1, 0x2288

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsucc"

    const/16 v1, 0x2281

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsup"

    const/16 v1, 0x2285

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsupe"

    const/16 v1, 0x2289

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nsupseteq"

    const/16 v1, 0x2289

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntgl"

    const/16 v1, 0x2279

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntilde"

    const/16 v1, 0xf1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ntilde"

    const/16 v1, 0xd1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntlg"

    const/16 v1, 0x2278

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntriangleleft"

    const/16 v1, 0x22ea

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntrianglelefteq"

    const/16 v1, 0x22ec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntriangleright"

    const/16 v1, 0x22eb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ntrianglerighteq"

    const/16 v1, 0x22ed

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nu"

    const/16 v1, 0x3bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Nu"

    const/16 v1, 0x39d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "num"

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "numero"

    const/16 v1, 0x2116

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "numsp"

    const/16 v1, 0x2007

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nvdash"

    const/16 v1, 0x22ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nvDash"

    const/16 v1, 0x22ad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nVdash"

    const/16 v1, 0x22ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nVDash"

    const/16 v1, 0x22af

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nvHarr"

    const/16 v1, 0x2904

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nvinfin"

    const/16 v1, 0x29de

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nvlArr"

    const/16 v1, 0x2902

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nvrArr"

    const/16 v1, 0x2903

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nwarhk"

    const/16 v1, 0x2923

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nwarr"

    const/16 v1, 0x2196

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nwArr"

    const/16 v1, 0x21d6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nwarrow"

    const/16 v1, 0x2196

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "nwnear"

    const/16 v1, 0x2927

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oacgr"

    const/16 v1, 0x3cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Oacgr"

    const/16 v1, 0x38c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oacute"

    const/16 v1, 0xf3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Oacute"

    const/16 v1, 0xd3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oast"

    const/16 v1, 0x229b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ocir"

    const/16 v1, 0x229a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ocirc"

    const/16 v1, 0xf4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ocirc"

    const/16 v1, 0xd4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ocy"

    const/16 v1, 0x43e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ocy"

    const/16 v1, 0x41e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "odash"

    const/16 v1, 0x229d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "odblac"

    const/16 v1, 0x151

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Odblac"

    const/16 v1, 0x150

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "odiv"

    const/16 v1, 0x2a38

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "odot"

    const/16 v1, 0x2299

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "odsold"

    const/16 v1, 0x29bc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oelig"

    const/16 v1, 0x153

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OElig"

    const/16 v1, 0x152

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ofcir"

    const/16 v1, 0x29bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ofr"

    const v1, 0x1d52c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ofr"

    const v1, 0x1d512

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ogon"

    const/16 v1, 0x2db

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ogr"

    const/16 v1, 0x3bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ogr"

    const/16 v1, 0x39f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ograve"

    const/16 v1, 0xf2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ograve"

    const/16 v1, 0xd2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ogt"

    const/16 v1, 0x29c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ohacgr"

    const/16 v1, 0x3ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OHacgr"

    const/16 v1, 0x38f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ohbar"

    const/16 v1, 0x29b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ohgr"

    const/16 v1, 0x3c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OHgr"

    const/16 v1, 0x3a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ohm"

    const/16 v1, 0x2126

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oint"

    const/16 v1, 0x222e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "olarr"

    const/16 v1, 0x21ba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "olcir"

    const/16 v1, 0x29be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "olcross"

    const/16 v1, 0x29bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oline"

    const/16 v1, 0x203e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "olt"

    const/16 v1, 0x29c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "omacr"

    const/16 v1, 0x14d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Omacr"

    const/16 v1, 0x14c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "omega"

    const/16 v1, 0x3c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Omega"

    const/16 v1, 0x3a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "omicron"

    const/16 v1, 0x3bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Omicron"

    const/16 v1, 0x39f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "omid"

    const/16 v1, 0x29b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ominus"

    const/16 v1, 0x2296

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oopf"

    const v1, 0x1d560

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Oopf"

    const v1, 0x1d546

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "opar"

    const/16 v1, 0x29b7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OpenCurlyDoubleQuote"

    const/16 v1, 0x201c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OpenCurlyQuote"

    const/16 v1, 0x2018

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "operp"

    const/16 v1, 0x29b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oplus"

    const/16 v1, 0x2295

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "or"

    const/16 v1, 0x2228

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Or"

    const/16 v1, 0x2a54

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "orarr"

    const/16 v1, 0x21bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ord"

    const/16 v1, 0x2a5d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "order"

    const/16 v1, 0x2134

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "orderof"

    const/16 v1, 0x2134

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ordf"

    const/16 v1, 0xaa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ordm"

    const/16 v1, 0xba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "origof"

    const/16 v1, 0x22b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oror"

    const/16 v1, 0x2a56

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "orslope"

    const/16 v1, 0x2a57

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "orv"

    const/16 v1, 0x2a5b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oS"

    const/16 v1, 0x24c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oscr"

    const/16 v1, 0x2134

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Oscr"

    const v1, 0x1d4aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "oslash"

    const/16 v1, 0xf8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Oslash"

    const/16 v1, 0xd8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "osol"

    const/16 v1, 0x2298

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "otilde"

    const/16 v1, 0xf5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Otilde"

    const/16 v1, 0xd5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "otimes"

    const/16 v1, 0x2297

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Otimes"

    const/16 v1, 0x2a37

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "otimesas"

    const/16 v1, 0x2a36

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ouml"

    const/16 v1, 0xf6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ouml"

    const/16 v1, 0xd6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ovbar"

    const/16 v1, 0x233d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OverBar"

    const/16 v1, 0xaf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OverBrace"

    const v1, 0xfe37

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OverBracket"

    const/16 v1, 0x23b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "OverParenthesis"

    const v1, 0xfe35

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "par"

    const/16 v1, 0x2225

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "para"

    const/16 v1, 0xb6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "parallel"

    const/16 v1, 0x2225

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "parsim"

    const/16 v1, 0x2af3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "parsl"

    const/16 v1, 0x2afd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "part"

    const/16 v1, 0x2202

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PartialD"

    const/16 v1, 0x2202

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pcy"

    const/16 v1, 0x43f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Pcy"

    const/16 v1, 0x41f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "percnt"

    const/16 v1, 0x25

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "period"

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "permil"

    const/16 v1, 0x2030

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "perp"

    const/16 v1, 0x22a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pertenk"

    const/16 v1, 0x2031

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pfr"

    const v1, 0x1d52d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Pfr"

    const v1, 0x1d513

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pgr"

    const/16 v1, 0x3c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Pgr"

    const/16 v1, 0x3a0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "phgr"

    const/16 v1, 0x3c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PHgr"

    const/16 v1, 0x3a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "phi"

    const/16 v1, 0x3d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Phi"

    const/16 v1, 0x3a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "phiv"

    const/16 v1, 0x3c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "phmmat"

    const/16 v1, 0x2133

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "phone"

    const/16 v1, 0x260e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pi"

    const/16 v1, 0x3c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Pi"

    const/16 v1, 0x3a0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pitchfork"

    const/16 v1, 0x22d4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "piv"

    const/16 v1, 0x3d6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "planck"

    const/16 v1, 0x210f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "planckh"

    const/16 v1, 0x210e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plankv"

    const/16 v1, 0x210f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plus"

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plusacir"

    const/16 v1, 0x2a23

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plusb"

    const/16 v1, 0x229e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pluscir"

    const/16 v1, 0x2a22

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plusdo"

    const/16 v1, 0x2214

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plusdu"

    const/16 v1, 0x2a25

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pluse"

    const/16 v1, 0x2a72

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PlusMinus"

    const/16 v1, 0xb1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plusmn"

    const/16 v1, 0xb1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plussim"

    const/16 v1, 0x2a26

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "plustwo"

    const/16 v1, 0x2a27

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pm"

    const/16 v1, 0xb1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Poincareplane"

    const/16 v1, 0x210c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pointint"

    const/16 v1, 0x2a15

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "popf"

    const v1, 0x1d561

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Popf"

    const/16 v1, 0x2119

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pound"

    const/16 v1, 0xa3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pr"

    const/16 v1, 0x227a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Pr"

    const/16 v1, 0x2abb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prap"

    const/16 v1, 0x2ab7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prcue"

    const/16 v1, 0x227c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pre"

    const/16 v1, 0x2aaf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prE"

    const/16 v1, 0x2ab3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prec"

    const/16 v1, 0x227a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "precapprox"

    const/16 v1, 0x2ab7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "preccurlyeq"

    const/16 v1, 0x227c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Precedes"

    const/16 v1, 0x227a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PrecedesEqual"

    const/16 v1, 0x2aaf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PrecedesSlantEqual"

    const/16 v1, 0x227c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PrecedesTilde"

    const/16 v1, 0x227e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "preceq"

    const/16 v1, 0x2aaf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "precnapprox"

    const/16 v1, 0x2ab9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "precneqq"

    const/16 v1, 0x2ab5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "precnsim"

    const/16 v1, 0x22e8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "precsim"

    const/16 v1, 0x227e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prime"

    const/16 v1, 0x2032

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Prime"

    const/16 v1, 0x2033

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "primes"

    const/16 v1, 0x2119

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prnap"

    const/16 v1, 0x2ab9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prnE"

    const/16 v1, 0x2ab5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prnsim"

    const/16 v1, 0x22e8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prod"

    const/16 v1, 0x220f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Product"

    const/16 v1, 0x220f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "profalar"

    const/16 v1, 0x232e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "profline"

    const/16 v1, 0x2312

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "profsurf"

    const/16 v1, 0x2313

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prop"

    const/16 v1, 0x221d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Proportion"

    const/16 v1, 0x2237

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Proportional"

    const/16 v1, 0x221d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "propto"

    const/16 v1, 0x221d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prsim"

    const/16 v1, 0x227e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "prurel"

    const/16 v1, 0x22b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "pscr"

    const v1, 0x1d4c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Pscr"

    const v1, 0x1d4ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "psgr"

    const/16 v1, 0x3c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "PSgr"

    const/16 v1, 0x3a8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "psi"

    const/16 v1, 0x3c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Psi"

    const/16 v1, 0x3a8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "puncsp"

    const/16 v1, 0x2008

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "qfr"

    const v1, 0x1d52e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Qfr"

    const v1, 0x1d514

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "qint"

    const/16 v1, 0x2a0c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "qopf"

    const v1, 0x1d562

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Qopf"

    const/16 v1, 0x211a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "qprime"

    const/16 v1, 0x2057

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "qscr"

    const v1, 0x1d4c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Qscr"

    const v1, 0x1d4ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "quaternions"

    const/16 v1, 0x210d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "quatint"

    const/16 v1, 0x2a16

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "quest"

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "questeq"

    const/16 v1, 0x225f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "quot"

    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rAarr"

    const/16 v1, 0x21db

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "race"

    const/16 v1, 0x29da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "racute"

    const/16 v1, 0x155

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Racute"

    const/16 v1, 0x154

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "radic"

    const/16 v1, 0x221a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "raemptyv"

    const/16 v1, 0x29b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rang"

    const/16 v1, 0x232a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rang"

    const/16 v1, 0x27eb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rangd"

    const/16 v1, 0x2992

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "range"

    const/16 v1, 0x29a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rangle"

    const/16 v1, 0x232a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "raquo"

    const/16 v1, 0xbb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarr"

    const/16 v1, 0x2192

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rArr"

    const/16 v1, 0x21d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rarr"

    const/16 v1, 0x21a0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrap"

    const/16 v1, 0x2975

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrb"

    const/16 v1, 0x21e5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrbfs"

    const/16 v1, 0x2920

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrc"

    const/16 v1, 0x2933

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrfs"

    const/16 v1, 0x291e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrhk"

    const/16 v1, 0x21aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrlp"

    const/16 v1, 0x21ac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrpl"

    const/16 v1, 0x2945

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrsim"

    const/16 v1, 0x2974

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrtl"

    const/16 v1, 0x21a3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rarrtl"

    const/16 v1, 0x2916

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rarrw"

    const/16 v1, 0x219d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ratail"

    const/16 v1, 0x291a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rAtail"

    const/16 v1, 0x291c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ratio"

    const/16 v1, 0x2236

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rationals"

    const/16 v1, 0x211a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbarr"

    const/16 v1, 0x290d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rBarr"

    const/16 v1, 0x290f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RBarr"

    const/16 v1, 0x2910

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbbrk"

    const/16 v1, 0x2998

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbrace"

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbrack"

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbrke"

    const/16 v1, 0x298c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbrksld"

    const/16 v1, 0x298e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rbrkslu"

    const/16 v1, 0x2990

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rcaron"

    const/16 v1, 0x159

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rcaron"

    const/16 v1, 0x158

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rcedil"

    const/16 v1, 0x157

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rcedil"

    const/16 v1, 0x156

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rceil"

    const/16 v1, 0x2309

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rcub"

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rcy"

    const/16 v1, 0x440

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rcy"

    const/16 v1, 0x420

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rdca"

    const/16 v1, 0x2937

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rdldhar"

    const/16 v1, 0x2969

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rdquo"

    const/16 v1, 0x201d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rdquor"

    const/16 v1, 0x201d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rdsh"

    const/16 v1, 0x21b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Re"

    const/16 v1, 0x211c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "real"

    const/16 v1, 0x211c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "realine"

    const/16 v1, 0x211b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "realpart"

    const/16 v1, 0x211c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "reals"

    const/16 v1, 0x211d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rect"

    const/16 v1, 0x25ad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "reg"

    const/16 v1, 0xae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ReverseElement"

    const/16 v1, 0x220b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ReverseEquilibrium"

    const/16 v1, 0x21cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ReverseUpEquilibrium"

    const/16 v1, 0x296f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rfisht"

    const/16 v1, 0x297d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rfloor"

    const/16 v1, 0x230b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rfr"

    const v1, 0x1d52f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rfr"

    const/16 v1, 0x211c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rgr"

    const/16 v1, 0x3c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rgr"

    const/16 v1, 0x3a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rHar"

    const/16 v1, 0x2964

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rhard"

    const/16 v1, 0x21c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rharu"

    const/16 v1, 0x21c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rharul"

    const/16 v1, 0x296c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rho"

    const/16 v1, 0x3c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rho"

    const/16 v1, 0x3a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rhov"

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightAngleBracket"

    const/16 v1, 0x232a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightarrow"

    const/16 v1, 0x2192

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rightarrow"

    const/16 v1, 0x21d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightArrowBar"

    const/16 v1, 0x21e5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightArrowLeftArrow"

    const/16 v1, 0x21c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightarrowtail"

    const/16 v1, 0x21a3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightCeiling"

    const/16 v1, 0x2309

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightDoubleBracket"

    const/16 v1, 0x27e7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightDownTeeVector"

    const/16 v1, 0x295d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightDownVector"

    const/16 v1, 0x21c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightDownVectorBar"

    const/16 v1, 0x2955

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightFloor"

    const/16 v1, 0x230b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightharpoondown"

    const/16 v1, 0x21c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightharpoonup"

    const/16 v1, 0x21c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightleftarrows"

    const/16 v1, 0x21c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightleftharpoons"

    const/16 v1, 0x21cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightrightarrows"

    const/16 v1, 0x21c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightsquigarrow"

    const/16 v1, 0x219d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightTee"

    const/16 v1, 0x22a2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightTeeArrow"

    const/16 v1, 0x21a6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightTeeVector"

    const/16 v1, 0x295b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rightthreetimes"

    const/16 v1, 0x22cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightTriangle"

    const/16 v1, 0x22b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightTriangleBar"

    const/16 v1, 0x29d0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightTriangleEqual"

    const/16 v1, 0x22b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightUpDownVector"

    const/16 v1, 0x294f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightUpTeeVector"

    const/16 v1, 0x295c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightUpVector"

    const/16 v1, 0x21be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightUpVectorBar"

    const/16 v1, 0x2954

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightVector"

    const/16 v1, 0x21c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RightVectorBar"

    const/16 v1, 0x2953

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ring"

    const/16 v1, 0x2da

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "risingdotseq"

    const/16 v1, 0x2253

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rlarr"

    const/16 v1, 0x21c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rlhar"

    const/16 v1, 0x21cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rlm"

    const/16 v1, 0x200f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rmoust"

    const/16 v1, 0x23b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rmoustache"

    const/16 v1, 0x23b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rnmid"

    const/16 v1, 0x2aee

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "roang"

    const/16 v1, 0x27ed

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "roarr"

    const/16 v1, 0x21fe

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "robrk"

    const/16 v1, 0x27e7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ropar"

    const/16 v1, 0x2986

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ropf"

    const v1, 0x1d563

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ropf"

    const/16 v1, 0x211d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "roplus"

    const/16 v1, 0x2a2e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rotimes"

    const/16 v1, 0x2a35

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RoundImplies"

    const/16 v1, 0x2970

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rpar"

    const/16 v1, 0x29

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rpargt"

    const/16 v1, 0x2994

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rppolint"

    const/16 v1, 0x2a12

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rrarr"

    const/16 v1, 0x21c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rrightarrow"

    const/16 v1, 0x21db

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rsaquo"

    const/16 v1, 0x203a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rscr"

    const v1, 0x1d4c7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Rscr"

    const/16 v1, 0x211b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rsh"

    const/16 v1, 0x21b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rsqb"

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rsquo"

    const/16 v1, 0x2019

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rsquor"

    const/16 v1, 0x2019

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rthree"

    const/16 v1, 0x22cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rtimes"

    const/16 v1, 0x22ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rtri"

    const/16 v1, 0x25b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rtrie"

    const/16 v1, 0x22b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rtrif"

    const/16 v1, 0x25b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rtriltri"

    const/16 v1, 0x29ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "RuleDelayed"

    const/16 v1, 0x29f4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ruluhar"

    const/16 v1, 0x2968

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "rx"

    const/16 v1, 0x211e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sacute"

    const/16 v1, 0x15b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sacute"

    const/16 v1, 0x15a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sbquo"

    const/16 v1, 0x201a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sc"

    const/16 v1, 0x227b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sc"

    const/16 v1, 0x2abc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scap"

    const/16 v1, 0x2ab8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scaron"

    const/16 v1, 0x161

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Scaron"

    const/16 v1, 0x160

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sccue"

    const/16 v1, 0x227d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sce"

    const/16 v1, 0x2ab0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scE"

    const/16 v1, 0x2ab4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scedil"

    const/16 v1, 0x15f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Scedil"

    const/16 v1, 0x15e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scirc"

    const/16 v1, 0x15d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Scirc"

    const/16 v1, 0x15c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scnap"

    const/16 v1, 0x2aba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scnE"

    const/16 v1, 0x2ab6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scnsim"

    const/16 v1, 0x22e9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scpolint"

    const/16 v1, 0x2a13

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scsim"

    const/16 v1, 0x227f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "scy"

    const/16 v1, 0x441

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Scy"

    const/16 v1, 0x421

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sdot"

    const/16 v1, 0x22c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sdotb"

    const/16 v1, 0x22a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sdote"

    const/16 v1, 0x2a66

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "searhk"

    const/16 v1, 0x2925

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "searr"

    const/16 v1, 0x2198

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "seArr"

    const/16 v1, 0x21d8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "searrow"

    const/16 v1, 0x2198

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sect"

    const/16 v1, 0xa7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "semi"

    const/16 v1, 0x3b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "seswar"

    const/16 v1, 0x2929

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "setminus"

    const/16 v1, 0x2216

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "setmn"

    const/16 v1, 0x2216

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sext"

    const/16 v1, 0x2736

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sfgr"

    const/16 v1, 0x3c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sfr"

    const v1, 0x1d530

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sfr"

    const v1, 0x1d516

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sfrown"

    const/16 v1, 0x2322

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sgr"

    const/16 v1, 0x3c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sgr"

    const/16 v1, 0x3a3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sharp"

    const/16 v1, 0x266f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "shchcy"

    const/16 v1, 0x449

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SHCHcy"

    const/16 v1, 0x429

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "shcy"

    const/16 v1, 0x448

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SHcy"

    const/16 v1, 0x428

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ShortDownArrow"

    const/16 v1, 0x2193

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ShortLeftArrow"

    const/16 v1, 0x2190

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "shortmid"

    const/16 v1, 0x2223

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "shortparallel"

    const/16 v1, 0x2225

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ShortRightArrow"

    const/16 v1, 0x2192

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ShortUpArrow"

    const/16 v1, 0x2191

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "shy"

    const/16 v1, 0xad

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sigma"

    const/16 v1, 0x3c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sigma"

    const/16 v1, 0x3a3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sigmaf"

    const/16 v1, 0x3c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sigmav"

    const/16 v1, 0x3c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sim"

    const/16 v1, 0x223c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simdot"

    const/16 v1, 0x2a6a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sime"

    const/16 v1, 0x2243

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simeq"

    const/16 v1, 0x2243

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simg"

    const/16 v1, 0x2a9e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simgE"

    const/16 v1, 0x2aa0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "siml"

    const/16 v1, 0x2a9d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simlE"

    const/16 v1, 0x2a9f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simne"

    const/16 v1, 0x2246

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simplus"

    const/16 v1, 0x2a24

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "simrarr"

    const/16 v1, 0x2972

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "slarr"

    const/16 v1, 0x2190

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SmallCircle"

    const/16 v1, 0x2218

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smallsetminus"

    const/16 v1, 0x2216

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smashp"

    const/16 v1, 0x2a33

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smeparsl"

    const/16 v1, 0x29e4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smid"

    const/16 v1, 0x2223

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smile"

    const/16 v1, 0x2323

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smt"

    const/16 v1, 0x2aaa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "smte"

    const/16 v1, 0x2aac

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "softcy"

    const/16 v1, 0x44c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SOFTcy"

    const/16 v1, 0x42c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sol"

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "solb"

    const/16 v1, 0x29c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "solbar"

    const/16 v1, 0x233f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sopf"

    const v1, 0x1d564

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sopf"

    const v1, 0x1d54a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "spades"

    const/16 v1, 0x2660

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "spadesuit"

    const/16 v1, 0x2660

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "spar"

    const/16 v1, 0x2225

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqcap"

    const/16 v1, 0x2293

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqcup"

    const/16 v1, 0x2294

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sqrt"

    const/16 v1, 0x221a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsub"

    const/16 v1, 0x228f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsube"

    const/16 v1, 0x2291

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsubset"

    const/16 v1, 0x228f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsubseteq"

    const/16 v1, 0x2291

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsup"

    const/16 v1, 0x2290

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsupe"

    const/16 v1, 0x2292

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsupset"

    const/16 v1, 0x2290

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sqsupseteq"

    const/16 v1, 0x2292

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "squ"

    const/16 v1, 0x25a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "square"

    const/16 v1, 0x25a1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SquareIntersection"

    const/16 v1, 0x2293

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SquareSubset"

    const/16 v1, 0x228f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SquareSubsetEqual"

    const/16 v1, 0x2291

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SquareSuperset"

    const/16 v1, 0x2290

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SquareSupersetEqual"

    const/16 v1, 0x2292

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SquareUnion"

    const/16 v1, 0x2294

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "squarf"

    const/16 v1, 0x25aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "squf"

    const/16 v1, 0x25aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "srarr"

    const/16 v1, 0x2192

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sscr"

    const v1, 0x1d4c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sscr"

    const v1, 0x1d4ae

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ssetmn"

    const/16 v1, 0x2216

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ssmile"

    const/16 v1, 0x2323

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sstarf"

    const/16 v1, 0x22c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "star"

    const/16 v1, 0x2606

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Star"

    const/16 v1, 0x22c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "starf"

    const/16 v1, 0x2605

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "straightepsilon"

    const/16 v1, 0x3f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "straightphi"

    const/16 v1, 0x3d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "strns"

    const/16 v1, 0xaf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sub"

    const/16 v1, 0x2282

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sub"

    const/16 v1, 0x22d0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subdot"

    const/16 v1, 0x2abd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sube"

    const/16 v1, 0x2286

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subE"

    const/16 v1, 0x2ac5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subedot"

    const/16 v1, 0x2ac3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "submult"

    const/16 v1, 0x2ac1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subne"

    const/16 v1, 0x228a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subnE"

    const/16 v1, 0x2acb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subplus"

    const/16 v1, 0x2abf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subrarr"

    const/16 v1, 0x2979

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subset"

    const/16 v1, 0x2282

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Subset"

    const/16 v1, 0x22d0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subseteq"

    const/16 v1, 0x2286

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subseteqq"

    const/16 v1, 0x2ac5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SubsetEqual"

    const/16 v1, 0x2286

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subsetneq"

    const/16 v1, 0x228a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subsetneqq"

    const/16 v1, 0x2acb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subsim"

    const/16 v1, 0x2ac7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subsub"

    const/16 v1, 0x2ad5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "subsup"

    const/16 v1, 0x2ad3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succ"

    const/16 v1, 0x227b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succapprox"

    const/16 v1, 0x2ab8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succcurlyeq"

    const/16 v1, 0x227d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Succeeds"

    const/16 v1, 0x227b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SucceedsEqual"

    const/16 v1, 0x2ab0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SucceedsSlantEqual"

    const/16 v1, 0x227d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SucceedsTilde"

    const/16 v1, 0x227f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succeq"

    const/16 v1, 0x2ab0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succnapprox"

    const/16 v1, 0x2aba

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succneqq"

    const/16 v1, 0x2ab6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succnsim"

    const/16 v1, 0x22e9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "succsim"

    const/16 v1, 0x227f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SuchThat"

    const/16 v1, 0x220b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sum"

    const/16 v1, 0x2211

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sung"

    const/16 v1, 0x266a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sup"

    const/16 v1, 0x2283

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Sup"

    const/16 v1, 0x22d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sup1"

    const/16 v1, 0xb9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sup2"

    const/16 v1, 0xb2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "sup3"

    const/16 v1, 0xb3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supdot"

    const/16 v1, 0x2abe

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supdsub"

    const/16 v1, 0x2ad8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supe"

    const/16 v1, 0x2287

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supE"

    const/16 v1, 0x2ac6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supedot"

    const/16 v1, 0x2ac4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Superset"

    const/16 v1, 0x2283

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "SupersetEqual"

    const/16 v1, 0x2287

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "suphsub"

    const/16 v1, 0x2ad7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "suplarr"

    const/16 v1, 0x297b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supmult"

    const/16 v1, 0x2ac2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supne"

    const/16 v1, 0x228b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supnE"

    const/16 v1, 0x2acc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supplus"

    const/16 v1, 0x2ac0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supset"

    const/16 v1, 0x2283

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Supset"

    const/16 v1, 0x22d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supseteq"

    const/16 v1, 0x2287

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supseteqq"

    const/16 v1, 0x2ac6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supsetneq"

    const/16 v1, 0x228b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supsetneqq"

    const/16 v1, 0x2acc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supsim"

    const/16 v1, 0x2ac8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supsub"

    const/16 v1, 0x2ad4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "supsup"

    const/16 v1, 0x2ad6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "swarhk"

    const/16 v1, 0x2926

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "swarr"

    const/16 v1, 0x2199

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "swArr"

    const/16 v1, 0x21d9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "swarrow"

    const/16 v1, 0x2199

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "swnwar"

    const/16 v1, 0x292a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "szlig"

    const/16 v1, 0xdf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tab"

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "target"

    const/16 v1, 0x2316

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tau"

    const/16 v1, 0x3c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tau"

    const/16 v1, 0x3a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tbrk"

    const/16 v1, 0x23b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tcaron"

    const/16 v1, 0x165

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tcaron"

    const/16 v1, 0x164

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tcedil"

    const/16 v1, 0x163

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tcedil"

    const/16 v1, 0x162

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tcy"

    const/16 v1, 0x442

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tcy"

    const/16 v1, 0x422

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "telrec"

    const/16 v1, 0x2315

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tfr"

    const v1, 0x1d531

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tfr"

    const v1, 0x1d517

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tgr"

    const/16 v1, 0x3c4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tgr"

    const/16 v1, 0x3a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "there4"

    const/16 v1, 0x2234

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "therefore"

    const/16 v1, 0x2234

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "theta"

    const/16 v1, 0x3b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Theta"

    const/16 v1, 0x398

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thetasym"

    const/16 v1, 0x3d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thetav"

    const/16 v1, 0x3d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thgr"

    const/16 v1, 0x3b8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "THgr"

    const/16 v1, 0x398

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thickapprox"

    const/16 v1, 0x2248

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thicksim"

    const/16 v1, 0x223c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thinsp"

    const/16 v1, 0x2009

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ThinSpace"

    const/16 v1, 0x2009

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thkap"

    const/16 v1, 0x2248

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thksim"

    const/16 v1, 0x223c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "thorn"

    const/16 v1, 0xfe

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "THORN"

    const/16 v1, 0xde

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tilde"

    const/16 v1, 0x2dc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tilde"

    const/16 v1, 0x223c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "TildeEqual"

    const/16 v1, 0x2243

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "TildeFullEqual"

    const/16 v1, 0x2245

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "TildeTilde"

    const/16 v1, 0x2248

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "times"

    const/16 v1, 0xd7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "timesb"

    const/16 v1, 0x22a0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "timesbar"

    const/16 v1, 0x2a31

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "timesd"

    const/16 v1, 0x2a30

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tint"

    const/16 v1, 0x222d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "toea"

    const/16 v1, 0x2928

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "top"

    const/16 v1, 0x22a4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "topbot"

    const/16 v1, 0x2336

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "topcir"

    const/16 v1, 0x2af1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "topf"

    const v1, 0x1d565

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Topf"

    const v1, 0x1d54b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "topfork"

    const/16 v1, 0x2ada

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tosa"

    const/16 v1, 0x2929

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tprime"

    const/16 v1, 0x2034

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "trade"

    const/16 v1, 0x2122

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triangle"

    const/16 v1, 0x25b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triangledown"

    const/16 v1, 0x25bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triangleleft"

    const/16 v1, 0x25c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "trianglelefteq"

    const/16 v1, 0x22b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triangleq"

    const/16 v1, 0x225c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triangleright"

    const/16 v1, 0x25b9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "trianglerighteq"

    const/16 v1, 0x22b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tridot"

    const/16 v1, 0x25ec

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "trie"

    const/16 v1, 0x225c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triminus"

    const/16 v1, 0x2a3a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "triplus"

    const/16 v1, 0x2a39

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "trisb"

    const/16 v1, 0x29cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tritime"

    const/16 v1, 0x2a3b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "trpezium"

    const/16 v1, 0x23e2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tscr"

    const v1, 0x1d4c9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tscr"

    const v1, 0x1d4af

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tscy"

    const/16 v1, 0x446

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "TScy"

    const/16 v1, 0x426

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tshcy"

    const/16 v1, 0x45b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "TSHcy"

    const/16 v1, 0x40b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "tstrok"

    const/16 v1, 0x167

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Tstrok"

    const/16 v1, 0x166

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "twixt"

    const/16 v1, 0x226c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "twoheadleftarrow"

    const/16 v1, 0x219e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "twoheadrightarrow"

    const/16 v1, 0x21a0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uacgr"

    const/16 v1, 0x3cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uacgr"

    const/16 v1, 0x38e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uacute"

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uacute"

    const/16 v1, 0xda

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uarr"

    const/16 v1, 0x2191

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uArr"

    const/16 v1, 0x21d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uarr"

    const/16 v1, 0x219f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uarrocir"

    const/16 v1, 0x2949

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ubrcy"

    const/16 v1, 0x45e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ubrcy"

    const/16 v1, 0x40e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ubreve"

    const/16 v1, 0x16d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ubreve"

    const/16 v1, 0x16c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ucirc"

    const/16 v1, 0xfb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ucirc"

    const/16 v1, 0xdb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ucy"

    const/16 v1, 0x443

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ucy"

    const/16 v1, 0x423

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "udarr"

    const/16 v1, 0x21c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "udblac"

    const/16 v1, 0x171

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Udblac"

    const/16 v1, 0x170

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "udhar"

    const/16 v1, 0x296e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "udiagr"

    const/16 v1, 0x3b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "udigr"

    const/16 v1, 0x3cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Udigr"

    const/16 v1, 0x3ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ufisht"

    const/16 v1, 0x297e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ufr"

    const v1, 0x1d532

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ufr"

    const v1, 0x1d518

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ugr"

    const/16 v1, 0x3c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ugr"

    const/16 v1, 0x3a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ugrave"

    const/16 v1, 0xf9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ugrave"

    const/16 v1, 0xd9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uHar"

    const/16 v1, 0x2963

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uharl"

    const/16 v1, 0x21bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uharr"

    const/16 v1, 0x21be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uhblk"

    const/16 v1, 0x2580

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ulcorn"

    const/16 v1, 0x231c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ulcorner"

    const/16 v1, 0x231c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ulcrop"

    const/16 v1, 0x230f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ultri"

    const/16 v1, 0x25f8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "umacr"

    const/16 v1, 0x16b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Umacr"

    const/16 v1, 0x16a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uml"

    const/16 v1, 0xa8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UnderBrace"

    const v1, 0xfe38

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UnderBracket"

    const/16 v1, 0x23b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UnderParenthesis"

    const v1, 0xfe36

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Union"

    const/16 v1, 0x22c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UnionPlus"

    const/16 v1, 0x228e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uogon"

    const/16 v1, 0x173

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uogon"

    const/16 v1, 0x172

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uopf"

    const v1, 0x1d566

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uopf"

    const v1, 0x1d54c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uparrow"

    const/16 v1, 0x2191

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uparrow"

    const/16 v1, 0x21d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpArrowBar"

    const/16 v1, 0x2912

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpArrowDownArrow"

    const/16 v1, 0x21c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "updownarrow"

    const/16 v1, 0x2195

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Updownarrow"

    const/16 v1, 0x21d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpEquilibrium"

    const/16 v1, 0x296e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "upharpoonleft"

    const/16 v1, 0x21bf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "upharpoonright"

    const/16 v1, 0x21be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uplus"

    const/16 v1, 0x228e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpperLeftArrow"

    const/16 v1, 0x2196

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpperRightArrow"

    const/16 v1, 0x2197

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "upsi"

    const/16 v1, 0x3c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Upsi"

    const/16 v1, 0x3d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "upsih"

    const/16 v1, 0x3d2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "upsilon"

    const/16 v1, 0x3c5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Upsilon"

    const/16 v1, 0x3a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpTee"

    const/16 v1, 0x22a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "UpTeeArrow"

    const/16 v1, 0x21a5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "upuparrows"

    const/16 v1, 0x21c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "urcorn"

    const/16 v1, 0x231d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "urcorner"

    const/16 v1, 0x231d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "urcrop"

    const/16 v1, 0x230e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uring"

    const/16 v1, 0x16f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uring"

    const/16 v1, 0x16e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "urtri"

    const/16 v1, 0x25f9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uscr"

    const v1, 0x1d4ca

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uscr"

    const v1, 0x1d4b0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "utdot"

    const/16 v1, 0x22f0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "utilde"

    const/16 v1, 0x169

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Utilde"

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "utri"

    const/16 v1, 0x25b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "utrif"

    const/16 v1, 0x25b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uuarr"

    const/16 v1, 0x21c8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uuml"

    const/16 v1, 0xfc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Uuml"

    const/16 v1, 0xdc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "uwangle"

    const/16 v1, 0x29a7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vangrt"

    const/16 v1, 0x299c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varepsilon"

    const/16 v1, 0x3b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varkappa"

    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varnothing"

    const/16 v1, 0x2205

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varphi"

    const/16 v1, 0x3c6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varpi"

    const/16 v1, 0x3d6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varpropto"

    const/16 v1, 0x221d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varr"

    const/16 v1, 0x2195

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vArr"

    const/16 v1, 0x21d5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varrho"

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "varsigma"

    const/16 v1, 0x3c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vartheta"

    const/16 v1, 0x3d1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vartriangleleft"

    const/16 v1, 0x22b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vartriangleright"

    const/16 v1, 0x22b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vBar"

    const/16 v1, 0x2ae8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vbar"

    const/16 v1, 0x2aeb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vBarv"

    const/16 v1, 0x2ae9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vcy"

    const/16 v1, 0x432

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vcy"

    const/16 v1, 0x412

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vdash"

    const/16 v1, 0x22a2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vDash"

    const/16 v1, 0x22a8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vdash"

    const/16 v1, 0x22a9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "VDash"

    const/16 v1, 0x22ab

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vdashl"

    const/16 v1, 0x2ae6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vee"

    const/16 v1, 0x2228

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vee"

    const/16 v1, 0x22c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "veebar"

    const/16 v1, 0x22bb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "veeeq"

    const/16 v1, 0x225a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vellip"

    const/16 v1, 0x22ee

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "verbar"

    const/16 v1, 0x7c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Verbar"

    const/16 v1, 0x2016

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vert"

    const/16 v1, 0x7c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vert"

    const/16 v1, 0x2016

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "VerticalBar"

    const/16 v1, 0x2223

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "VerticalLine"

    const/16 v1, 0x7c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "VerticalSeparator"

    const/16 v1, 0x2758

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "VerticalTilde"

    const/16 v1, 0x2240

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "VeryThinSpace"

    const/16 v1, 0x200a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vfr"

    const v1, 0x1d533

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vfr"

    const v1, 0x1d519

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vltri"

    const/16 v1, 0x22b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vopf"

    const v1, 0x1d567

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vopf"

    const v1, 0x1d54d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vprop"

    const/16 v1, 0x221d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vrtri"

    const/16 v1, 0x22b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vscr"

    const v1, 0x1d4cb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vscr"

    const v1, 0x1d4b1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Vvdash"

    const/16 v1, 0x22aa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "vzigzag"

    const/16 v1, 0x299a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wcirc"

    const/16 v1, 0x175

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Wcirc"

    const/16 v1, 0x174

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wedbar"

    const/16 v1, 0x2a5f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wedge"

    const/16 v1, 0x2227

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Wedge"

    const/16 v1, 0x22c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wedgeq"

    const/16 v1, 0x2259

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "weierp"

    const/16 v1, 0x2118

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wfr"

    const v1, 0x1d534

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Wfr"

    const v1, 0x1d51a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wopf"

    const v1, 0x1d568

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Wopf"

    const v1, 0x1d54e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wp"

    const/16 v1, 0x2118

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wr"

    const/16 v1, 0x2240

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wreath"

    const/16 v1, 0x2240

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "wscr"

    const v1, 0x1d4cc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Wscr"

    const v1, 0x1d4b2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xcap"

    const/16 v1, 0x22c2

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xcirc"

    const/16 v1, 0x25ef

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xcup"

    const/16 v1, 0x22c3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xdtri"

    const/16 v1, 0x25bd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xfr"

    const v1, 0x1d535

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Xfr"

    const v1, 0x1d51b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xgr"

    const/16 v1, 0x3be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Xgr"

    const/16 v1, 0x39e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xharr"

    const/16 v1, 0x27f7

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xhArr"

    const/16 v1, 0x27fa

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xi"

    const/16 v1, 0x3be

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Xi"

    const/16 v1, 0x39e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xlarr"

    const/16 v1, 0x27f5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xlArr"

    const/16 v1, 0x27f8

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xmap"

    const/16 v1, 0x27fc

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xnis"

    const/16 v1, 0x22fb

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xodot"

    const/16 v1, 0x2a00

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xopf"

    const v1, 0x1d569

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Xopf"

    const v1, 0x1d54f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xoplus"

    const/16 v1, 0x2a01

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xotime"

    const/16 v1, 0x2a02

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xrarr"

    const/16 v1, 0x27f6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xrArr"

    const/16 v1, 0x27f9

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xscr"

    const v1, 0x1d4cd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Xscr"

    const v1, 0x1d4b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xsqcup"

    const/16 v1, 0x2a06

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xuplus"

    const/16 v1, 0x2a04

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xutri"

    const/16 v1, 0x25b3

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xvee"

    const/16 v1, 0x22c1

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "xwedge"

    const/16 v1, 0x22c0

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yacute"

    const/16 v1, 0xfd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Yacute"

    const/16 v1, 0xdd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yacy"

    const/16 v1, 0x44f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "YAcy"

    const/16 v1, 0x42f

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ycirc"

    const/16 v1, 0x177

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ycirc"

    const/16 v1, 0x176

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ycy"

    const/16 v1, 0x44b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Ycy"

    const/16 v1, 0x42b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yen"

    const/16 v1, 0xa5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yfr"

    const v1, 0x1d536

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Yfr"

    const v1, 0x1d51c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yicy"

    const/16 v1, 0x457

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "YIcy"

    const/16 v1, 0x407

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yopf"

    const v1, 0x1d56a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Yopf"

    const v1, 0x1d550

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yscr"

    const v1, 0x1d4ce

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Yscr"

    const v1, 0x1d4b4

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yucy"

    const/16 v1, 0x44e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "YUcy"

    const/16 v1, 0x42e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "yuml"

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Yuml"

    const/16 v1, 0x178

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zacute"

    const/16 v1, 0x17a

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zacute"

    const/16 v1, 0x179

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zcaron"

    const/16 v1, 0x17e

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zcaron"

    const/16 v1, 0x17d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zcy"

    const/16 v1, 0x437

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zcy"

    const/16 v1, 0x417

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zdot"

    const/16 v1, 0x17c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zdot"

    const/16 v1, 0x17b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zeetrf"

    const/16 v1, 0x2128

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ZeroWidthSpace"

    const/16 v1, 0x200b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zeta"

    const/16 v1, 0x3b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zeta"

    const/16 v1, 0x396

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zfr"

    const v1, 0x1d537

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zfr"

    const/16 v1, 0x2128

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zgr"

    const/16 v1, 0x3b6

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zgr"

    const/16 v1, 0x396

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zhcy"

    const/16 v1, 0x436

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "ZHcy"

    const/16 v1, 0x416

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zigrarr"

    const/16 v1, 0x21dd

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zopf"

    const v1, 0x1d56b

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zopf"

    const/16 v1, 0x2124

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zscr"

    const v1, 0x1d4cf

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "Zscr"

    const v1, 0x1d4b5

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zwj"

    const/16 v1, 0x200d

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    const-string v0, "zwnj"

    const/16 v1, 0x200c

    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    return-void
.end method
