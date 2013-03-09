.class public Lcom/htc/text/style/TextSpanUtil;
.super Ljava/lang/Object;
.source "TextSpanUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStyledText(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 7
    .parameter "str"
    .parameter "color"
    .parameter "size"
    .parameter "style"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 13
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .line 15
    .local v2, sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    const/4 v1, 0x0

    .line 16
    .local v1, colorSpan:Landroid/text/style/ForegroundColorSpan;
    const/4 v3, 0x0

    .line 18
    .local v3, styleSpan:Landroid/text/style/StyleSpan;
    if-eqz p1, :cond_0

    .line 19
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .end local v1           #colorSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 20
    .restart local v1       #colorSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    .end local v2           #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-direct {v2, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 24
    .restart local v2       #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 26
    :cond_1
    if-eqz p3, :cond_2

    .line 27
    new-instance v3, Landroid/text/style/StyleSpan;

    .end local v3           #styleSpan:Landroid/text/style/StyleSpan;
    invoke-direct {v3, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 28
    .restart local v3       #styleSpan:Landroid/text/style/StyleSpan;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 31
    :cond_2
    return-object v0
.end method
