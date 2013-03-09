.class public Lcom/htc/widget/HtcListItemQuickContactBadge;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemQuickContactBadge.java"


# instance fields
.field private mBadge:Lcom/htc/widget/QuickContactBadge;

.field private mBadgeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    .line 73
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    .line 63
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    .line 68
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/htc/widget/QuickContactBadge;

    invoke-direct {v0, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    .line 46
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    .line 48
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingTop:I

    .line 49
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingRight:I

    .line 50
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingLeft:I

    .line 51
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingBottom:I

    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method private originalLayout()V
    .locals 9

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorLeftShift:I

    sub-int v2, v4, v5

    .line 150
    .local v2, parentRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v0

    .line 151
    .local v0, parentBottom:I
    const/4 v1, 0x0

    .line 152
    .local v1, parentLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 154
    .local v3, parentTop:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    .line 155
    iget v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBubbleSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBubbleSize:I

    sub-int v6, v0, v6

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private revertLayout()V
    .locals 9

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredWidth()I

    move-result v2

    .line 133
    .local v2, parentRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v0

    .line 134
    .local v0, parentBottom:I
    iget v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorLeftShift:I

    add-int/lit8 v1, v4, 0x0

    .line 135
    .local v1, parentLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 137
    .local v3, parentTop:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    .line 138
    iget v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBubbleSize:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBubbleSize:I

    add-int/2addr v6, v1

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBadge()Lcom/htc/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 95
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 93
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 94
    iput-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->revertLayout()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 119
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setMeasuredDimension(II)V

    .line 120
    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 77
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 81
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 99
    return-void
.end method
