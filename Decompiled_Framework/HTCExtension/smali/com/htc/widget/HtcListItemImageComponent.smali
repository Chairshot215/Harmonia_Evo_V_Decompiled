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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    :goto_0
    iput p2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    move p2, v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemBubbleCount;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/htc/R$styleable;->HtcListItemImageComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    goto :goto_0
.end method


# virtual methods
.method public getBubbleCountText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    return v0
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

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

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
