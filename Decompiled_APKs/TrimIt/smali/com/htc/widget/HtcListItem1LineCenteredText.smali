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
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 16
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 19
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 16
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 19
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 16
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 19
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 40
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 43
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 44
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 53
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingBottom:I

    .line 54
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingTop:I

    .line 55
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingLeft:I

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingRight:I

    .line 58
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    if-nez v0, :cond_1

    .line 59
    const v0, 0x2030036

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 61
    :cond_1
    const v0, 0x2030012

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 28
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    .line 36
    return-void

    .line 31
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 32
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    goto :goto_0
.end method

.method private originalLayout()V
    .locals 5

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 108
    .local v0, top:I
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

    .line 109
    return-void
.end method

.method private revertLayout()V
    .locals 5

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 113
    .local v0, top:I
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

    .line 114
    return-void
.end method


# virtual methods
.method public enableAlwaysLeftAligned(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 168
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    if-ne v1, p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .local v0, param:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 175
    .end local v0           #param:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .restart local v0       #param:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public enableMarquee(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    if-ne p1, v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 156
    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 160
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 163
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public getIsAlwaysLeftAligned()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 94
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 100
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 98
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 99
    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

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
    .line 118
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsRevert:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mEnableLeftAligned:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->revertLayout()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->originalLayout()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 150
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 83
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 87
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 104
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setTextStyle(I)V
    .locals 2
    .parameter "defStyle"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    return-void
.end method
