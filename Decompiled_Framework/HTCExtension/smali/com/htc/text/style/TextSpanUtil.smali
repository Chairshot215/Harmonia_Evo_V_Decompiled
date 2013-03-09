.class public Lcom/htc/text/style/TextSpanUtil;
.super Ljava/lang/Object;
.source "TextSpanUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStyledText(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 7

    const/16 v6, 0x21

    const/4 v5, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-eqz p3, :cond_2

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v0
.end method
