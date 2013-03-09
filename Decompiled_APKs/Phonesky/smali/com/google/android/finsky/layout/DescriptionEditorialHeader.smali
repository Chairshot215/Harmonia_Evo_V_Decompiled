.class public Lcom/google/android/finsky/layout/DescriptionEditorialHeader;
.super Landroid/widget/LinearLayout;
.source "DescriptionEditorialHeader.java"


# instance fields
.field private mHeader:Landroid/widget/TextView;

.field private mSubheader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->mHeader:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->mSubheader:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method public showEpisodeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "subTitle"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 34
    iget-object v3, p0, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->mHeader:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->mSubheader:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->mSubheader:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v1, v2

    .line 37
    goto :goto_1
.end method
