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
