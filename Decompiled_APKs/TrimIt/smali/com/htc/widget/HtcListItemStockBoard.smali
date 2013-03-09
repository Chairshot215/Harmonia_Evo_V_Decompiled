.class public Lcom/htc/widget/HtcListItemStockBoard;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItemStockBoard.java"


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mBoardFontSize1:I

.field private mBoardFontSize2:I

.field private mBoardText1:Landroid/widget/TextView;

.field private mBoardText2:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDesiredBoardHeight:I

.field private mDesiredBoardWidth:I

.field private mFrontFontSize:I

.field private mFrontText:Landroid/widget/TextView;

.field private mFrontTextRightMargin:I

.field private mRightMargin:I

.field private mTextRightX:I

.field private mTopDownMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    .line 34
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 35
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 37
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 40
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 41
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    .line 34
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 35
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 37
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 40
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 41
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 87
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    .line 34
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 35
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 37
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 40
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 41
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 92
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v0, 0x1

    .line 230
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x203002b

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 44
    iput-object p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize1:I

    .line 53
    invoke-virtual {p0, v3, v6}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLineStyle(II)V

    .line 55
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize2:I

    .line 57
    invoke-virtual {p0, v4, v6}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLineStyle(II)V

    .line 59
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    .line 62
    const v0, 0x2030037

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setFrontTextStyle(I)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTextRightX:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 69
    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingTop:I

    .line 70
    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingLeft:I

    .line 71
    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingBottom:I

    .line 72
    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingRight:I

    .line 74
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method private originalLayout()V
    .locals 9

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 140
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredWidth()I

    move-result v1

    .line 142
    .local v1, right:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iget v7, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iget-object v8, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 144
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v1, v4

    .line 145
    .local v2, textRight:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 148
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 149
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 152
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 153
    .local v0, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 154
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 155
    return-void
.end method

.method private revertLayout()V
    .locals 9

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 159
    .local v3, top:I
    const/4 v0, 0x0

    .line 161
    .local v0, left:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget v7, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iget-object v8, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 163
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v0, v4

    .line 164
    .local v2, textLeft:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 167
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 168
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredWidth()I

    move-result v1

    .line 172
    .local v1, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 173
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 174
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBoardDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFrontText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 111
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 112
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTextLineContent(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 286
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    :goto_0
    return-object v0

    .line 287
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x0

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
    .line 178
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemStockBoard;->revertLayout()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemStockBoard;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v4, 0x4000

    .line 121
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 122
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 123
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 125
    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    if-gtz v2, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 126
    .local v0, height:I
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTextRightX:I

    add-int v1, v2, v3

    .line 129
    .local v1, width:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 134
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    add-int/2addr v2, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListItemStockBoard;->setMeasuredDimension(II)V

    .line 136
    return-void

    .line 125
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    goto :goto_0

    .line 126
    .restart local v0       #height:I
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    goto :goto_1
.end method

.method public setBoardImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method

.method public setBoardImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-void
.end method

.method public setBoardImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    return-void
.end method

.method public setBoardSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 337
    iput p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 338
    iput p2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 340
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->requestLayout()V

    .line 341
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 334
    :cond_0
    return-void

    .line 328
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 330
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 331
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFrontText(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public setFrontText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFrontTextStyle(I)V
    .locals 3
    .parameter "defStyle"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 319
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 320
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 96
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 97
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 117
    return-void
.end method

.method public setTextLine(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "text"

    .prologue
    .line 242
    if-nez p1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextLineResource(II)V
    .locals 2
    .parameter "index"
    .parameter "rId"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLine(ILjava/lang/String;)V

    .line 260
    return-void
.end method

.method public setTextLineStyle(II)V
    .locals 3
    .parameter "index"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 269
    if-nez p1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 271
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize1:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 275
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize2:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
