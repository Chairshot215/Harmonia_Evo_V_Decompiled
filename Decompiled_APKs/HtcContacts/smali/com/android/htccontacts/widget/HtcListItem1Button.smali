.class public Lcom/android/htccontacts/widget/HtcListItem1Button;
.super Lcom/htc/widget/HtcListItem2LineText;
.source "HtcListItem1Button.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Button;->removeAllViews()V

    .line 21
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    .line 22
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/android/htccontacts/customize/CustomizeResource;->getCommonButtonSmallResourceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mContext:Landroid/content/Context;

    const v2, 0x2030036

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 25
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setCenterTextGap(I)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setBottomTextGap(I)V

    .line 31
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mTextTopY:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getPrimaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v4

    .line 32
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mTextTopY:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v5

    .line 34
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mRealHeightOfText:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getPrimaryTextHeight()I

    move-result v1

    aput v1, v0, v4

    .line 35
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mRealHeightOfText:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v1

    aput v1, v0, v5

    .line 37
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mLeftMargin:I

    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mRightMargin:I

    .line 40
    iput v4, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mPaddingTop:I

    .line 41
    iput v4, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mPaddingRight:I

    .line 42
    iput v4, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mPaddingLeft:I

    .line 43
    iput v4, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mPaddingBottom:I

    .line 45
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItem1Button;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 66
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mLeftMargin:I

    iget v2, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v5, 0x7f09015a

    .line 75
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListItem2LineText;->onLayout(ZIIII)V

    .line 76
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 78
    .local v0, top:I
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/Button;->layout(IIII)V

    .line 79
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 51
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mLeftMargin:I

    iget v2, p0, Lcom/android/htccontacts/widget/HtcListItem1Button;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 55
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 71
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 84
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 89
    return-void
.end method
