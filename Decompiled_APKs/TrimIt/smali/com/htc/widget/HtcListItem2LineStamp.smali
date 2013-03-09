.class public Lcom/htc/widget/HtcListItem2LineStamp;
.super Lcom/htc/widget/HtcListItem2TextComponent;
.source "HtcListItem2LineStamp.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemStampComponent;


# instance fields
.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;I)V

    .line 143
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x2030025

    const/4 v2, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    iput-object p1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    .line 77
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    .line 79
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mIsMarqueeEnabled:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 82
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 83
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 87
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 88
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 100
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 102
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mMode:I

    if-nez v0, :cond_2

    .line 103
    const v0, 0x203003d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextStyle(I)V

    .line 104
    const v0, 0x203003d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    .line 110
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextBottomYPosition()I

    move-result v1

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 111
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v3

    .line 113
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v1

    aput v1, v0, v4

    .line 114
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    aget v1, v1, v4

    aput v1, v0, v3

    .line 115
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRightMargin:I

    .line 117
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingTop:I

    .line 118
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingRight:I

    .line 119
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingLeft:I

    .line 120
    iput v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingBottom:I

    .line 122
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 96
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mMode:I

    if-ne v0, v3, :cond_0

    .line 106
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextStyle(I)V

    .line 107
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    goto/16 :goto_1
.end method

.method private originalLayout()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->getMeasuredWidth()I

    move-result v0

    .line 181
    .local v0, right:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 182
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mTextTopY:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 183
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 185
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mTextTopY:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 186
    .local v1, text2TopMargin:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 194
    .end local v1           #text2TopMargin:I
    .end local v3           #topMargin:I
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 189
    .local v2, top:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    .line 190
    .end local v2           #top:I
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 192
    .restart local v2       #top:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method private revertLayout()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, left:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 199
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mTextTopY:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 200
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 202
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mTextTopY:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRealHeightOfText:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 203
    .local v1, text2TopMargin:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 211
    .end local v1           #text2TopMargin:I
    .end local v3           #topMargin:I
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 206
    .local v2, top:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    .line 207
    .end local v2           #top:I
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 209
    .restart local v2       #top:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic enableMarquee(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->enableMarquee(Z)V

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 162
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 163
    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextVisibility()I
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextVisibility()I
    .locals 1

    .prologue
    .line 69
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
    .line 172
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->revertLayout()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->originalLayout()V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 147
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 148
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 168
    return-void
.end method

.method public bridge synthetic setPrimaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextVisibility(I)V

    return-void
.end method
