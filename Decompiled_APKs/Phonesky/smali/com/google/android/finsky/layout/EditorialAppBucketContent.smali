.class public Lcom/google/android/finsky/layout/EditorialAppBucketContent;
.super Lcom/google/android/finsky/layout/EditorialBucketContent;
.source "EditorialAppBucketContent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/EditorialAppBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/EditorialAppBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Lcom/google/android/finsky/layout/EditorialBucketContent;->onLayout(ZIIII)V

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->layout(IIII)V

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 26
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->onMeasure(II)V

    .line 29
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v4

    .line 30
    .local v4, devNameWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    .line 31
    .local v5, titleHeight:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 32
    .local v1, buyButtonWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 34
    .local v0, buyButtonHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 36
    .local v6, totalWidth:I
    add-int v7, v1, v4

    if-lt v7, v6, :cond_0

    if-ge v5, v0, :cond_0

    .line 37
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v2

    .line 38
    .local v2, devNameMeasuredHeight:I
    sub-int v3, v6, v1

    .line 39
    .local v3, devNameNewWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialAppBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->measure(II)V

    .line 42
    .end local v2           #devNameMeasuredHeight:I
    .end local v3           #devNameNewWidth:I
    :cond_0
    return-void
.end method
