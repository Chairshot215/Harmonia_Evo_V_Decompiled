.class public Lcom/google/android/gm/SnippetTextView;
.super Landroid/widget/TextView;
.source "SnippetTextView.java"


# instance fields
.field private mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/SnippetTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getTextRemainder(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .parameter "text"
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object p1, v2

    .line 69
    .end local p1
    :goto_0
    return-object p1

    .line 42
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/SnippetTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 43
    .local v4, savedText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/gm/SnippetTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    .line 44
    .local v3, savedEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/SnippetTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gm/SnippetTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gm/SnippetTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 49
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/SnippetTextView;->measure(II)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gm/SnippetTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 54
    :cond_2
    if-nez v0, :cond_3

    .line 56
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    const-string v7, "unable to generate text Layout"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 61
    .local v1, lineCount:I
    iget v5, p0, Lcom/google/android/gm/SnippetTextView;->mMaxLines:I

    if-gt v1, v5, :cond_4

    .line 62
    const/4 v2, 0x0

    .line 67
    .local v2, remainder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/gm/SnippetTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/google/android/gm/SnippetTextView;->setText(Ljava/lang/CharSequence;)V

    move-object p1, v2

    .line 69
    goto :goto_0

    .line 64
    .end local v2           #remainder:Ljava/lang/String;
    :cond_4
    iget v5, p0, Lcom/google/android/gm/SnippetTextView;->mMaxLines:I

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #remainder:Ljava/lang/String;
    goto :goto_1
.end method

.method public setMaxLines(I)V
    .locals 0
    .parameter "maxlines"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 33
    iput p1, p0, Lcom/google/android/gm/SnippetTextView;->mMaxLines:I

    .line 34
    return-void
.end method
