.class public Lcom/htc/widget/HtcListView;
.super Lcom/htc/widget/BouncingListView;
.source "HtcListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field private static final BACKGROUND_BORDER_WIDTH:I = 0xe

.field private static final BACKGROUND_SHADOW_WIDTH:I = 0x9

.field public static final HTC_BOTTOM_BORDER_HEIGHT:I = 0xa

.field public static final HTC_LEFT_BORDER_HEIGHT:I = 0xa

.field public static final HTC_MYSTIC_BORDER_SIZE:I = 0x0

.field public static final HTC_RIGHT_BORDER_HEIGHT:I = 0xa

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

.field protected mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcLeftRound:Landroid/graphics/drawable/Drawable;

.field protected mHtcListBackground:Landroid/graphics/drawable/Drawable;

.field protected mHtcListViewStyle:Z

.field protected mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mHtcRightDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcRightRound:Landroid/graphics/drawable/Drawable;

.field protected mHtcRoundBackgroundColor:I

.field private final mHtcTempRect:Landroid/graphics/Rect;

.field protected mHtcTopDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcTopRound:Landroid/graphics/drawable/Drawable;

.field protected mLastItemBottom:I

.field protected mLastItemCnt:I

.field private mLeftBorderWidth:I

.field private mListTouchMode:I

.field private mOverListHeight:Z

.field private mRightBorderWidth:I

.field protected mRoundRect:Landroid/graphics/Rect;

.field protected mScreenBottom:I

.field private mSeparateSection:Z

.field private mShadowPaint:Landroid/graphics/Paint;

.field protected mShouldFillEmpty:Z

.field private mTopBorderHeight:I

.field private mTopRound:Z

.field private mTopRoundChecked:Z

.field private mTruePaddingBottom:I

.field private mTruePaddingLeft:I

.field private mTruePaddingRight:I

.field private mTruePaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    .line 122
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 125
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 130
    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 134
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 135
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 138
    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 140
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 142
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 145
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 148
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 149
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 731
    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 862
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 863
    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    .line 864
    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    .line 865
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    .line 866
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    .line 122
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 125
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 130
    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 134
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 135
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 138
    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 140
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 142
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 145
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 148
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 149
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 731
    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 862
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 863
    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    .line 864
    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    .line 865
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    .line 866
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 158
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    .line 122
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 125
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 130
    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 134
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 135
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 138
    iput v2, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 140
    iput-boolean v2, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 142
    iput-boolean v2, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 145
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 148
    iput-boolean v2, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 149
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 731
    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 862
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 863
    iput v1, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    .line 864
    iput v1, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    .line 865
    iput v1, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    .line 866
    iput v1, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    return v0
.end method

.method private adjustBackgroundBorderHeight()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 365
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScrollEnabled:Z

    .line 168
    invoke-super {p0, p0}, Lcom/htc/widget/BouncingListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->initXferPaint()V

    .line 171
    const/high16 v0, -0x3400

    invoke-static {p0, v0}, Lcom/htc/view/ViewWrapper;->setCornerStrokeColor(Landroid/view/View;I)V

    .line 172
    invoke-static {p0, v1}, Lcom/htc/view/ViewWrapper;->setCornerStrokeWidth(Landroid/view/View;I)V

    .line 173
    return-void
.end method

.method private initXferPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 184
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    return-void
.end method

.method private isDraggingItem(II)Z
    .locals 2
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 852
    iget v1, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    if-eq p1, v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    return v0

    .line 854
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    if-eq p2, v1, :cond_0

    .line 855
    iput p2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 856
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 192
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 193
    .local v2, htcContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    .local v3, res:Landroid/content/res/Resources;
    if-nez p2, :cond_0

    if-eqz p3, :cond_10

    .line 200
    :cond_0
    if-eqz p3, :cond_1

    .line 201
    const/4 v5, 0x0

    sget-object v6, Lcom/htc/R$styleable;->HtcListView:[I

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 205
    .local v4, typedArray:Landroid/content/res/TypedArray;
    :goto_0
    const/16 v5, 0x8

    const v6, 0x20d0074

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    .line 208
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    .line 211
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mHtcListViewStyle:Z

    .line 215
    iget-boolean v5, p0, Lcom/htc/widget/HtcListView;->mHtcListViewStyle:Z

    if-eqz v5, :cond_2

    .line 216
    sget-object v5, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 223
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    .line 228
    :goto_2
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    .line 233
    :goto_3
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 238
    :goto_4
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    .line 243
    :goto_5
    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcRightRound:Landroid/graphics/drawable/Drawable;

    .line 248
    :goto_6
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    .line 289
    :goto_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :goto_8
    const v5, 0x20a002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mHtcRoundBackgroundColor:I

    .line 317
    const v5, 0x20b0001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 319
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 320
    iget v5, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setLeftBorderWidth(I)V

    .line 321
    iget v5, p0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setRightBorderWidth(I)V

    .line 333
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_9
    return-void

    .line 203
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_1
    sget-object v5, Lcom/htc/R$styleable;->HtcListView:[I

    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    goto/16 :goto_0

    .line 218
    :cond_2
    sget-object v5, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 328
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "HtcListView"

    const-string v6, "resource not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 225
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 330
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :catch_1
    move-exception v1

    .line 331
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9

    .line 230
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 235
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 240
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 245
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcRightRound:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 250
    :cond_8
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 255
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 260
    :goto_a
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 265
    :goto_b
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 270
    :goto_c
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 275
    :goto_d
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 279
    :goto_e
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 282
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    .line 257
    :cond_a
    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 262
    :cond_b
    const v5, 0x2080694

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    .line 267
    :cond_c
    const v5, 0x2080669

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 272
    :cond_d
    const v5, 0x208068f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    .line 277
    :cond_e
    const v5, 0x20800d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    .line 284
    :cond_f
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    .line 292
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :cond_10
    const v5, 0x20d0074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    .line 293
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    .line 296
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 297
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    .line 298
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 299
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    .line 300
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    .line 301
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcRightRound:Landroid/graphics/drawable/Drawable;

    .line 302
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 304
    :cond_11
    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 305
    const v5, 0x2080669

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 306
    const v5, 0x2080694

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 307
    const v5, 0x208068f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 308
    const v5, 0x20800d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 309
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 310
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 323
    :cond_12
    iget v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 324
    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9
.end method

.method private setRoundRect()V
    .locals 6

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 337
    .local v2, scale:F
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 338
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x43a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 339
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x41a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 341
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    .line 342
    .local v0, colors:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 344
    iget v3, p0, Lcom/htc/widget/HtcListView;->mHtcRoundBackgroundColor:I

    aput v3, v0, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
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

    .line 348
    return-void
.end method

.method private updateEmptyHeight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 615
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

    .line 616
    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0

    .line 619
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v0, v1, v2

    .line 622
    .local v0, restAbove:I
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

    .line 625
    iget v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    if-gez v1, :cond_0

    .line 626
    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0
.end method

.method private updateEmptyWidth()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 636
    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    sub-int v0, v1, v2

    .line 642
    .local v0, restAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getRightBorderWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 645
    iget v1, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    if-gez v1, :cond_0

    .line 646
    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 870
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/BouncingListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 873
    .local v4, bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    .line 874
    .local v7, childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v12

    .line 875
    .local v12, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v14

    .line 876
    .local v14, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isStackFromBottom()Z

    move-result v16

    .line 900
    .local v16, isStackFromBottom:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 1107
    :cond_0
    return-void

    .line 905
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getListPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    move/from16 v25, v0

    add-int v18, v24, v25

    .line 910
    .local v18, listRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingTop:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 918
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v7, :cond_0

    .line 919
    add-int v24, v14, v15

    if-ltz v24, :cond_4

    add-int v24, v14, v15

    move/from16 v0, v24

    if-ge v0, v12, :cond_4

    .line 920
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 921
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 922
    .local v8, childLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    .line 923
    .local v10, childRight:I
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 924
    .local v19, tag:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 925
    .local v20, tagItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v20, v19

    .line 926
    check-cast v20, Lcom/htc/widget/HtcListItemSeparable;

    .line 928
    :cond_2
    add-int v24, v14, v15

    if-nez v24, :cond_3

    .line 930
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_5

    .line 932
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    .line 938
    :cond_3
    :goto_1
    add-int/lit8 v24, v15, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 939
    .local v9, childNext:Landroid/view/View;
    add-int v24, v14, v15

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 941
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_6

    .line 943
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .end local v5           #child:Landroid/view/View;
    .end local v8           #childLeft:I
    .end local v9           #childNext:Landroid/view/View;
    .end local v10           #childRight:I
    .end local v19           #tag:Ljava/lang/Object;
    .end local v20           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 934
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #childLeft:I
    .restart local v10       #childRight:I
    .restart local v19       #tag:Ljava/lang/Object;
    .restart local v20       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_1

    .line 945
    .restart local v9       #childNext:Landroid/view/View;
    :cond_6
    const/16 v24, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 976
    .end local v9           #childNext:Landroid/view/View;
    :catch_0
    move-exception v13

    .line 978
    .local v13, ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v24, "divider"

    const-string v25, "hit IndexOutOfBoundsException when drawing HTC Style bottom separater!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 948
    .end local v13           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v9       #childNext:Landroid/view/View;
    :cond_7
    if-eqz v9, :cond_4

    .line 951
    :try_start_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 952
    .local v21, tagNext:Ljava/lang/Object;
    const/16 v22, 0x0

    .line 953
    .local v22, tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 954
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v22, v0

    .line 957
    :cond_8
    if-eqz v19, :cond_4

    if-eqz v21, :cond_4

    .line 958
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v21}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 961
    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_a

    .line 962
    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_9

    .line 963
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_2

    .line 965
    :cond_9
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto :goto_2

    .line 968
    :cond_a
    if-eqz v22, :cond_b

    invoke-interface/range {v22 .. v22}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_b

    .line 969
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    .line 971
    :cond_b
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 984
    .end local v5           #child:Landroid/view/View;
    .end local v8           #childLeft:I
    .end local v9           #childNext:Landroid/view/View;
    .end local v10           #childRight:I
    .end local v15           #i:I
    .end local v18           #listRight:I
    .end local v19           #tag:Ljava/lang/Object;
    .end local v20           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .end local v21           #tagNext:Ljava/lang/Object;
    .end local v22           #tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getListPaddingBottom()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    move/from16 v25, v0

    add-int v17, v24, v25

    .line 991
    .local v17, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    if-lez v14, :cond_d

    add-int v24, v14, v7

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 994
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingTop:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1004
    if-nez v16, :cond_e

    .line 1005
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    .line 1006
    if-lez v7, :cond_e

    if-ne v7, v12, :cond_e

    .line 1007
    add-int/lit8 v24, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1008
    .restart local v5       #child:Landroid/view/View;
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 1009
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    .line 1015
    .end local v5           #child:Landroid/view/View;
    :cond_e
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    if-ge v15, v7, :cond_0

    .line 1016
    add-int v24, v14, v15

    if-ltz v24, :cond_11

    add-int v24, v14, v15

    move/from16 v0, v24

    if-ge v0, v12, :cond_11

    .line 1017
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1018
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    .line 1019
    .local v11, childTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1020
    .local v6, childBottom:I
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 1021
    .restart local v19       #tag:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1022
    .restart local v20       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v20, v19

    .line 1023
    check-cast v20, Lcom/htc/widget/HtcListItemSeparable;

    .line 1025
    :cond_f
    add-int v24, v14, v15

    if-nez v24, :cond_10

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1028
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v24

    sub-int v24, v6, v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    .line 1047
    :cond_10
    :goto_4
    add-int/lit8 v24, v15, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1048
    .restart local v9       #childNext:Landroid/view/View;
    add-int v24, v14, v15

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1051
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1052
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1015
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childBottom:I
    .end local v9           #childNext:Landroid/view/View;
    .end local v11           #childTop:I
    .end local v19           #tag:Ljava/lang/Object;
    .end local v20           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_11
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1029
    .restart local v5       #child:Landroid/view/View;
    .restart local v6       #childBottom:I
    .restart local v11       #childTop:I
    .restart local v19       #tag:Ljava/lang/Object;
    .restart local v20       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_12
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 1030
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move-object/from16 v23, v19

    .line 1031
    check-cast v23, Lcom/htc/widget/HtcListItemSeparableType;

    .line 1032
    .local v23, tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 1033
    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/HtcListItemSeparableType;->getTopRound()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    .line 1034
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v24

    sub-int v24, v6, v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_4

    .line 1036
    .end local v23           #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    :cond_13
    if-eqz v20, :cond_14

    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_14

    .line 1037
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 1038
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v11, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_4

    .line 1041
    :cond_14
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 1042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    .line 1043
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v11, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_4

    .line 1053
    .restart local v9       #childNext:Landroid/view/View;
    :cond_15
    :try_start_4
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 1054
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    .line 1055
    move-object/from16 v0, v19

    check-cast v0, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v23, v0

    .line 1056
    .restart local v23       #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 1057
    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 1058
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 1099
    .end local v9           #childNext:Landroid/view/View;
    .end local v23           #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    :catch_1
    move-exception v13

    .line 1101
    .restart local v13       #ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v24, "divider"

    const-string v25, "hit IndexOutOfBoundsException when drawing HTC Style bottom separater!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1059
    .end local v13           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v9       #childNext:Landroid/view/View;
    :cond_16
    if-eqz v20, :cond_17

    :try_start_5
    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_17

    .line 1061
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 1062
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 1063
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_5

    .line 1065
    :cond_17
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 1067
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_5

    .line 1070
    :cond_18
    if-eqz v9, :cond_11

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    .line 1074
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 1075
    .restart local v21       #tagNext:Ljava/lang/Object;
    const/16 v22, 0x0

    .line 1076
    .restart local v22       #tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 1077
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v22, v0

    .line 1080
    :cond_19
    if-eqz v19, :cond_11

    if-eqz v21, :cond_11

    .line 1081
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v21}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    move/from16 v0, v17

    if-ge v6, v0, :cond_11

    .line 1084
    invoke-interface/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_1b

    .line 1085
    if-eqz v22, :cond_1a

    invoke-interface/range {v22 .. v22}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 1086
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_5

    .line 1088
    :cond_1a
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_5

    .line 1091
    :cond_1b
    if-eqz v22, :cond_1c

    invoke-interface/range {v22 .. v22}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v24

    if-nez v24, :cond_1c

    .line 1092
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_5

    .line 1094
    :cond_1c
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 584
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->draw(Landroid/graphics/Canvas;)V

    .line 585
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 588
    :cond_0
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1543
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"

    .prologue
    .line 1528
    if-nez p3, :cond_0

    .line 1533
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 1531
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1532
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawContainer(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "topPos"
    .parameter "bottomPos"

    .prologue
    .line 831
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 832
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 833
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 834
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 835
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 836
    .local v2, boundRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 837
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 840
    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v5, p3, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 841
    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 842
    iget v5, p0, Lcom/htc/widget/HtcListView;->mRight:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 844
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawContainerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 845
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 846
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 847
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 848
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 849
    return-void

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v5, p2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method protected drawContainerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 813
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    .line 814
    .local v2, containerW:I
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v6

    .line 815
    .local v1, containerH:I
    mul-int v5, v2, v1

    if-gtz v5, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    mul-int v5, v2, v1

    new-array v0, v5, [I

    .line 818
    .local v0, colors:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    mul-int v5, v2, v1

    if-ge v4, v5, :cond_2

    .line 820
    const v5, -0xe1e1e2

    aput v5, v0, v4

    .line 818
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 822
    :cond_2
    if-lez v1, :cond_0

    .line 823
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 824
    .local v3, fillBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    .line 825
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 826
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 12
    .parameter "canvas"
    .parameter "bottomPos"
    .parameter "drawEndRound"

    .prologue
    .line 1265
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 1267
    .local v5, bounds:Landroid/graphics/Rect;
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 1268
    .local v4, boundTop:I
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 1269
    .local v1, boundBottom:I
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 1270
    .local v2, boundLeft:I
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 1273
    .local v3, boundRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1274
    iget v10, p0, Lcom/htc/widget/HtcListView;->mRight:I

    iget v11, p0, Lcom/htc/widget/HtcListView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/HtcListView;->mTruePaddingRight:I

    sub-int v7, v10, v11

    .line 1275
    .local v7, listRight:I
    iget v10, p0, Lcom/htc/widget/HtcListView;->mTop:I

    add-int/lit8 v10, v10, 0x0

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1276
    iget v10, p0, Lcom/htc/widget/HtcListView;->mBottom:I

    add-int/lit8 v10, v10, 0x0

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1277
    iget-boolean v10, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v10, :cond_1

    .line 1279
    if-eqz p3, :cond_0

    .line 1281
    add-int/lit8 v10, p2, -0xe

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1282
    iput p2, v5, Landroid/graphics/Rect;->right:I

    .line 1283
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1286
    :cond_0
    iput p2, v5, Landroid/graphics/Rect;->left:I

    .line 1287
    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1288
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1392
    .end local v7           #listRight:I
    :goto_0
    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1393
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 1394
    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 1395
    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1396
    return-void

    .line 1293
    .restart local v7       #listRight:I
    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    const/high16 v11, -0x8000

    if-ne v10, v11, :cond_2

    .line 1294
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->updateEmptyWidth()V

    .line 1296
    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    add-int/2addr v10, p2

    iget v11, p0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    add-int v0, v10, v11

    .line 1299
    .local v0, baseLine:I
    if-eqz p3, :cond_3

    .line 1300
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 1301
    add-int/lit8 v10, v0, 0x1

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 1302
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v10}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1305
    :cond_3
    iget v10, p0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    sub-int v10, v0, v10

    add-int/lit8 v10, v10, 0x0

    add-int/lit8 v10, v10, -0xe

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1307
    iget v10, p0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    sub-int v10, v0, v10

    add-int/lit8 v10, v10, 0x0

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 1309
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1312
    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v9, v10, 0x9

    .line 1313
    .local v9, shaderW:I
    iget v10, v5, Landroid/graphics/Rect;->right:I

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1314
    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 1315
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1318
    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 1319
    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1320
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1324
    .end local v0           #baseLine:I
    .end local v7           #listRight:I
    .end local v9           #shaderW:I
    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcListView;->mBottom:I

    iget v11, p0, Lcom/htc/widget/HtcListView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/HtcListView;->mTruePaddingBottom:I

    sub-int v6, v10, v11

    .line 1327
    .local v6, listBottom:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v10, :cond_6

    .line 1329
    if-eqz p3, :cond_5

    .line 1331
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v10, p2, v10

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1332
    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    .line 1333
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1336
    :cond_5
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1337
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1338
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1343
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    const/high16 v11, -0x8000

    if-ne v10, v11, :cond_7

    .line 1344
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->updateEmptyHeight()V

    .line 1347
    :cond_7
    iget v10, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    add-int v0, p2, v10

    .line 1348
    .restart local v0       #baseLine:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    if-eqz v10, :cond_8

    .line 1349
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1350
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v10, p2

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1351
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1355
    :cond_8
    if-eqz p3, :cond_9

    .line 1356
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 1357
    add-int/lit8 v10, v0, 0x1

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1358
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v10}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1360
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1361
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1362
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1365
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v8, p2, v10

    .line 1366
    .local v8, shaderH:I
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1367
    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1368
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1370
    iget v10, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v10, v0, v10

    add-int/lit8 v10, v10, 0x0

    iget v11, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int/2addr v10, v11

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1372
    iget v10, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v10, v0, v10

    add-int/lit8 v10, v10, 0x0

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1374
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1377
    .end local v8           #shaderH:I
    :cond_9
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1378
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1379
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1381
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v8, p2, v10

    .line 1382
    .restart local v8       #shaderH:I
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1383
    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1384
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"

    .prologue
    .line 1462
    if-nez p3, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    move-object v1, p3

    .line 1466
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1468
    .local v0, clipDivider:Z
    if-nez v0, :cond_2

    .line 1469
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1475
    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1477
    if-eqz v0, :cond_0

    .line 1478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1471
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1472
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
    .line 1402
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 1404
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1405
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1406
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1407
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 1410
    .local v2, boundRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1411
    iget v5, p0, Lcom/htc/widget/HtcListView;->mTop:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1412
    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottom:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1414
    if-eqz p3, :cond_0

    .line 1415
    add-int/lit8 v5, p2, -0xe

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1416
    iput p2, v4, Landroid/graphics/Rect;->right:I

    .line 1417
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1420
    :cond_0
    iput p2, v4, Landroid/graphics/Rect;->left:I

    .line 1421
    add-int/lit8 v5, p2, 0x1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1422
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1424
    if-eqz p4, :cond_1

    .line 1425
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1426
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0xe

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1427
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1452
    :cond_1
    :goto_0
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 1453
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1454
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 1455
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 1456
    return-void

    .line 1433
    :cond_2
    if-eqz p3, :cond_3

    .line 1434
    iget v5, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1435
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1436
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1439
    :cond_3
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 1440
    add-int/lit8 v5, p2, 0x1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1441
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1443
    if-eqz p4, :cond_1

    .line 1444
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1445
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1446
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawStartRound(Landroid/graphics/Canvas;IZ)V
    .locals 12
    .parameter "canvas"
    .parameter "topPos"
    .parameter "drawStartRound"

    .prologue
    .line 1114
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 1116
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1117
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1118
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1119
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 1122
    .local v2, boundRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1123
    iget v5, p0, Lcom/htc/widget/HtcListView;->mTruePaddingLeft:I

    .line 1124
    .local v5, listLeft:I
    iget v10, p0, Lcom/htc/widget/HtcListView;->mTop:I

    add-int/lit8 v10, v10, 0x0

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 1125
    iget v10, p0, Lcom/htc/widget/HtcListView;->mBottom:I

    add-int/lit8 v10, v10, 0x0

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 1126
    iget-boolean v10, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v10, :cond_1

    .line 1127
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1128
    iget v10, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    invoke-static {v10, p2}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x0

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 1130
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v10}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1132
    iget v10, v4, Landroid/graphics/Rect;->right:I

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 1133
    iput p2, v4, Landroid/graphics/Rect;->right:I

    .line 1134
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1136
    if-eqz p3, :cond_0

    .line 1137
    iput p2, v4, Landroid/graphics/Rect;->left:I

    .line 1139
    add-int/lit8 v10, p2, 0xe

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 1141
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1254
    .end local v5           #listLeft:I
    :cond_0
    :goto_0
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 1255
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1256
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 1257
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 1258
    return-void

    .line 1144
    .restart local v5       #listLeft:I
    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    sub-int v10, p2, v10

    if-ge v5, v10, :cond_3

    move v9, v5

    .line 1147
    .local v9, topLine:I
    :goto_1
    if-eqz p3, :cond_4

    .line 1148
    add-int/lit8 v10, p2, -0x1

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 1149
    iput p2, v4, Landroid/graphics/Rect;->right:I

    .line 1150
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v10}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1152
    add-int/lit8 v8, p2, -0x9

    .line 1153
    .local v8, shaderW:I
    if-gez v8, :cond_2

    .line 1154
    const/4 v8, 0x0

    .line 1157
    :cond_2
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1158
    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 1159
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1162
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 1163
    iput p2, v4, Landroid/graphics/Rect;->right:I

    .line 1164
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1167
    iput p2, v4, Landroid/graphics/Rect;->left:I

    .line 1169
    add-int/lit8 v10, p2, 0xe

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 1172
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1144
    .end local v8           #shaderW:I
    .end local v9           #topLine:I
    :cond_3
    iget v10, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    sub-int v9, p2, v10

    goto :goto_1

    .line 1175
    .restart local v9       #topLine:I
    :cond_4
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1176
    iput p2, v4, Landroid/graphics/Rect;->right:I

    .line 1177
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1181
    .end local v5           #listLeft:I
    .end local v9           #topLine:I
    :cond_5
    iget v6, p0, Lcom/htc/widget/HtcListView;->mTruePaddingTop:I

    .line 1184
    .local v6, listTop:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v10, :cond_6

    .line 1185
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 1186
    iget v10, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    invoke-static {v10, p2}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x0

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 1188
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v10}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1190
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 1191
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1192
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1194
    if-eqz p3, :cond_0

    .line 1195
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 1197
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v10, p2

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 1199
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1203
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v10, p2, v10

    if-ge v6, v10, :cond_8

    move v9, v6

    .line 1206
    .restart local v9       #topLine:I
    :goto_2
    if-eqz p3, :cond_9

    .line 1207
    add-int/lit8 v10, p2, -0x1

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 1208
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1209
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v10}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1211
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v7, p2, v10

    .line 1212
    .local v7, shaderH:I
    if-gez v7, :cond_7

    .line 1213
    const/4 v7, 0x0

    .line 1216
    :cond_7
    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 1218
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1219
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1222
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1223
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1224
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1227
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 1229
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v10, p2

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 1232
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1203
    .end local v7           #shaderH:I
    .end local v9           #topLine:I
    :cond_8
    iget v10, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v9, p2, v10

    goto :goto_2

    .line 1235
    .restart local v9       #topLine:I
    :cond_9
    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 1236
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1237
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1240
    iget v10, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v7, p2, v10

    .line 1241
    .restart local v7       #shaderH:I
    if-gez v7, :cond_a

    .line 1242
    const/4 v7, 0x0

    .line 1244
    :cond_a
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1245
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1246
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v10, v11}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"
    .parameter "paint"

    .prologue
    .line 1488
    if-nez p3, :cond_0

    .line 1522
    :goto_0
    return-void

    .line 1512
    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1513
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableScrollWhenResurrectSelection(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mScrollWhenResurrectSelection:Z

    .line 1618
    return-void
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 1579
    iget v0, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    return v0
.end method

.method public getListSelectorPressed()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1627
    .local v0, listSelector:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 1628
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .end local v0           #listSelector:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1630
    :cond_0
    return-object v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 1574
    iget v0, p0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    return v0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 1568
    iget v0, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    return v0
.end method

.method protected htcInvokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 661
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 665
    :cond_0
    return-void
.end method

.method protected htcReportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 675
    iget v0, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 678
    iput p1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 681
    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public isOverListHeight()Z
    .locals 1

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 603
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 605
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 606
    const/4 v1, 0x1

    .line 609
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

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
    const/high16 v0, -0x8000

    .line 1594
    iput v0, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 1596
    iput v0, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 1598
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/BouncingListView;->onLayout(ZIIII)V

    .line 1599
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->htcInvokeOnItemScrollListener()V

    .line 695
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 699
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 713
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcListView;->htcReportScrollStateChange(I)V

    .line 714
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/BouncingListView;->onSizeChanged(IIII)V

    .line 558
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 561
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 566
    iget v2, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 569
    .local v1, mInputManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 573
    .end local v1           #mInputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 575
    .local v0, intercepted:Z
    if-eqz v0, :cond_1

    .line 576
    const/4 v2, 0x1

    .line 579
    .end local v0           #intercepted:Z
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 723
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 725
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->setDataSetListener(Lcom/htc/widget/HtcAdapterView$OnDataSetListener;)V

    .line 728
    :cond_0
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 486
    iput p1, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    .line 488
    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 383
    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 402
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 403
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mBouncingEnabled:Z

    .line 529
    return-void
.end method

.method public setCompletedTopRound(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1612
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 1613
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "divider"

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 520
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScrollEnabled:Z

    .line 534
    if-eqz p1, :cond_1

    .line 535
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFastScrollSectionsDirty()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->setSectionsDirty()V

    .line 553
    :cond_0
    return-void
.end method

.method public setFillEmpty(Z)V
    .locals 0
    .parameter "fillEmpty"

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    .line 468
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 784
    if-eqz p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 798
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 810
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 1
    .parameter "isHorizontal"

    .prologue
    .line 1586
    if-eqz p1, :cond_0

    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    .line 1588
    return-void

    .line 1586
    :cond_0
    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    goto :goto_0
.end method

.method public setLeftBorderWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 497
    iput p1, p0, Lcom/htc/widget/HtcListView;->mLeftBorderWidth:I

    .line 499
    return-void
.end method

.method public setLeftDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcLeftDivider:Landroid/graphics/drawable/Drawable;

    .line 413
    return-void
.end method

.method public setLeftRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcLeftRound:Landroid/graphics/drawable/Drawable;

    .line 431
    return-void
.end method

.method public setListBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    .line 450
    return-void
.end method

.method public setMiddleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 374
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 655
    return-void
.end method

.method public setRightBorderWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 507
    iput p1, p0, Lcom/htc/widget/HtcListView;->mRightBorderWidth:I

    .line 509
    return-void
.end method

.method public setRightDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcRightDivider:Landroid/graphics/drawable/Drawable;

    .line 422
    return-void
.end method

.method public setRightRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcRightRound:Landroid/graphics/drawable/Drawable;

    .line 440
    return-void
.end method

.method public setRoundBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 459
    return-void
.end method

.method public setRoundCorner(ZZ)V
    .locals 0
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    .line 1634
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 1635
    iput-boolean p2, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 1636
    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 476
    iput p1, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    .line 478
    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 358
    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 392
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 393
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 11
    .parameter "position"

    .prologue
    const v10, 0x20201c8

    const v9, 0x2020085

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 743
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v2

    .line 744
    .local v2, first:I
    sub-int v4, p1, v2

    .line 745
    .local v4, target_child:I
    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v6

    .line 747
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 755
    instance-of v7, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_3

    .line 756
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem;->isBottomRounded()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 758
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 759
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_5

    instance-of v7, v3, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v7, :cond_5

    .line 760
    check-cast v3, Lcom/htc/widget/HtcListItemSeparableType;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    .line 762
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_5
    instance-of v7, v3, Lcom/htc/widget/HtcListItemSeparable;

    if-eqz v7, :cond_0

    .line 765
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 766
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 767
    .local v1, childNext:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v10, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 770
    :cond_6
    iget-boolean v7, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    if-eqz v7, :cond_0

    move v6, v5

    goto :goto_0
.end method
