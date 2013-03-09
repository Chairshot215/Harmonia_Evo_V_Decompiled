.class public Lcom/htc/widget/HtcListView;
.super Lcom/htc/widget/BouncingListView;
.source "HtcListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field public static final HTC_BOTTOM_BORDER_HEIGHT:I = 0xa

.field public static final HTC_MYSTIC_BORDER_SIZE:I = 0x0

.field public static final HTC_TOP_BORDER_HEIGHT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HtcListView"


# instance fields
.field private BACKGROUND_BORDER_HEIGHT:I

.field private BACKGROUND_SHADOW_HEIGHT:I

.field private mBd:Landroid/graphics/Bitmap;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBottomBorderHeight:I

.field private mBottomRound:Z

.field private mBottomRoundChecked:Z

.field private mContainerDrawable:Landroid/graphics/drawable/Drawable;

.field mContainerHeight:I

.field mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field private mDrawEndRound:Z

.field private mDrawTopRound:Z

.field protected mEmptyHeight:I

.field protected mEmptyWidth:I

.field private mFakeTopRound:Z

.field protected mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcBottomRound:Landroid/graphics/drawable/Drawable;

.field protected mHtcFastScrollEnabled:Z

.field protected mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

.field protected mHtcLastScrollState:I

.field protected mHtcListBackground:Landroid/graphics/drawable/Drawable;

.field protected mHtcListViewStyle:Z

.field protected mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mHtcRoundBackgroundColor:I

.field private final mHtcTempRect:Landroid/graphics/Rect;

.field protected mHtcTopDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcTopRound:Landroid/graphics/drawable/Drawable;

.field private mIsMoreExpandableListView:Z

.field protected mLastItemBottom:I

.field protected mLastItemCnt:I

.field private mListTouchMode:I

.field private mOverListHeight:Z

.field protected mRoundRect:Landroid/graphics/Rect;

.field protected mScreenBottom:I

.field private mSeparateSection:Z

.field private mShadowPaint:Landroid/graphics/Paint;

.field protected mShouldFillEmpty:Z

.field private mTopBorderHeight:I

.field private mTopRound:Z

.field private mTopRoundChecked:Z

.field private mTruePaddingBottom:I

.field private mTruePaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    return v0
.end method

.method private adjustBackgroundBorderHeight()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScrollEnabled:Z

    invoke-super {p0, p0}, Lcom/htc/widget/BouncingListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->initXferPaint()V

    const/high16 v0, -0x3400

    invoke-static {p0, v0}, Lcom/htc/view/ViewWrapper;->setCornerStrokeColor(Landroid/view/View;I)V

    invoke-static {p0, v1}, Lcom/htc/view/ViewWrapper;->setCornerStrokeWidth(Landroid/view/View;I)V

    return-void
.end method

.method private initXferPaint()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private isDraggingItem(II)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    if-eq p2, v1, :cond_0

    iput p2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p2, :cond_0

    if-eqz p3, :cond_9

    :cond_0
    if-eqz p3, :cond_1

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/R$styleable;->HtcListView:[I

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    :goto_0
    const/16 v5, 0x8

    const v6, 0x20d0074

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mHtcListViewStyle:Z

    iget-boolean v5, p0, Lcom/htc/widget/HtcListView;->mHtcListViewStyle:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    :goto_1
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    :goto_2
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    :goto_3
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    :goto_4
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    :goto_5
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_8
    const v5, 0x20a002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mHtcRoundBackgroundColor:I

    const v5, 0x20b0001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    iget v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    :goto_9
    return-void

    :cond_1
    sget-object v5, Lcom/htc/R$styleable;->HtcListView:[I

    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    sget-object v5, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "HtcListView"

    const-string v6, "resource not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_3
    const v5, 0x2080696

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9

    :cond_4
    const v5, 0x2080694

    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    const v5, 0x2080669

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_6
    const v5, 0x208068f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_7
    const v5, 0x20800d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_8
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_9
    const v5, 0x20d0074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    const v5, 0x2080669

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    const v5, 0x2080694

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    const v5, 0x208068f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    const v5, 0x20800d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8
.end method

.method private setRoundRect()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x43a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x41a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcListView;->mHtcRoundBackgroundColor:I

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcListView;->mBd:Landroid/graphics/Bitmap;

    return-void
.end method

.method private updateEmptyHeight()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getBottomBorderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    iget v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/htc/widget/BouncingListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isStackFromBottom()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getListPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    move/from16 v22, v0

    add-int v15, v21, v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    if-lez v12, :cond_2

    add-int v21, v12, v7

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingTop:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingBottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mRight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mLeft:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingRight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->right:I

    if-nez v14, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    if-lez v7, :cond_3

    if-ne v7, v10, :cond_3

    add-int/lit8 v21, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v15, :cond_3

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    :cond_3
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v7, :cond_0

    add-int v21, v12, v13

    if-ltz v21, :cond_6

    add-int v21, v12, v13

    move/from16 v0, v21

    if-ge v0, v10, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v17, v16

    check-cast v17, Lcom/htc/widget/HtcListItemSeparable;

    :cond_4
    add-int v21, v12, v13

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v6, v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    :cond_5
    :goto_1
    add-int/lit8 v21, v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    add-int v21, v12, v13

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move-object/from16 v20, v16

    check-cast v20, Lcom/htc/widget/HtcListItemSeparableType;

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparableType;->getTopRound()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v6, v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_1

    :cond_8
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_1

    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_1

    :cond_a
    :try_start_1
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move-object/from16 v0, v16

    check-cast v0, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    const-string v21, "divider"

    const-string v22, "hit IndexOutOfBoundsException when drawing HTC Style bottom separater!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    if-eqz v17, :cond_c

    :try_start_2
    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_c

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_c
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_d
    add-int v21, v12, v13

    add-int/lit8 v22, v10, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move-object/from16 v0, v16

    check-cast v0, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_f
    if-eqz v17, :cond_10

    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_10

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_10
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_11
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v0, v18

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v19, v0

    :cond_12
    if-eqz v16, :cond_6

    if-eqz v18, :cond_6

    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    if-ge v6, v15, :cond_6

    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_14

    if-eqz v19, :cond_13

    invoke-interface/range {v19 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    :cond_13
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    :cond_14
    if-eqz v19, :cond_15

    invoke-interface/range {v19 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_15

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    :cond_15
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawContainer(Landroid/graphics/Canvas;II)V
    .locals 6

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v5

    if-lez v5, :cond_0

    iput p2, v4, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v5, p3, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/widget/HtcListView;->mRight:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawContainerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v5, p2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method protected drawContainerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v6

    mul-int v5, v2, v1

    if-gtz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-int v5, v2, v1

    new-array v0, v5, [I

    const/4 v4, 0x0

    :goto_1
    mul-int v5, v2, v1

    if-ge v4, v5, :cond_2

    const v5, -0xe1e1e2

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 10

    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcListView;->mTruePaddingBottom:I

    sub-int v6, v8, v9

    iget-boolean v8, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    if-eqz p3, :cond_0

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v8, p2, v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_0
    iput p2, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_0
    iput v4, v5, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    const/high16 v9, -0x8000

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->updateEmptyHeight()V

    :cond_2
    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    add-int v0, p2, v8

    iget-boolean v8, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    if-eqz v8, :cond_3

    iput p2, v5, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_3
    if-eqz p3, :cond_4

    iput v0, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v0, 0x1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v8}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    iput p2, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v7, p2, v8

    iput p2, v5, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iget v9, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iput p2, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v7, p2, v8

    iput p2, v5, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p3

    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

.method protected drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    .locals 7

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    if-eqz p3, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_0
    iput p2, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, p2, 0x1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_1
    iput v3, v4, Landroid/graphics/Rect;->top:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method protected drawStartRound(Landroid/graphics/Canvas;IZ)V
    .locals 10

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/widget/HtcListView;->mTruePaddingTop:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    iput p2, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iput v3, v4, Landroid/graphics/Rect;->top:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v8, p2, v8

    if-ge v5, v8, :cond_3

    move v7, v5

    :goto_1
    if-eqz p3, :cond_4

    add-int/lit8 v8, p2, -0x1

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v6, p2, v8

    if-gez v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    iput v7, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    iput p2, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v7, p2, v8

    goto :goto_1

    :cond_4
    iput v7, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v6, p2, v8

    if-gez v6, :cond_5

    const/4 v6, 0x0

    :cond_5
    iput v6, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableScrollWhenResurrectSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mScrollWhenResurrectSelection:Z

    return-void
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListSelectorPressed()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getRightBorderWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getTopBorderHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    return v0
.end method

.method protected htcInvokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    :cond_0
    return-void
.end method

.method protected htcReportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    iput p1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOverListHeight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/BouncingListView;->onLayout(ZIIII)V

    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->htcInvokeOnItemScrollListener()V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcListView;->htcReportScrollStateChange(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/BouncingListView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    iget v2, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->setDataSetListener(Lcom/htc/widget/HtcAdapterView$OnDataSetListener;)V

    :cond_0
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mBouncingEnabled:Z

    return-void
.end method

.method public setCompletedTopRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScrollEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFastScrollSectionsDirty()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->setSectionsDirty()V

    :cond_0
    return-void
.end method

.method public setFillEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    return-void

    :cond_0
    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    goto :goto_0
.end method

.method public setIsMoreExpandableListView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    return-void
.end method

.method public setLeftBorderWidth(I)V
    .locals 0

    return-void
.end method

.method public setLeftDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setLeftRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setListBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMiddleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    return-void
.end method

.method public setRightBorderWidth(I)V
    .locals 0

    return-void
.end method

.method public setRightDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setRightRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setRoundBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setRoundCorner(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    iput-boolean p2, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 11

    const v10, 0x20201c8

    const v9, 0x2020085

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v4, p1, v2

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-lt v4, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v9, :cond_0

    instance-of v7, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_3

    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem;->isBottomRounded()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v7, v3, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v7, :cond_5

    check-cast v3, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    instance-of v7, v3, Lcom/htc/widget/HtcListItemSeparable;

    if-eqz v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v10, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v9, :cond_0

    :cond_6
    iget-boolean v7, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    if-eqz v7, :cond_0

    move v6, v5

    goto :goto_0
.end method
