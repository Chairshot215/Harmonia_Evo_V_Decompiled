.class public Lcom/htc/widget/HtcGridView;
.super Lcom/htc/widget/BouncingGridView;
.source "HtcGridView.java"

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

.field mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field protected mEmptyHeight:I

.field protected mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcBottomRound:Landroid/graphics/drawable/Drawable;

.field protected mHtcFastScrollEnabled:Z

.field protected mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

.field protected mHtcLastScrollState:I

.field protected mHtcListBackground:Landroid/graphics/drawable/Drawable;

.field protected mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mHtcRoundBackgroundColor:I

.field private final mHtcTempRect:Landroid/graphics/Rect;

.field protected mHtcTopDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcTopRound:Landroid/graphics/drawable/Drawable;

.field protected mRoundRect:Landroid/graphics/Rect;

.field private mShadowPaint:Landroid/graphics/Paint;

.field protected mShouldFillEmpty:Z

.field private mTopBorderHeight:I

.field private mTouchMode:I

.field private mTruePaddingBottom:I

.field private mTruePaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    return v0
.end method

.method private adjustBackgroundBorderHeight()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScrollEnabled:Z

    invoke-super {p0, p0}, Lcom/htc/widget/BouncingGridView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->initXferPaint()V

    return-void
.end method

.method private initXferPaint()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p2, :cond_0

    if-eqz p3, :cond_8

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

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    :goto_2
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    :goto_3
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    :goto_4
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    :goto_5
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_7
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    const v5, 0x20a002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHtcRoundBackgroundColor:I

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->setRoundRect()V

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->setTopBorderHeight(I)V

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->setBottomBorderHeight(I)V

    :goto_8
    return-void

    :cond_1
    sget-object v5, Lcom/htc/R$styleable;->HtcListView:[I

    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0

    :cond_2
    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "HtcListView"

    const-string v6, "resource not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_3
    const v5, 0x2080694

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8

    :cond_4
    const v5, 0x20806a3

    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    const v5, 0x20806a7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_6
    const v5, 0x20806a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_7
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_8
    const v5, 0x20d0074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    const v5, 0x20806a3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    const v5, 0x2080694

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    const v5, 0x20806a7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    const v5, 0x20806a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7
.end method

.method private setRoundRect()V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v5, 0x43a0

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v5, 0x41a0

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v3, v4, v5

    new-array v0, v3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mHtcRoundBackgroundColor:I

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcGridView;->mBd:Landroid/graphics/Bitmap;

    return-void
.end method

.method private updateEmptyHeight()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    iput v2, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Lcom/htc/widget/BouncingGridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getHeaderViewsCount()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isStackFromBottom()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getListPaddingTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getListPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    move/from16 v23, v0

    add-int v15, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTruePaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTruePaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->right:I

    if-nez v14, :cond_d

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v8, :cond_0

    add-int v22, v10, v13

    if-ltz v22, :cond_5

    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v18, v17

    check-cast v18, Lcom/htc/widget/HtcListItemSeparable;

    :cond_2
    add-int v22, v10, v13

    if-nez v22, :cond_4

    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-eqz v22, :cond_6

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v22

    sub-int v22, v4, v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    :cond_4
    :goto_1
    add-int/lit8 v22, v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v22

    sub-int v22, v4, v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v22, "divider"

    const-string v23, "hit IndexOutOfBoundsException when drawing HTC Style bottom separater!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, v19

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v20, v0

    :cond_9
    if-eqz v17, :cond_5

    if-eqz v19, :cond_5

    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    if-ge v4, v15, :cond_5

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_b

    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_a

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_2

    :cond_a
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    :cond_b
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_c

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    :cond_c
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_d
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_0

    add-int v22, v10, v13

    if-ltz v22, :cond_10

    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v18, v17

    check-cast v18, Lcom/htc/widget/HtcListItemSeparable;

    :cond_e
    add-int v22, v10, v13

    if-nez v22, :cond_f

    if-eqz v18, :cond_11

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    :cond_f
    :goto_4
    add-int/lit8 v22, v13, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    if-eqz v18, :cond_12

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_12

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcGridView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_10
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_11
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_4

    :cond_12
    const/16 v22, 0x1

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcGridView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v9

    const-string v22, "divider"

    const-string v23, "hit IndexOutOfBoundsException when drawing HTC Style top separater!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    if-eqz v7, :cond_10

    :try_start_5
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, v19

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v20, v0

    :cond_14
    if-eqz v17, :cond_10

    if-eqz v19, :cond_10

    if-eqz v18, :cond_10

    invoke-interface/range {v18 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    if-ge v4, v15, :cond_10

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_16

    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_15

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_5

    :cond_15
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_5

    :cond_16
    if-eqz v20, :cond_17

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_17

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_5

    :cond_17
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

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

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 10

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mTruePaddingBottom:I

    sub-int v6, v8, v9

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mLeft:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mRight:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->right:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    if-eqz p3, :cond_0

    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v8, p2, v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_0
    iput p2, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v8}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput v4, v5, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    const/high16 v9, -0x8000

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->updateEmptyHeight()V

    :cond_2
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    add-int/2addr v8, p2

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    add-int v0, v8, v9

    if-eqz p3, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iput v0, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v0, 0x1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v8}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iget v9, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v7, v8, v9

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    iput v7, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

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

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mLeft:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mRight:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    if-eqz p3, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_0
    iput p2, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, p2, 0x1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_1
    iput v3, v4, Landroid/graphics/Rect;->top:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method protected drawStartRound(Landroid/graphics/Canvas;IZ)V
    .locals 10

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mTruePaddingTop:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mLeft:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mRight:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    iput p2, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iput v3, v4, Landroid/graphics/Rect;->top:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    sub-int v8, p2, v8

    if-ge v5, v8, :cond_3

    move v7, v5

    :goto_1
    if-eqz p3, :cond_4

    add-int/lit8 v8, p2, -0x1

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v6, p2, v8

    if-gez v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    iput v7, v4, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    iput p2, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    sub-int v7, p2, v8

    goto :goto_1

    :cond_4
    iput v7, v4, Landroid/graphics/Rect;->top:I

    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBd:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    return v0
.end method

.method getTopBorderHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    return v0
.end method

.method protected htcInvokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    :cond_0
    return-void
.end method

.method protected htcReportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->htcInvokeOnItemScrollListener()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcGridView;->htcReportScrollStateChange(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/BouncingGridView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->setDataSetListener(Lcom/htc/widget/HtcAdapterView$OnDataSetListener;)V

    :cond_0
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mBouncingEnabled:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScrollEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFastScrollSectionsDirty()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->setSectionsDirty()V

    :cond_0
    return-void
.end method

.method public setFillEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setListBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMiddleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    return-void
.end method

.method public setRoundBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->setRoundRect()V

    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    return-void
.end method
