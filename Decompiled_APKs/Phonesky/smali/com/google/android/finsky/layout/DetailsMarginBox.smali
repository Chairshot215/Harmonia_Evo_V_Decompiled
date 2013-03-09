.class public Lcom/google/android/finsky/layout/DetailsMarginBox;
.super Lcom/google/android/finsky/layout/MarginBox;
.source "DetailsMarginBox.java"


# instance fields
.field private mLeadingBanner:Landroid/view/View;

.field private mLeftColumn:Landroid/view/View;

.field private mLeftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

.field private mLeftColumnItemDetails:Landroid/view/View;

.field private mLeftColumnItemThumbnail:Landroid/view/View;

.field private mLeftColumnSummary:Landroid/view/View;

.field private final mMaxBannerHeight:I

.field private final mMinBannerHeight:I

.field private mRightColumn:Landroid/view/View;

.field private mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

.field private mRightColumnSummary:Landroid/view/View;

.field private mTopBanner:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxBannerHeight:I

    .line 55
    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMinBannerHeight:I

    .line 56
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/finsky/layout/MarginBox;->onFinishInflate()V

    .line 62
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    .line 63
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    .line 64
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mTopBanner:Landroid/view/View;

    .line 68
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnSummary:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemThumbnail:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnSummary:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsRightColumn;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

    .line 77
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v9, 0x0

    .line 145
    sub-int v5, p4, p2

    .line 146
    .local v5, width:I
    sub-int v2, p5, p3

    .line 148
    .local v2, height:I
    const/4 v6, 0x0

    .line 150
    .local v6, x:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 151
    .local v4, marginWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v9, v9, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 152
    add-int/2addr v6, v4

    .line 154
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 155
    .local v3, leftColumnWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    add-int v8, v6, v3

    invoke-virtual {v7, v6, v9, v8, v2}, Landroid/view/View;->layout(IIII)V

    .line 156
    add-int/2addr v6, v3

    .line 158
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    invoke-virtual {v7, v6, v9, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 160
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const v8, 0x7f0800ce

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, detailsScrollerContainer:Landroid/view/View;
    instance-of v7, v1, Lcom/google/android/finsky/layout/DetailsRightColumn;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 162
    check-cast v0, Lcom/google/android/finsky/layout/DetailsRightColumn;

    .line 163
    .local v0, detailsRightColumn:Lcom/google/android/finsky/layout/DetailsRightColumn;
    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setRightMargin(I)V

    .line 165
    .end local v0           #detailsRightColumn:Lcom/google/android/finsky/layout/DetailsRightColumn;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 81
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 82
    .local v16, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 84
    .local v5, height:I
    const v17, 0x3f147ae1

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v3, v0

    .line 85
    .local v3, bannerHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMinBannerHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxBannerHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 88
    const v17, 0x3eb851ec

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 89
    .local v14, topBannerHeight:I
    sub-int v4, v3, v14

    .line 93
    .local v4, bottomBannerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    .local v10, leftColumnWidth:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 97
    .local v11, leftColumnWidthSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .local v6, leftColumnItemDetailslLp:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->setTopBannerHeight(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->measure(II)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnSummary:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemThumbnail:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 111
    .local v8, leftColumnThumbnailLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    sub-int v17, v10, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v9, v17, v18

    .line 114
    .local v9, leftColumnThumbnailWidth:I
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    sub-int v17, v3, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnSummary:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    sub-int v7, v17, v18

    .line 117
    .local v7, leftColumnThumbnailHeight:I
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 118
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->measure(II)V

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxContentWidth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxContentWidth:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    div-int/lit8 v12, v17, 0x2

    .line 124
    .local v12, marginWidth:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mTopBanner:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .local v15, topBannerLp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 127
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    move-object/from16 v17, v0

    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 134
    sub-int v17, v16, v10

    sub-int v13, v17, v12

    .line 135
    .local v13, rightColumnWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnSummary:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iput v14, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setBottomBannerHeight(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    move-object/from16 v17, v0

    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/google/android/finsky/layout/DetailsMarginBox;->setMeasuredDimension(II)V

    .line 141
    return-void

    .line 123
    .end local v12           #marginWidth:I
    .end local v13           #rightColumnWidth:I
    .end local v15           #topBannerLp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method
