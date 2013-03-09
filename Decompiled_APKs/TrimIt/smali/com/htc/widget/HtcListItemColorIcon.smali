.class public Lcom/htc/widget/HtcListItemColorIcon;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemColorIcon.java"


# instance fields
.field private mBadge:Landroid/widget/ImageView;

.field private mBadgeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 80
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 75
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLeftMargin:I

    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mComponentWidth:I

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 52
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingTop:I

    .line 57
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingBottom:I

    .line 58
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingLeft:I

    .line 59
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingRight:I

    .line 60
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemColorIcon;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method private originalLayout()V
    .locals 9

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorIcon;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorLeftShift:I

    sub-int v2, v4, v5

    .line 125
    .local v2, parentRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorIcon;->getMeasuredHeight()I

    move-result v0

    .line 126
    .local v0, parentBottom:I
    const/4 v1, 0x0

    .line 127
    .local v1, parentLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorIcon;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 129
    .local v3, parentTop:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 130
    iget v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBubbleSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBubbleSize:I

    sub-int v6, v0, v6

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private revertLayout()V
    .locals 9

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorIcon;->getMeasuredWidth()I

    move-result v2

    .line 142
    .local v2, parentRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorIcon;->getMeasuredHeight()I

    move-result v0

    .line 143
    .local v0, parentBottom:I
    iget v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorLeftShift:I

    add-int/lit8 v1, v4, 0x0

    .line 144
    .local v1, parentLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorIcon;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 146
    .local v3, parentTop:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 147
    iget v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBubbleSize:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBubbleSize:I

    add-int/2addr v6, v1

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 102
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemColorIcon;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 100
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 101
    iput-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

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
    .line 116
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemColorIcon;->revertLayout()V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemColorIcon;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 111
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public setColorIconImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    return-void
.end method

.method public setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method public setColorIconImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 84
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 85
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 88
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iget v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 106
    return-void
.end method
