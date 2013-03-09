.class public final Lcom/google/android/common/base/CharEscapers;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;,
        Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;,
        Lcom/google/android/common/base/CharEscapers$FastCharEscaper;
    }
.end annotation


# static fields
.field private static final ASCII_HTML_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final CPP_URI_ESCAPER:Lcom/google/android/common/base/Escaper;

.field private static final HEX_DIGITS:[C

.field private static final JAVASCRIPT_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final JAVA_CHAR_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final JAVA_STRING_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final JAVA_STRING_UNICODE_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final NULL_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final PYTHON_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final URI_ESCAPER:Lcom/google/android/common/base/Escaper;

.field private static final URI_ESCAPER_NO_PLUS:Lcom/google/android/common/base/Escaper;

.field private static final URI_PATH_ESCAPER:Lcom/google/android/common/base/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER:Lcom/google/android/common/base/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER_WITH_PLUS:Lcom/google/android/common/base/Escaper;

.field private static final XML_CONTENT_ESCAPER:Lcom/google/android/common/base/CharEscaper;

.field private static final XML_ESCAPER:Lcom/google/android/common/base/CharEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x27

    const/16 v4, 0x22

    .line 27
    new-instance v0, Lcom/google/android/common/base/CharEscapers$1;

    invoke-direct {v0}, Lcom/google/android/common/base/CharEscapers$1;-><init>()V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->NULL_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 93
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->newBasicXmlEscapeBuilder()Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&quot;"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&apos;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->XML_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 120
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->newBasicXmlEscapeBuilder()Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->XML_CONTENT_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 415
    new-instance v0, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v0}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const-string v1, "&quot;"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&#39;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->ASCII_HTML_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 624
    new-instance v0, Lcom/google/android/common/base/PercentEscaper;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->URI_ESCAPER:Lcom/google/android/common/base/Escaper;

    .line 627
    new-instance v0, Lcom/google/android/common/base/PercentEscaper;

    const-string v1, "-_.*"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->URI_ESCAPER_NO_PLUS:Lcom/google/android/common/base/Escaper;

    .line 630
    new-instance v0, Lcom/google/android/common/base/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$&,;="

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/android/common/base/Escaper;

    .line 633
    new-instance v0, Lcom/google/android/common/base/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/android/common/base/Escaper;

    .line 636
    new-instance v0, Lcom/google/android/common/base/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->URI_QUERY_STRING_ESCAPER_WITH_PLUS:Lcom/google/android/common/base/Escaper;

    .line 679
    new-instance v0, Lcom/google/android/common/base/PercentEscaper;

    const-string v1, "!()*-._~,/:"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->CPP_URI_ESCAPER:Lcom/google/android/common/base/Escaper;

    .line 701
    new-instance v0, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;

    new-instance v1, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v4, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;-><init>([[C)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->JAVA_STRING_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 731
    new-instance v0, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;

    new-instance v1, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\\'"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v4, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;-><init>([[C)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->JAVA_CHAR_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 757
    new-instance v0, Lcom/google/android/common/base/CharEscapers$2;

    invoke-direct {v0}, Lcom/google/android/common/base/CharEscapers$2;-><init>()V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->JAVA_STRING_UNICODE_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 792
    new-instance v0, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v0}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const-string v1, "\\n"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\r"

    invoke-virtual {v0, v8, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\t"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\\""

    invoke-virtual {v0, v4, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\\'"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->PYTHON_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 816
    new-instance v0, Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;

    new-instance v1, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const-string v2, "\\x27"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\x22"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c

    const-string v3, "\\x3c"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    const-string v3, "\\x3d"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    const-string v3, "\\x3e"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x26

    const-string v3, "\\x26"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;-><init>([[C)V

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->JAVASCRIPT_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    .line 1088
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/common/base/CharEscapers;->HEX_DIGITS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[C
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/common/base/CharEscapers;->HEX_DIGITS:[C

    return-object v0
.end method

.method public static asciiHtmlEscaper()Lcom/google/android/common/base/CharEscaper;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/google/android/common/base/CharEscapers;->ASCII_HTML_ESCAPER:Lcom/google/android/common/base/CharEscaper;

    return-object v0
.end method

.method private static newBasicXmlEscapeBuilder()Lcom/google/android/common/base/CharEscaperBuilder;
    .locals 3

    .prologue
    .line 833
    new-instance v0, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v0}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x1d

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscapes([CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
    .end array-data
.end method
