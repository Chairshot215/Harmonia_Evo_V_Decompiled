.class public Lcom/htc/widget/HtcListItemSingleText;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItemSingleText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# instance fields
.field private mFontSize:I

.field private mLeftMargin:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 16
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 20
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 37
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 16
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 20
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 16
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 20
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 47
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 25
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 27
    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 32
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSingleText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    return-void
.end method

.method private originalLayout()V
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 76
    .local v0, top:I
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 77
    return-void
.end method

.method private revertLayout()V
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 81
    .local v0, top:I
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 82
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 62
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 66
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

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
    .line 86
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSingleText;->revertLayout()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSingleText;->originalLayout()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 116
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSingleText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 51
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 55
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 72
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setTextStyle(I)V
    .locals 3
    .parameter "defStyle"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    return-void
.end method
