.class Lcom/htc/widget/HtcListItemBubbleCount;
.super Landroid/widget/TextView;
.source "HtcListItemBubbleCount.java"


# instance fields
.field private mBubbleSize:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 62
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 23
    const-string v6, "0"

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const-string v6, "common_notification_on"

    const v7, 0x208006a

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 29
    .local v4, rId:I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemBubbleCount;->setBackgroundResource(I)V

    .line 30
    const v6, 0x20300d6

    invoke-virtual {p0, p1, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    .line 31
    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setGravity(I)V

    .line 32
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 33
    iput-object p1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 34
    iget-object v6, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 36
    const v6, 0x203002a

    sget-object v7, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/16 v6, 0x24

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 41
    .local v5, shadowColor:I
    const/16 v6, 0x25

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 42
    .local v1, dx:F
    const/16 v6, 0x26

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 43
    .local v2, dy:F
    const/16 v6, 0x27

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 45
    .local v3, r:F
    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {p0, v3, v1, v2, v5}, Lcom/htc/widget/HtcListItemBubbleCount;->setShadowLayer(FFFI)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iget v2, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 80
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setText(Ljava/lang/CharSequence;)V

    .line 89
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const v1, 0x20300d5

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    .line 98
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    const v1, 0x20300d6

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 70
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 85
    return-void
.end method
