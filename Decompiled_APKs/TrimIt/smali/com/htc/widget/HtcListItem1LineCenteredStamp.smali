.class public Lcom/htc/widget/HtcListItem1LineCenteredStamp;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItem1LineCenteredStamp.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemStampComponent;


# instance fields
.field private mIsMarqueeEnabled:Z

.field protected mMode:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 18
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 18
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 18
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 37
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 39
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 41
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 49
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingBottom:I

    .line 50
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingTop:I

    .line 51
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingLeft:I

    .line 52
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingRight:I

    .line 54
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    if-nez v0, :cond_1

    .line 55
    const v0, 0x203003d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 44
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 57
    :cond_1
    const v0, 0x2030025

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    if-eqz p2, :cond_0

    .line 22
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 25
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;)V

    .line 33
    return-void

    .line 28
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 29
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    goto :goto_0
.end method

.method private originalLayout()V
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 104
    .local v1, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getMeasuredWidth()I

    move-result v0

    .line 105
    .local v0, right:I
    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 106
    return-void
.end method

.method private revertLayout()V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 110
    .local v1, top:I
    const/4 v0, 0x0

    .line 111
    .local v0, left:I
    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 112
    return-void
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    if-ne p1, v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 154
    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 156
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 161
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 94
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 95
    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

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
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->revertLayout()V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->originalLayout()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 148
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 144
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 79
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 83
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 100
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setTextStyle(I)V
    .locals 2
    .parameter "defStyle"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    return-void
.end method
