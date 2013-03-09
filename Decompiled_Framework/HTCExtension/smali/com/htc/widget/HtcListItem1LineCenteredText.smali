.class public Lcom/htc/widget/HtcListItem1LineCenteredText;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItem1LineCenteredText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# instance fields
.field private mEnableLeftAligned:Z

.field private mIsMarqueeEnabled:Z

.field private mLeftMargin:I

.field protected mMode:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingBottom:I

    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingTop:I

    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingLeft:I

    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingRight:I

    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    if-nez v0, :cond_1

    const v0, 0x2030036

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_1
    const v0, 0x2030012

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    goto :goto_0
.end method

.method private originalLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method private revertLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public enableAlwaysLeftAligned(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public enableMarquee(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public getIsAlwaysLeftAligned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsRevert:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->revertLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->originalLayout()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method
