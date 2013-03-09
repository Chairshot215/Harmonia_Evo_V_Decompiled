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

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 14

    const/4 v13, -0x2

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    iput-object p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v11

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v10

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v11

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v10

    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-nez v0, :cond_3

    const v0, 0x2030036

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    const v0, 0x203003d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x2050152

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x2050154

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x20d00a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v4, v0

    const-wide/high16 v8, 0x4024

    div-double/2addr v4, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x2050153

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/widget/HtcListItemUtil;->setAll(Landroid/content/Context;IIIDI)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v11

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    aput v1, v0, v10

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextHeight()I

    move-result v1

    aput v1, v0, v11

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v1

    aput v1, v0, v10

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    iput v11, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingTop:I

    iput v11, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingRight:I

    iput v11, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingLeft:I

    iput v11, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingBottom:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v11

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v10

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-ne v0, v10, :cond_0

    const v0, 0x2030012

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    const v0, 0x2030025

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto/16 :goto_1
.end method

.method private originalLayout()V
    .locals 8

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v6, v0, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method private revertLayout()V
    .locals 9

    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

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

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic enableMarquee(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->enableMarquee(Z)V

    return-void
.end method

.method public getIsAlwaysLeftAligned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryText()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextVisibility()I
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryText()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextVisibility()I
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextVisibility()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mEnableLeftAligned:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->revertLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->originalLayout()V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPrimaryText(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextStyle(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextStyle(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextVisibility(I)V

    return-void
.end method
