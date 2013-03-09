.class public Lcom/android/htcdialer/widget/DialerListItem2LineText;
.super Lcom/htc/widget/HtcListItem2LineText;
.source "DialerListItem2LineText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getPrimaryTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSecondaryTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 64
    .local v0, marginGap:I
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 65
    .local v1, positionOffset:I
    iget-object v4, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mTextTopY:[I

    aget v4, v4, v8

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mRealHeightOfText:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 67
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    sub-int v5, v3, v0

    iget-object v6, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    sub-int/2addr v7, v0

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 68
    iget-object v4, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mTextTopY:[I

    aget v4, v4, v9

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mRealHeightOfText:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 69
    .local v2, text2TopMargin:I
    iget-object v4, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v9

    add-int v5, v2, v0

    iget-object v6, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    add-int/2addr v7, v0

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 70
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 4
    .parameter "style"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mFontSize:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    .line 57
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 58
    return-void
.end method
