.class public Lcom/google/android/finsky/layout/PurchaseSummaryLayout;
.super Landroid/widget/LinearLayout;
.source "PurchaseSummaryLayout.java"


# instance fields
.field private mRightColumn:Landroid/view/View;

.field private mThumbnail:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->mThumbnail:Landroid/view/View;

    .line 35
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->mRightColumn:Landroid/view/View;

    .line 36
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 43
    iget-object v1, p0, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->mThumbnail:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 44
    .local v0, thumbnailMeasuredHeight:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->mRightColumn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->mRightColumn:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/PurchaseSummaryLayout;->mRightColumn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 50
    :cond_0
    return-void
.end method
