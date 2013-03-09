.class Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;
.super Lcom/google/android/common/html/parser/HtmlDocument$Text;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EscapedText"
.end annotation


# instance fields
.field private final htmlText:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "htmlText"
    .parameter "originalHtml"

    .prologue
    .line 454
    invoke-direct {p0, p2}, Lcom/google/android/common/html/parser/HtmlDocument$Text;-><init>(Ljava/lang/String;)V

    .line 455
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;->htmlText:Ljava/lang/String;

    .line 456
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;->htmlText:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;->text:Ljava/lang/String;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;->text:Ljava/lang/String;

    return-object v0
.end method
