.class Lcom/htc/widget/HtcListItemBubbleCount;
.super Landroid/widget/TextView;
.source "HtcListItemBubbleCount.java"


# instance fields
.field private mBubbleSize:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const-string v6, "0"

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "common_notification_on"

    const v7, 0x208006a

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemBubbleCount;->setBackgroundResource(I)V

    const v6, 0x20300d6

    invoke-virtual {p0, p1, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setGravity(I)V

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    iput-object p1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    const v6, 0x203002a

    sget-object v7, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v6, 0x24

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v6, 0x25

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/16 v6, 0x26

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v6, 0x27

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    if-eqz v5, :cond_0

    invoke-virtual {p0, v3, v1, v2, v5}, Lcom/htc/widget/HtcListItemBubbleCount;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iget v2, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const v1, 0x20300d5

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const v1, 0x20300d6

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
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
    iget v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method
