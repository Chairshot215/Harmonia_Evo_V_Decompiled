.class public Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;
.super Lcom/htc/widget/HtcListItem2LineStamp;
.source "HtcListItem2LineStampWithStyle.java"


# instance fields
.field private mInnerRealHeightOfText:[I

.field private mInnerTextTopY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x203003d

    const v5, 0x2030036

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 14
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;-><init>(Landroid/content/Context;)V

    .line 11
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    .line 12
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    .line 15
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mFontSize:[I

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 16
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mFontSize:[I

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 18
    iget v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mMode:I

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->setPrimaryTextStyle(I)V

    .line 20
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->setSecondaryTextStyle(I)V

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 35
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v3

    .line 37
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    invoke-static {p1, v5}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v4

    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    invoke-static {p1, v6}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 39
    return-void

    .line 21
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mMode:I

    if-ne v0, v3, :cond_0

    .line 22
    const v0, 0x2030012

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->setPrimaryTextStyle(I)V

    .line 23
    const v0, 0x2030025

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->setSecondaryTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->getMeasuredWidth()I

    move-result v1

    .line 67
    .local v1, right:I
    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v0, v6

    .line 68
    .local v0, isSecondTextEmpty:Z
    :goto_0
    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_3

    if-nez v0, :cond_3

    .line 69
    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    aget v7, v7, v5

    iget-object v8, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    aget v9, v9, v5

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    .line 70
    .local v4, topMargin:I
    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget-object v8, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v1, v8

    iget-object v9, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v5, v9, v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v7, v8, v4, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 72
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    aget v5, v5, v6

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    aget v8, v8, v6

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v5, v7

    .line 73
    .local v2, text2TopMargin:I
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v6, v8, v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v7, v2, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 81
    .end local v2           #text2TopMargin:I
    .end local v4           #topMargin:I
    :cond_1
    :goto_1
    return-void

    .end local v0           #isSecondTextEmpty:Z
    :cond_2
    move v0, v5

    .line 67
    goto :goto_0

    .line 74
    .restart local v0       #isSecondTextEmpty:Z
    :cond_3
    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 76
    .local v3, top:I
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v5, v8, v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v6, v7, v3, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_1

    .line 77
    .end local v3           #top:I
    :cond_4
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->getMeasuredHeight()I

    move-result v5

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v3, v5, 0x2

    .line 79
    .restart local v3       #top:I
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    iget-object v7, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v6, v8, v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v7, v3, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_1
.end method

.method public setPrimaryTextStyle(I)V
    .locals 4
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 45
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 47
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 50
    :cond_0
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 4
    .parameter "style"

    .prologue
    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-le v0, v3, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 56
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerRealHeightOfText:[I

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 58
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mInnerTextTopY:[I

    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampWithStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 61
    :cond_0
    return-void
.end method
