.class public Lcom/htc/widget/HtcListItemQuickContactBadge;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemQuickContactBadge.java"


# instance fields
.field private mBadge:Lcom/htc/widget/QuickContactBadge;

.field private mBadgeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/htc/widget/QuickContactBadge;

    invoke-direct {v0, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingTop:I

    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingRight:I

    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingLeft:I

    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingBottom:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private originalLayout()V
    .locals 9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    sub-int v2, v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    iget v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    sub-int v6, v0, v6

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private revertLayout()V
    .locals 9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    add-int/lit8 v1, v4, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    iget v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    add-int/2addr v6, v1

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBadge()Lcom/htc/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->revertLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setMeasuredDimension(II)V

    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method
