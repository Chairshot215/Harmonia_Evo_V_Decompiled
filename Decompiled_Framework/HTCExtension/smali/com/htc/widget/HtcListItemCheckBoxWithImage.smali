.class public Lcom/htc/widget/HtcListItemCheckBoxWithImage;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItemCheckBoxWithImage.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLeftMargin:I

.field private mReplyImage:Landroid/widget/ImageView;

.field private mReplyPositionY:I

.field private mTopMarginCheckBox:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    const-string v1, "common_checkbox"

    const v2, 0x2080012

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    const v2, 0x20807d7

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    iput v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingTop:I

    iput v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingBottom:I

    iput v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingLeft:I

    iput v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingRight:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private originalLayout()V
    .locals 7

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iget v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;->layout(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    iget v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_1
    return-void
.end method

.method private revertLayout()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mTopMarginCheckBox:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/CheckBox;->layout(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyPositionY:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->revertLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;->onMeasure(II)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLeftMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method
