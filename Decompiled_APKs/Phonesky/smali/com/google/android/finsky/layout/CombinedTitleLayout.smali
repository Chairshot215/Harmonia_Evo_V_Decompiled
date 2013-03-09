.class public Lcom/google/android/finsky/layout/CombinedTitleLayout;
.super Landroid/widget/LinearLayout;
.source "CombinedTitleLayout.java"


# instance fields
.field private mTipperSticker:Landroid/view/View;

.field private mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CombinedTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTitle:Landroid/view/View;

    .line 36
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CombinedTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    .line 37
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 43
    iget-object v4, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 49
    .local v2, stickerMeasuredWidth:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 50
    iget-object v4, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 52
    .local v0, availableWidth:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 53
    .local v1, gap:I
    sub-int v4, v0, v1

    iget-object v5, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTipperSticker:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 55
    .local v3, titleWidth:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/CombinedTitleLayout;->mTitle:Landroid/view/View;

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method
