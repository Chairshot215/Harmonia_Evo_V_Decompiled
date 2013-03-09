.class public Lcom/htc/widget/HtcListItem2LineText;
.super Lcom/htc/widget/HtcListItem2TextComponent;
.source "HtcListItem2LineText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# instance fields
.field private mEnableLeftAligned:Z

.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    .line 132
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    .line 147
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    .line 137
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    .line 142
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    iput-object p1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    .line 79
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    .line 81
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsMarqueeEnabled:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 83
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 85
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 89
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 102
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 104
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mMode:I

    if-nez v0, :cond_2

    .line 105
    const v0, 0x2030036

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 106
    const v0, 0x203003d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 112
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v4

    .line 113
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v3

    .line 115
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextHeight()I

    move-result v1

    aput v1, v0, v4

    .line 116
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v1

    aput v1, v0, v3

    .line 118
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    .line 119
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    .line 121
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingTop:I

    .line 122
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingRight:I

    .line 123
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingLeft:I

    .line 124
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingBottom:I

    .line 126
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 98
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 107
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mMode:I

    if-ne v0, v3, :cond_0

    .line 108
    const v0, 0x2030012

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 109
    const v0, 0x2030025

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto/16 :goto_1
.end method

.method private originalLayout()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 176
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mTextTopY:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mRealHeightOfText:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 177
    .local v2, topMargin:I
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 179
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mTextTopY:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mRealHeightOfText:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 180
    .local v0, text2TopMargin:I
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v6, v0, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 188
    .end local v0           #text2TopMargin:I
    .end local v2           #topMargin:I
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 183
    .local v1, top:I
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    .line 184
    .end local v1           #top:I
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 186
    .restart local v1       #top:I
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method private revertLayout()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredWidth()I

    move-result v0

    .line 192
    .local v0, right:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 193
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mTextTopY:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineText;->mRealHeightOfText:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 194
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 196
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mTextTopY:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineText;->mRealHeightOfText:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 197
    .local v1, text2TopMargin:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 205
    .end local v1           #text2TopMargin:I
    .end local v3           #topMargin:I
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 200
    .local v2, top:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    .line 201
    .end local v2           #top:I
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 203
    .restart local v2       #top:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public enableAlwaysLeftAligned(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    if-ne v1, p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 218
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    .line 219
    if-eqz p1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .local v0, param:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #param:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .restart local v0       #param:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 226
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 228
    .end local v0           #param:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 229
    .restart local v0       #param:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #param:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    .restart local v0       #param:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic enableMarquee(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->enableMarquee(Z)V

    return-void
.end method

.method public getIsAlwaysLeftAligned()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 162
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 168
    :goto_0
    return-object v0

    .line 164
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 166
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 167
    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextVisibility()I
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextVisibility()I
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextVisibility()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsRevert:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->revertLayout()V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->originalLayout()V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 151
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 152
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 155
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 172
    return-void
.end method

.method public bridge synthetic setPrimaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextVisibility(I)V

    return-void
.end method
