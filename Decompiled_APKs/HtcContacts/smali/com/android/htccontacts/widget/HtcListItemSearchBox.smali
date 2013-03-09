.class public Lcom/android/htccontacts/widget/HtcListItemSearchBox;
.super Lcom/htc/widget/HtcListItem2LineText;
.source "HtcListItemSearchBox.java"


# instance fields
.field private mLeftMargin:I

.field private mRightMargin:I

.field private searchBox:Landroid/widget/EditText;

.field private searchBoxWidget:Lcom/htc/widget/SearchBoxView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->removeAllViews()V

    .line 23
    new-instance v1, Lcom/htc/widget/SearchBoxView;

    invoke-direct {v1, p1}, Lcom/htc/widget/SearchBoxView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    .line 24
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    const v2, 0x202019c

    invoke-virtual {v1, v2}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBox:Landroid/widget/EditText;

    .line 25
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBox:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 27
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mContext:Landroid/content/Context;

    const v3, 0x2030036

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 32
    :goto_0
    const/4 v0, 0x0

    .line 34
    .local v0, layoutView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #layoutView:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .restart local v0       #layoutView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setCenterTextGap(I)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setBottomTextGap(I)V

    .line 45
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mTextTopY:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getPrimaryTextTopYPosition()I

    move-result v2

    aput v2, v1, v5

    .line 46
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mTextTopY:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v2

    aput v2, v1, v6

    .line 48
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mRealHeightOfText:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getPrimaryTextHeight()I

    move-result v2

    aput v2, v1, v5

    .line 49
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mRealHeightOfText:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v2

    aput v2, v1, v6

    .line 51
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mLeftMargin:I

    .line 52
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mRightMargin:I

    .line 54
    iput v5, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mPaddingTop:I

    .line 55
    iput v5, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mPaddingRight:I

    .line 56
    iput v5, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mPaddingLeft:I

    .line 57
    iput v5, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mPaddingBottom:I

    .line 59
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void

    .line 30
    .end local v0           #layoutView:Landroid/view/ViewGroup;
    :cond_1
    const-string v1, "HtcListItemSearchBox"

    const-string v2, "Cannot find out the searchBox by com.htc.R.id.search_text "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 105
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mLeftMargin:I

    iget v2, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public getSearchBoxWidget()Lcom/htc/widget/SearchBoxView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, top_margin:I
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v3}, Lcom/htc/widget/SearchBoxView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, v1

    .line 117
    .local v0, top:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->searchBoxWidget:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v5}, Lcom/htc/widget/SearchBoxView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/htc/widget/SearchBoxView;->layout(IIII)V

    .line 118
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 90
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 91
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mLeftMargin:I

    iget v2, p0, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 94
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 110
    return-void
.end method
