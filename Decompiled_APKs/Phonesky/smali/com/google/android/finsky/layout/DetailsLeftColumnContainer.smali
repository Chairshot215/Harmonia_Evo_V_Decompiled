.class public Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;
.super Landroid/widget/LinearLayout;
.source "DetailsLeftColumnContainer.java"


# instance fields
.field private mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mItemDetails:Landroid/view/View;

.field private mSummary:Landroid/view/View;

.field private mSummaryStrip:Landroid/view/View;

.field private mTopBannerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 159
    .local v0, columnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eq v0, v1, :cond_0

    .line 160
    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public getSummaryBottom()I
    .locals 5

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViews()V

    .line 129
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->getScrollY()I

    move-result v2

    .line 130
    .local v2, viewportTop:I
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mItemDetails:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    .local v1, itemDetailsParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mItemDetails:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v3, v4

    .line 135
    .local v0, itemDetailsBottom:I
    iget v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mTopBannerHeight:I

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public getSummaryStripTop()I
    .locals 6

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViews()V

    .line 144
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->getScrollY()I

    move-result v3

    .line 145
    .local v3, viewportTop:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mItemDetails:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    .local v1, itemDetailsParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mItemDetails:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    .line 150
    .local v0, itemDetailsBottom:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummaryStrip:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .local v2, stripParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mTopBannerHeight:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    .line 49
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummaryStrip:Landroid/view/View;

    .line 50
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mItemDetails:Landroid/view/View;

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getPaddingLeft()I

    move-result v4

    .line 88
    .local v4, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getPaddingTop()I

    move-result v5

    .line 89
    .local v5, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 91
    .local v9, width:I
    move v8, v5

    .line 92
    .local v8, topY:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 93
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    if-ne v0, v10, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getSummaryBottom()I

    move-result v6

    .line 100
    .local v6, summaryBottom:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v6, v11

    add-int v12, v4, v9

    invoke-virtual {v10, v4, v11, v12, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 102
    .end local v6           #summaryBottom:I
    :cond_1
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummaryStrip:Landroid/view/View;

    if-ne v0, v10, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getSummaryStripTop()I

    move-result v7

    .line 106
    .local v7, summaryStripTop:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummaryStrip:Landroid/view/View;

    add-int v11, v4, v9

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummaryStrip:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual {v10, v4, v7, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 109
    .end local v7           #summaryStripTop:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 111
    .local v2, childParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 112
    .local v1, childHeight:I
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    .line 113
    add-int v10, v4, v9

    add-int v11, v8, v1

    invoke-virtual {v0, v4, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 114
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v1

    add-int/2addr v8, v10

    goto :goto_1

    .line 117
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v2           #childParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, totalHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 57
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    .local v1, childLp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v4, :cond_2

    .line 64
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 70
    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummaryStrip:Landroid/view/View;

    if-eq v0, v4, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_1

    .line 67
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 77
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mTopBannerHeight:I

    if-ge v4, v5, :cond_4

    .line 78
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mSummary:Landroid/view/View;

    iget v5, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mTopBannerHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 82
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public setTopBannerHeight(I)V
    .locals 0
    .parameter "topBannerHeight"

    .prologue
    .line 120
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->mTopBannerHeight:I

    .line 121
    return-void
.end method
