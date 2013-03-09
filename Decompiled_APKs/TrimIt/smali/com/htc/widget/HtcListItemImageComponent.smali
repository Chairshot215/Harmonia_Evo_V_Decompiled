.class Lcom/htc/widget/HtcListItemImageComponent;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItemImageComponent.java"


# static fields
.field public static final MODE_INDICATOR:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_TEXTBUBBLE:I = 0x1


# instance fields
.field protected mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

.field protected mBubbleSize:I

.field protected mComponentHeight:I

.field protected mComponentWidth:I

.field protected mContext:Landroid/content/Context;

.field protected mIndicator:Landroid/widget/ImageView;

.field protected mIndicatorLeftShift:I

.field protected mIndicatorSize:I

.field protected mLeftMargin:I

.field protected mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 20
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 23
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 78
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 20
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 23
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 72
    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    .end local p2
    :goto_0
    iput p2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 73
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 74
    return-void

    .restart local p2
    :cond_0
    move p2, v0

    .line 72
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 20
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 23
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 20
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 23
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    .line 34
    iput-object p1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    .line 36
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 37
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 38
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 40
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 42
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 43
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 46
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemBubbleCount;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemImageComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 68
    return-void

    .line 65
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    goto :goto_0
.end method


# virtual methods
.method public getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    return v0
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemBubbleCount;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemBubbleCount;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemBubbleCount;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemImageComponent;->invalidate(IIII)V

    .line 102
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bm"

    .prologue
    .line 139
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemImageComponent;->invalidate(IIII)V

    .line 147
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemImageComponent;->invalidate(IIII)V

    .line 127
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method
