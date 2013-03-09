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

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const v6, 0x203002b

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    iput-object p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize1:I

    invoke-virtual {p0, v3, v6}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLineStyle(II)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize2:I

    invoke-virtual {p0, v4, v6}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLineStyle(II)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    const v0, 0x2030037

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setFrontTextStyle(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTextRightX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingTop:I

    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingLeft:I

    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingBottom:I

    iput v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingRight:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private originalLayout()V
    .locals 9

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredWidth()I

    move-result v1

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

    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

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

    return-void
.end method

.method private revertLayout()V
    .locals 9

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

    const/4 v0, 0x0

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

    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

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

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBoardDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFrontText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTextLineContent(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItemStockBoard;->revertLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemStockBoard;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x4000

    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    if-gtz v2, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

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

    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

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

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    goto :goto_1
.end method

.method public setBoardImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBoardImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBoardImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setBoardSize(II)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    iput p2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->requestLayout()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFrontText(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setFrontText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFrontTextStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setTextLine(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextLineResource(II)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLine(ILjava/lang/String;)V

    return-void
.end method

.method public setTextLineStyle(II)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize1:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize2:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
