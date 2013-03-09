.class Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;
.super Lcom/google/android/common/html/parser/HtmlDocument$Text;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnescapedText"
.end annotation


# instance fields
.field protected final text:Ljava/lang/String;


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;->text:Ljava/lang/String;

    return-object v0
.end method
