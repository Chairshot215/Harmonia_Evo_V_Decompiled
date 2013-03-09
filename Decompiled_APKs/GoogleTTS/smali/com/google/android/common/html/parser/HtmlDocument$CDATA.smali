.class public Lcom/google/android/common/html/parser/HtmlDocument$CDATA;
.super Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CDATA"
.end annotation


# virtual methods
.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    invoke-super {p0}, Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
