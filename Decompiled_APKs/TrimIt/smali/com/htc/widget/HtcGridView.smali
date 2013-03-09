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
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    .line 82
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    .line 87
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    .line 88
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 91
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    .line 426
    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    .line 82
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    .line 87
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    .line 88
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 91
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    .line 426
    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 100
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    .line 82
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    .line 87
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    .line 88
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    .line 426
    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    return v0
.end method

.method private adjustBackgroundBorderHeight()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 225
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScrollEnabled:Z

    .line 110
    invoke-super {p0, p0}, Lcom/htc/widget/BouncingGridView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->initXferPaint()V

    .line 113
    return-void
.end method

.method private initXferPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 118
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 124
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 126
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 133
    .local v2, htcContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 137
    .local v3, res:Landroid/content/res/Resources;
    if-nez p2, :cond_0

    if-eqz p3, :cond_8

    .line 140
    :cond_0
    if-eqz p3, :cond_1

    .line 141
    const/4 v5, 0x0

    sget-object v6, Lcom/htc/R$styleable;->HtcListView:[I

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 145
    .local v4, typedArray:Landroid/content/res/TypedArray;
    :goto_0
    const/16 v5, 0x8

    const v6, 0x20d0074

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    .line 148
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    .line 151
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 156
    :goto_1
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 161
    :goto_2
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 166
    :goto_3
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 171
    :goto_4
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 176
    :goto_5
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    .line 180
    :goto_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :goto_7
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    .line 193
    const v5, 0x20a002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHtcRoundBackgroundColor:I

    .line 194
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->setRoundRect()V

    .line 195
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->setTopBorderHeight(I)V

    .line 196
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->setBottomBorderHeight(I)V

    .line 203
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_8
    return-void

    .line 143
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_1
    sget-object v5, Lcom/htc/R$styleable;->HtcListView:[I

    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    goto :goto_0

    .line 153
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 198
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "HtcListView"

    const-string v6, "resource not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 158
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
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

    .line 200
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :catch_1
    move-exception v1

    .line 201
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 163
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    :cond_4
    const v5, 0x20806a3

    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 168
    :cond_5
    const v5, 0x20806a7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 173
    :cond_6
    const v5, 0x20806a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 178
    :cond_7
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 183
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :cond_8
    const v5, 0x20d0074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    .line 184
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    .line 185
    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 186
    const v5, 0x20806a3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 187
    const v5, 0x2080694

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 188
    const v5, 0x20806a7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 189
    const v5, 0x20806a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 190
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
    .locals 6

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 207
    .local v2, scale:F
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 208
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x43a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 209
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x41a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 211
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    .line 212
    .local v0, colors:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 214
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mHtcRoundBackgroundColor:I

    aput v3, v0, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcGridView;->mBd:Landroid/graphics/Bitmap;

    .line 218
    return-void
.end method

.method private updateEmptyHeight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 345
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

    .line 346
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    goto :goto_0

    .line 348
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

    .line 351
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    if-gez v0, :cond_0

    .line 352
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 487
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/BouncingGridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 488
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

    .line 643
    :cond_0
    return-void

    .line 492
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 493
    .local v5, bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v8

    .line 494
    .local v8, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getHeaderViewsCount()I

    move-result v12

    .line 495
    .local v12, headerCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    .line 496
    .local v11, footerLimit:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v10

    .line 497
    .local v10, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isStackFromBottom()Z

    move-result v14

    .line 499
    .local v14, isStackFromBottom:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getListPaddingTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 500
    .local v16, listTop:I
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

    .line 504
    .local v15, listBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTruePaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 505
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

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 509
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

    .line 511
    if-nez v14, :cond_d

    .line 514
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v8, :cond_0

    .line 515
    add-int v22, v10, v13

    if-ltz v22, :cond_5

    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 516
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 517
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v21

    .line 518
    .local v21, top:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 519
    .local v4, bottom:I
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 520
    .local v17, tag:Ljava/lang/Object;
    const/16 v18, 0x0

    .line 521
    .local v18, tagItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v18, v17

    .line 522
    check-cast v18, Lcom/htc/widget/HtcListItemSeparable;

    .line 524
    :cond_2
    add-int v22, v10, v13

    if-nez v22, :cond_4

    .line 526
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 527
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

    .line 533
    :cond_4
    :goto_1
    add-int/lit8 v22, v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 534
    .local v7, childNext:Landroid/view/View;
    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 536
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_7

    .line 537
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

    .line 514
    .end local v4           #bottom:I
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childNext:Landroid/view/View;
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .end local v21           #top:I
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 529
    .restart local v4       #bottom:I
    .restart local v6       #child:Landroid/view/View;
    .restart local v17       #tag:Ljava/lang/Object;
    .restart local v18       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .restart local v21       #top:I
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

    .line 539
    .restart local v7       #childNext:Landroid/view/View;
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

    .line 568
    .end local v7           #childNext:Landroid/view/View;
    :catch_0
    move-exception v9

    .line 570
    .local v9, ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v22, "divider"

    const-string v23, "hit IndexOutOfBoundsException when drawing HTC Style bottom separater!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 542
    .end local v9           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v7       #childNext:Landroid/view/View;
    :cond_8
    if-eqz v7, :cond_5

    .line 545
    :try_start_2
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 546
    .local v19, tagNext:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 547
    .local v20, tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 548
    move-object/from16 v0, v19

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v20, v0

    .line 551
    :cond_9
    if-eqz v17, :cond_5

    if-eqz v19, :cond_5

    .line 552
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    if-ge v4, v15, :cond_5

    .line 553
    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_b

    .line 554
    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_a

    .line 555
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_2

    .line 557
    :cond_a
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    .line 560
    :cond_b
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_c

    .line 561
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    .line 563
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

    .line 578
    .end local v4           #bottom:I
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childNext:Landroid/view/View;
    .end local v13           #i:I
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .end local v19           #tagNext:Ljava/lang/Object;
    .end local v20           #tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    .end local v21           #top:I
    :cond_d
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    if-ge v13, v8, :cond_0

    .line 579
    add-int v22, v10, v13

    if-ltz v22, :cond_10

    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 581
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v21

    .line 582
    .restart local v21       #top:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 584
    .restart local v4       #bottom:I
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 585
    .restart local v17       #tag:Ljava/lang/Object;
    const/16 v18, 0x0

    .line 586
    .restart local v18       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v18, v17

    .line 587
    check-cast v18, Lcom/htc/widget/HtcListItemSeparable;

    .line 589
    :cond_e
    add-int v22, v10, v13

    if-nez v22, :cond_f

    .line 592
    if-eqz v18, :cond_11

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_11

    .line 593
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    .line 599
    :cond_f
    :goto_4
    add-int/lit8 v22, v13, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 600
    .restart local v7       #childNext:Landroid/view/View;
    add-int v22, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 602
    if-eqz v18, :cond_12

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_12

    .line 603
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcGridView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 578
    .end local v4           #bottom:I
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childNext:Landroid/view/View;
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .end local v21           #top:I
    :cond_10
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 595
    .restart local v4       #bottom:I
    .restart local v6       #child:Landroid/view/View;
    .restart local v17       #tag:Ljava/lang/Object;
    .restart local v18       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .restart local v21       #top:I
    :cond_11
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_4

    .line 605
    .restart local v7       #childNext:Landroid/view/View;
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

    .line 636
    .end local v7           #childNext:Landroid/view/View;
    :catch_1
    move-exception v9

    .line 638
    .restart local v9       #ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v22, "divider"

    const-string v23, "hit IndexOutOfBoundsException when drawing HTC Style top separater!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 608
    .end local v9           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v7       #childNext:Landroid/view/View;
    :cond_13
    if-eqz v7, :cond_10

    .line 612
    :try_start_5
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 613
    .restart local v19       #tagNext:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 614
    .restart local v20       #tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 615
    move-object/from16 v0, v19

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v20, v0

    .line 618
    :cond_14
    if-eqz v17, :cond_10

    if-eqz v19, :cond_10

    .line 619
    if-eqz v18, :cond_10

    invoke-interface/range {v18 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    if-ge v4, v15, :cond_10

    .line 621
    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_16

    .line 622
    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_15

    .line 623
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_5

    .line 625
    :cond_15
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_5

    .line 628
    :cond_16
    if-eqz v20, :cond_17

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v22

    if-nez v22, :cond_17

    .line 629
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcGridView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_5

    .line 631
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
    .parameter "canvas"

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->draw(Landroid/graphics/Canvas;)V

    .line 325
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 328
    :cond_0
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 856
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 857
    .local v0, isColor:Z
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 859
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 863
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 865
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 868
    :cond_0
    return-void

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"

    .prologue
    .line 848
    if-nez p3, :cond_0

    .line 853
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 851
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 852
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 10
    .parameter "canvas"
    .parameter "bottomPos"
    .parameter "drawEndRound"

    .prologue
    .line 715
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 717
    .local v5, bounds:Landroid/graphics/Rect;
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 718
    .local v4, boundTop:I
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 719
    .local v1, boundBottom:I
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 720
    .local v2, boundLeft:I
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 721
    .local v3, boundRight:I
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mTruePaddingBottom:I

    sub-int v6, v8, v9

    .line 722
    .local v6, listBottom:I
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mLeft:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 723
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mRight:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 724
    iget-boolean v8, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    .line 726
    if-eqz p3, :cond_0

    .line 727
    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v8, p2, v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 728
    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    .line 729
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 731
    :cond_0
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 732
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 733
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v8}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 767
    :goto_0
    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 768
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 769
    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 770
    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 771
    return-void

    .line 738
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    const/high16 v9, -0x8000

    if-ne v8, v9, :cond_2

    .line 739
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->updateEmptyHeight()V

    .line 741
    :cond_2
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    add-int/2addr v8, p2

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    add-int v0, v8, v9

    .line 744
    .local v0, baseLine:I
    if-eqz p3, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 745
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 746
    add-int/lit8 v8, v0, 0x1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 747
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v8}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 750
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iget v9, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 751
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 752
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 755
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v7, v8, v9

    .line 756
    .local v7, shaderH:I
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 757
    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 758
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 761
    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 762
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 763
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"

    .prologue
    .line 806
    if-nez p3, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    move-object v1, p3

    .line 810
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 812
    .local v0, clipDivider:Z
    if-nez v0, :cond_2

    .line 813
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 819
    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 821
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 815
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 816
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

.method protected drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    .locals 7
    .parameter "canvas"
    .parameter "pos"
    .parameter "drawStartRound"
    .parameter "drawEndRound"

    .prologue
    .line 774
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 776
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 777
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 778
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 779
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 780
    .local v2, boundRight:I
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mLeft:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 781
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mRight:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 783
    if-eqz p3, :cond_0

    .line 784
    iget v5, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 785
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 786
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 789
    :cond_0
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 790
    add-int/lit8 v5, p2, 0x1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 791
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 793
    if-eqz p4, :cond_1

    .line 794
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 795
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 796
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 799
    :cond_1
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 800
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 801
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 802
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 803
    return-void
.end method

.method protected drawStartRound(Landroid/graphics/Canvas;IZ)V
    .locals 10
    .parameter "canvas"
    .parameter "topPos"
    .parameter "drawStartRound"

    .prologue
    .line 647
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 649
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 650
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 651
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 652
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 653
    .local v2, boundRight:I
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mTruePaddingTop:I

    .line 654
    .local v5, listTop:I
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mLeft:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 655
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mRight:I

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 656
    iget-boolean v8, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    .line 657
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 658
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 660
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 662
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 663
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 664
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 666
    if-eqz p3, :cond_0

    .line 667
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 668
    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 669
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 708
    :cond_0
    :goto_0
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 709
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 710
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 711
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 712
    return-void

    .line 673
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    sub-int v8, p2, v8

    if-ge v5, v8, :cond_3

    move v7, v5

    .line 676
    .local v7, topLine:I
    :goto_1
    if-eqz p3, :cond_4

    .line 677
    add-int/lit8 v8, p2, -0x1

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 678
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 679
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcGridView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 681
    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v6, p2, v8

    .line 682
    .local v6, shaderH:I
    if-gez v6, :cond_2

    .line 683
    const/4 v6, 0x0

    .line 686
    :cond_2
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 687
    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 688
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 691
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 692
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 693
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 696
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 697
    iget v8, p0, Lcom/htc/widget/HtcGridView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 699
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcGridView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 673
    .end local v6           #shaderH:I
    .end local v7           #topLine:I
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    sub-int v7, p2, v8

    goto :goto_1

    .line 702
    .restart local v7       #topLine:I
    :cond_4
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 703
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 704
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcGridView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"
    .parameter "paint"

    .prologue
    .line 829
    if-nez p3, :cond_0

    .line 845
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 840
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 843
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mBd:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    return v0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    return v0
.end method

.method protected htcInvokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 375
    :cond_0
    return-void
.end method

.method protected htcReportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 385
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 388
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mHtcLastScrollState:I

    .line 391
    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    .line 333
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 335
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x1

    .line 339
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->htcInvokeOnItemScrollListener()V

    .line 396
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 400
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 403
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcGridView;->htcReportScrollStateChange(I)V

    .line 404
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/BouncingGridView;->onSizeChanged(IIII)V

    .line 304
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 307
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mTouchMode:I

    .line 312
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 314
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 318
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->setDataSetListener(Lcom/htc/widget/HtcAdapterView$OnDataSetListener;)V

    .line 423
    :cond_0
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 268
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mBottomBorderHeight:I

    .line 270
    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 238
    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    .line 248
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mBouncingEnabled:Z

    .line 279
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "divider"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 275
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScrollEnabled:Z

    .line 283
    if-eqz p1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFastScrollSectionsDirty()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->setSectionsDirty()V

    .line 299
    :cond_0
    return-void
.end method

.method public setFillEmpty(Z)V
    .locals 0
    .parameter "fillEmpty"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mShouldFillEmpty:Z

    .line 260
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 467
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 479
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    return-void
.end method

.method public setListBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    .line 252
    return-void
.end method

.method public setMiddleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 234
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 365
    return-void
.end method

.method public setRoundBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->setRoundRect()V

    .line 256
    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 263
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mTopBorderHeight:I

    .line 265
    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    .line 230
    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustBackgroundBorderHeight()V

    .line 243
    return-void
.end method
