.class public abstract Lcom/htc/opensense/widget/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# static fields
.field protected static final ALLOW_ZOOM:I = 0x0

.field protected static final MAX_BITMAP_SIZE_RATIO:F = 2.0f

.field protected static final MAX_HQ_SCRREN_SIZE_RATIO:F = 5.0f

.field protected static final MAX_PIXELS_H:F = 1592.0f

.field protected static final MAX_PIXELS_W:F = 2592.0f

.field protected static final MAX_SCRREN_SIZE_RATIO:F = 3.0f

.field protected static final MAX_ZOOM:F = 2.0f

.field protected static final MIN_ZOOM:F = 1.0f

.field static final NORMAL_MODE:I = 0x0

.field static final ONLINE_MODE:I = 0x1

.field protected static final OVER_MAX_ZOOM:I = 0x1

.field protected static final OVER_MIN_ZOOM:I = 0x2

.field public static final STATE_FAILED:S = 0x7s

.field public static final STATE_LOADING:S = 0x6s

.field public static final STATE_SUCCESS:S = 0x8s

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"

.field static final TOLERANCE_ZOOM:F = 0.2f

.field protected static final TOLERANCE_ZOOM_IN:F = 1.2f

.field protected static final TOLERANCE_ZOOM_OUT:F = 0.8f

.field protected static final UPBOUND_RATIO:F = 10.0f

.field protected static final VIEW_BEST_FIT:I = 0x3

.field protected static final VIEW_BEST_FIT_L:I = 0x1

.field protected static final VIEW_BEST_FIT_P:I = 0x2

.field protected static final VIEW_NORMAL:I = 0x0

.field protected static final ZOOM_IN_STEP:F = 1.2f

.field protected static final ZOOM_OUT_STEP:F = 0.8f

.field static sNewZoomControl:Z = false

.field static final sPanRate:F = 7.0f

.field static final sScaleRate:F = 1.2f


# instance fields
.field private final USE_PERFECT_FIT_OPTIMIZATION:Z

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBaseMinZoom:F

.field protected mBitmapDisplayed:Landroid/graphics/Bitmap;

.field protected mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

.field protected mBitmapIsThumbnail:Z

.field protected mBitmapOriH:I

.field protected mBitmapOriW:I

.field protected mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mDisplayMatrixBackup:Landroid/graphics/Matrix;

.field private mDoubleTapZoom:F

.field protected mFullBitmap:Landroid/graphics/Bitmap;

.field public mG1Matrix:Landroid/graphics/Matrix;

.field protected mHQLoaded:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIsZooming:Z

.field protected mLastZoomCenterX:F

.field protected mLastZoomCenterY:F

.field private mMatrixValues:[F

.field private mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPerfectFitBitmap:Landroid/graphics/Bitmap;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I

.field protected mThumbBitmap:Landroid/graphics/Bitmap;

.field private mUseBestFit:Z

.field protected mViewMode:I

.field private mZoomStatus:I

.field private mZoomStep:I

.field private mode:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->sNewZoomControl:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 585
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->USE_PERFECT_FIT_OPTIMIZATION:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mG1Matrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    .line 75
    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHQLoaded:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    .line 96
    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    .line 101
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    .line 102
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    .line 127
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 136
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 140
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 142
    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    .line 143
    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    .line 148
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    .line 159
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 586
    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->init()V

    .line 587
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 590
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->USE_PERFECT_FIT_OPTIMIZATION:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mG1Matrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    .line 75
    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHQLoaded:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    .line 96
    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    .line 101
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    .line 102
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    .line 127
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 136
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 140
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 142
    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    .line 143
    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    .line 148
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    .line 159
    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 591
    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->init()V

    .line 592
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/ImageViewTouchBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/ImageViewTouchBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    return p1
.end method

.method static synthetic access$008(Lcom/htc/opensense/widget/ImageViewTouchBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    return v0
.end method

.method private describe(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 818
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 819
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    const-string v1, "%08x: RECYCLED"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 822
    :cond_1
    const-string v1, "%08x: LIVE"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, "%d x %d (size == %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 595
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 596
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 597
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 598
    return-void
.end method

.method private static mapRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "matrix"
    .parameter "dst"
    .parameter "src"

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method static mapXPoint(Landroid/graphics/Matrix;I)I
    .locals 4
    .parameter "matrix"
    .parameter "point"

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 237
    .local v0, xy:[F
    int-to-float v1, p1

    aput v1, v0, v3

    .line 238
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 239
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 240
    aget v1, v0, v3

    float-to-int v1, v1

    return v1
.end method

.method private onZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mIsZooming:Z

    .line 810
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 813
    :cond_0
    return-void
.end method

.method private static translatePoint(Landroid/graphics/Matrix;[F)V
    .locals 0
    .parameter "matrix"
    .parameter "xy"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 225
    return-void
.end method

.method private zoomAnimationByFrame(FIIIIIIFI)V
    .locals 12
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "cx"
    .parameter "cy"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "currScale"
    .parameter "stepFlow"

    .prologue
    .line 2054
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;

    move-object v1, p0

    move/from16 v2, p6

    move/from16 v3, p4

    move/from16 v4, p9

    move/from16 v5, p7

    move/from16 v6, p5

    move/from16 v7, p8

    move v8, p1

    move v9, p2

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/htc/opensense/widget/ImageViewTouchBase$5;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;IIIIIFFII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2094
    return-void
.end method

.method private zoomAnimationByTime(FIIIIIIFF)V
    .locals 15
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "cx"
    .parameter "cy"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "currScale"
    .parameter "durationMs"

    .prologue
    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2163
    .local v4, startTime:J
    const-string v0, "Justin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before zoom in mat "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenAnimationView;->OnAnimationStart(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V

    .line 2165
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 2167
    .local v2, oldScale:F
    iget-object v14, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense/widget/ImageViewTouchBase$6;

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v6, p6

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p5

    move/from16 v10, p8

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/htc/opensense/widget/ImageViewTouchBase$6;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FFJIIIIFFII)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2220
    return-void
.end method


# virtual methods
.method protected afterZoomAnimation(FF)V
    .locals 0
    .parameter "atX"
    .parameter "atY"

    .prologue
    .line 1146
    return-void
.end method

.method protected beginZoomAnimation()V
    .locals 0

    .prologue
    .line 1142
    return-void
.end method

.method protected calculateZoomRatio(FFFF)V
    .locals 11
    .parameter "vw"
    .parameter "vh"
    .parameter "bw"
    .parameter "bh"

    .prologue
    const/high16 v10, 0x4040

    const/high16 v9, 0x4020

    const/high16 v8, 0x3f80

    const/high16 v7, 0x4000

    .line 976
    const/4 v0, 0x0

    .line 978
    .local v0, bTinyBmp:Z
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    if-nez v6, :cond_2

    .line 979
    :cond_0
    div-float v6, p1, v7

    cmpg-float v6, p3, v6

    if-gez v6, :cond_1

    div-float v6, p2, v7

    cmpg-float v6, p4, v6

    if-gez v6, :cond_1

    .line 980
    const/4 v0, 0x1

    .line 989
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 992
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    .line 993
    iput v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 994
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 1062
    :goto_1
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_8

    .line 1064
    const-string v6, "ImageViewTouchBase"

    const-string v7, "[Opensence][Widget][ImageViewTouchBase][calculateZoomRatio]: mMaxZoom < 1F !"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_2
    return-void

    .line 981
    :cond_2
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v6, v6

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v6, v6

    cmpg-float v6, v6, p2

    if-gez v6, :cond_1

    .line 982
    const/4 v0, 0x1

    goto :goto_0

    .line 996
    :cond_3
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    packed-switch v6, :pswitch_data_0

    .line 1008
    move v2, p3

    .line 1009
    .local v2, bww:F
    move v1, p4

    .line 1011
    .local v1, bhh:F
    const-string v6, "ImageViewTouchBase"

    const-string v7, "[Opensence][Widget][ImageViewTouchBase][calculateZoomRatio]: mViewMode should\'t be VIEW_BEST_FIT ! Return!"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 998
    .end local v1           #bhh:F
    .end local v2           #bww:F
    :pswitch_0
    move v2, p3

    .line 999
    .restart local v2       #bww:F
    move v1, p4

    .line 1016
    .restart local v1       #bhh:F
    :goto_3
    div-float v5, p1, v2

    .line 1017
    .local v5, rw:F
    div-float v4, p2, v1

    .line 1018
    .local v4, rh:F
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    .line 1023
    const/high16 v6, 0x4522

    div-float v5, v6, v2

    .line 1024
    const/high16 v6, 0x44c7

    div-float v4, v6, v1

    .line 1025
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1032
    .local v3, real:F
    const/high16 v6, 0x4120

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1035
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    div-float v6, v3, v6

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 1039
    cmpl-float v6, p2, p1

    if-lez v6, :cond_5

    .line 1040
    cmpl-float v6, p3, p4

    if-lez v6, :cond_4

    .line 1041
    iput v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 1054
    :goto_4
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1055
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    const v7, 0x3f99999a

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_1

    .line 1003
    .end local v1           #bhh:F
    .end local v2           #bww:F
    .end local v3           #real:F
    .end local v4           #rh:F
    .end local v5           #rw:F
    :pswitch_1
    move v2, p4

    .line 1004
    .restart local v2       #bww:F
    move v1, p3

    .line 1005
    .restart local v1       #bhh:F
    goto :goto_3

    .line 1043
    .restart local v3       #real:F
    .restart local v4       #rh:F
    .restart local v5       #rw:F
    :cond_4
    iput v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_4

    .line 1046
    :cond_5
    cmpg-float v6, p3, p4

    if-gez v6, :cond_6

    .line 1047
    iput v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_4

    .line 1049
    :cond_6
    iput v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_4

    .line 1057
    :cond_7
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto/16 :goto_1

    .line 1067
    .end local v1           #bhh:F
    .end local v2           #bww:F
    .end local v3           #real:F
    .end local v4           #rh:F
    .end local v5           #rw:F
    :cond_8
    const-string v6, "ImageViewTouchBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Touch Image name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bw : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bh : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MaxZoom ratio : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", BaseMinZoom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", double tap zoom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected cancelZoomAnimation()V
    .locals 0

    .prologue
    .line 2155
    return-void
.end method

.method public center(ZZZ)V
    .locals 14
    .parameter "vertical"
    .parameter "horizontal"
    .parameter "animate"

    .prologue
    .line 483
    iget-object v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v10, :cond_0

    .line 529
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 488
    .local v5, m:Landroid/graphics/Matrix;
    const/4 v10, 0x2

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    .line 489
    .local v6, topLeft:[F
    const/4 v10, 0x2

    new-array v1, v10, [F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    aput v11, v1, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    aput v11, v1, v10

    .line 491
    .local v1, botRight:[F
    invoke-static {v5, v6}, Lcom/htc/opensense/widget/ImageViewTouchBase;->translatePoint(Landroid/graphics/Matrix;[F)V

    .line 492
    invoke-static {v5, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->translatePoint(Landroid/graphics/Matrix;[F)V

    .line 494
    const/4 v10, 0x1

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    sub-float v4, v10, v11

    .line 495
    .local v4, height:F
    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x0

    aget v11, v6, v11

    sub-float v9, v10, v11

    .line 497
    .local v9, width:F
    const/4 v2, 0x0

    .local v2, deltaX:F
    const/4 v3, 0x0

    .line 499
    .local v3, deltaY:F
    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v7

    .line 501
    .local v7, viewHeight:I
    int-to-float v10, v7

    cmpg-float v10, v4, v10

    if-gez v10, :cond_4

    .line 502
    int-to-float v10, v7

    sub-float/2addr v10, v4

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v6, v11

    sub-float v3, v10, v11

    .line 510
    .end local v7           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v8

    .line 512
    .local v8, viewWidth:I
    int-to-float v10, v8

    cmpg-float v10, v9, v10

    if-gez v10, :cond_6

    .line 513
    int-to-float v10, v8

    sub-float/2addr v10, v9

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v6, v11

    sub-float v2, v10, v11

    .line 521
    .end local v8           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/opensense/widget/ImageViewTouchBase;->postTranslate(FF)V

    .line 522
    if-eqz p3, :cond_3

    .line 523
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v10, v2

    const/4 v11, 0x0

    neg-float v12, v3

    const/4 v13, 0x0

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 524
    .local v0, a:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 525
    const-wide/16 v10, 0xfa

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 526
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setAnimation(Landroid/view/animation/Animation;)V

    .line 528
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto/16 :goto_0

    .line 503
    .restart local v7       #viewHeight:I
    :cond_4
    const/4 v10, 0x1

    aget v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 504
    const/4 v10, 0x1

    aget v10, v6, v10

    neg-float v3, v10

    goto :goto_1

    .line 505
    :cond_5
    const/4 v10, 0x1

    aget v10, v1, v10

    int-to-float v11, v7

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    sub-float v3, v10, v11

    goto :goto_1

    .line 514
    .end local v7           #viewHeight:I
    .restart local v8       #viewWidth:I
    :cond_6
    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 515
    const/4 v10, 0x0

    aget v10, v6, v10

    neg-float v2, v10

    goto :goto_2

    .line 516
    :cond_7
    const/4 v10, 0x0

    aget v10, v1, v10

    int-to-float v11, v8

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 517
    int-to-float v10, v8

    const/4 v11, 0x0

    aget v11, v1, v11

    sub-float v2, v10, v11

    goto :goto_2

    .line 488
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method changeMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 167
    iput p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    .line 168
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 358
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->clearBitmaps()V

    .line 359
    return-void
.end method

.method public clearBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 271
    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 274
    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 277
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 278
    return-void
.end method

.method public copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 532
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 533
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 541
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 545
    :cond_0
    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 546
    iput-object v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 548
    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 551
    :cond_1
    iget v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    .line 552
    iput v4, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    .line 555
    iput-object v3, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 556
    iput-object v3, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 557
    iput-boolean v2, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 558
    iput v4, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 560
    invoke-virtual {p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 561
    invoke-virtual {p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 569
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 570
    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 572
    return-void
.end method

.method protected doesScrolling()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method dumpMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "title"
    .parameter "m"

    .prologue
    .line 163
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump matrix - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public forceRecycleBitmaps()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 332
    :cond_1
    invoke-virtual {p0, v1, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 333
    return-void
.end method

.method getBaseMinZoom()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    return v0
.end method

.method getDoubleTapZoom()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 791
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getMaxZoom()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method protected getRealScale()F
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getSkewX(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 627
    if-eqz p1, :cond_0

    .line 628
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSkewY(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 621
    if-eqz p1, :cond_0

    .line 622
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTranslateX()F
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getTranslateX(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 639
    if-eqz p1, :cond_0

    .line 640
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTranslateY()F
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getTranslateY(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 634
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 602
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getZoomStatus()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    return v0
.end method

.method public isBitmapRecycled()Z
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1731
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    goto :goto_0
.end method

.method public isDisplayBitmapReady()Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullBitmapReady()Z
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHQBitmapReady()Z
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHQLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 203
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomTo(F)V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 184
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 186
    sub-int v1, p4, p2

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    .line 187
    sub-int v1, p5, p3

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    .line 189
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 190
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 192
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    :cond_0
    return-void
.end method

.method protected panBy(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1724
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->postTranslate(FF)V

    .line 1725
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    .line 1726
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1721
    return-void
.end method

.method protected reCalculateSupp()V
    .locals 0

    .prologue
    .line 895
    return-void
.end method

.method public recycleBitmap(Z)V
    .locals 3
    .parameter "bIsThumb"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    if-ne v1, p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    iput-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 355
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    iput-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public recycleBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 297
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 298
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1773
    .local v0, t1:J
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 1774
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_1

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 1775
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_2

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1776
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    if-eqz v4, :cond_3

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    .line 1777
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 1778
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1779
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 1781
    :cond_4
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 1782
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1783
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 1785
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 1786
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1787
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 1789
    :cond_6
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    .line 1790
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1791
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    .line 1793
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_8

    .line 1794
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    .line 1796
    :cond_8
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_9

    .line 1797
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 1799
    :cond_9
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    .line 1800
    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 1802
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1804
    .local v2, t2:J
    return-void
.end method

.method protected setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 11
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x4000

    .line 658
    if-nez p1, :cond_0

    .line 768
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 664
    .local v6, vw:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v5, v7

    .line 665
    .local v5, vh:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v2, v7

    .line 666
    .local v2, bw:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 669
    .local v0, bh:F
    cmpl-float v7, v6, v5

    if-lez v7, :cond_2

    .line 670
    cmpl-float v7, v2, v0

    if-ltz v7, :cond_1

    .line 671
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    .line 681
    :goto_1
    invoke-virtual {p0, v6, v5, v2, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->calculateZoomRatio(FFFF)V

    .line 693
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 694
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    if-eqz v7, :cond_4

    .line 696
    const/high16 v7, -0x3d4c

    div-float v8, v2, v10

    div-float v9, v0, v10

    invoke-virtual {p2, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 699
    move v3, v2

    .line 700
    .local v3, bww:F
    move v1, v0

    .line 707
    .local v1, bhh:F
    :goto_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getBaseMinZoom()F

    move-result v4

    .line 708
    .local v4, scale:F
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 709
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v3, v4

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v1, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 673
    .end local v1           #bhh:F
    .end local v3           #bww:F
    .end local v4           #scale:F
    :cond_1
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    .line 675
    :cond_2
    cmpl-float v7, v2, v0

    if-lez v7, :cond_3

    .line 676
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    .line 678
    :cond_3
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    .line 703
    :cond_4
    move v3, v2

    .line 704
    .restart local v3       #bww:F
    move v1, v0

    .restart local v1       #bhh:F
    goto :goto_2
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "bmp"
    .parameter "matrix"

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    .line 1751
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    .line 1764
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 1765
    iput-object p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1767
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1768
    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1769
    :goto_0
    return-void

    .line 1753
    :cond_1
    if-nez p1, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 1756
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    .line 1759
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1760
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "isThumbnail"

    .prologue
    .line 250
    new-instance v1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;

    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 251
    .local v1, mydrawble:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 259
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 262
    iput-boolean p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 263
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
    .locals 20
    .parameter "bitmap"
    .parameter "resetSupp"
    .parameter "isThumb"

    .prologue
    .line 367
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 369
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "bitmap must not be mPerfectFitBitmap"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 372
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v15

    .line 373
    .local v15, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v14

    .line 375
    .local v14, viewHeight:I
    if-gtz v15, :cond_1

    .line 376
    new-instance v17, Lcom/htc/opensense/widget/ImageViewTouchBase$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/opensense/widget/ImageViewTouchBase$1;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;Landroid/graphics/Bitmap;ZZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 467
    :goto_0
    return-void

    .line 385
    :cond_1
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_5

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 401
    :cond_3
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 404
    const/16 v17, 0x1

    invoke-static/range {p1 .. p1}, Lcom/htc/opensense/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->usePerfectFitBitmap()Z

    move-result v17

    if-nez v17, :cond_7

    .line 407
    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 456
    :goto_2
    if-eqz p2, :cond_d

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 466
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_0

    .line 393
    :cond_5
    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    :cond_6
    const-string v17, "ImageViewTouchBase"

    const-string v18, "set Full/HQ(1:1) Image"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 411
    :cond_7
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 412
    .local v10, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 416
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    .line 423
    :cond_a
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    .local v7, canvas:Landroid/graphics/Canvas;
    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 429
    .local v6, bw:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 430
    .local v5, bh:I
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 431
    .local v16, widthScale:F
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 433
    .local v9, heightScale:F
    cmpl-float v17, v16, v9

    if-lez v17, :cond_b

    .line 434
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 435
    .local v12, translateX:I
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 441
    .local v13, translateY:I
    :goto_4
    new-instance v11, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 442
    .local v11, src:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    sub-int v18, v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v12, v13, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    .local v8, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v11, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 448
    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 449
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

    .line 437
    .end local v8           #dst:Landroid/graphics/Rect;
    .end local v11           #src:Landroid/graphics/Rect;
    .end local v12           #translateX:I
    .end local v13           #translateY:I
    :cond_b
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 438
    .restart local v12       #translateX:I
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .restart local v13       #translateY:I
    goto :goto_4

    .line 452
    .end local v5           #bh:I
    .end local v6           #bw:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #heightScale:F
    .end local v10           #matrix:Landroid/graphics/Matrix;
    .end local v12           #translateX:I
    .end local v13           #translateY:I
    .end local v16           #widthScale:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 453
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_2

    .line 460
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->reCalculateSupp()V

    goto/16 :goto_3
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    return-void
.end method

.method public setUseBestFit(Z)V
    .locals 0
    .parameter "bestFit"

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mUseBestFit:Z

    .line 654
    return-void
.end method

.method protected smartZoom(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "atX"
    .parameter "atY"
    .parameter "durationMs"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 1241
    .local v5, oldScale:F
    sub-float v0, p1, v5

    div-float v6, v0, p4

    .line 1242
    .local v6, incrementPerMs:F
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_0

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1251
    .local v3, startTime:J
    iget-object v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/widget/ImageViewTouchBase$3;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public switchBitmap(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 304
    .local v0, bmp:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 316
    :goto_1
    return-void

    .line 302
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 306
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 308
    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 310
    if-nez p1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 312
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->reCalculateSupp()V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 308
    goto :goto_2

    :cond_4
    move v2, v3

    .line 310
    goto :goto_3
.end method

.method protected updateImageMatrix()V
    .locals 3

    .prologue
    const v2, 0x3f7fff58

    .line 776
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 777
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 778
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 785
    :goto_0
    return-void

    .line 781
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 784
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected usePerfectFitBitmap()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 1123
    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomIn(F)V

    .line 1125
    return-void
.end method

.method protected zoomIn(F)V
    .locals 6
    .parameter "rate"

    .prologue
    const/high16 v5, 0x4000

    .line 1662
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 1663
    .local v2, width:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1666
    .local v0, height:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1667
    .local v1, scale:F
    mul-float v3, v1, p1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v3

    div-float p1, v3, v1

    .line 1670
    :cond_0
    div-float v3, v2, v5

    div-float v4, v0, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomInAt(FFF)V

    .line 1686
    return-void
.end method

.method protected zoomInAt(FFF)V
    .locals 7
    .parameter "rate"
    .parameter "atX"
    .parameter "atY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1613
    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1619
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 1620
    .local v0, curScale:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1621
    iput v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 1622
    mul-float v2, v0, p1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v3

    const v4, 0x3f99999a

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1632
    :cond_2
    :goto_1
    iput p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    .line 1633
    iput p3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    .line 1641
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1642
    .local v1, oldScale:F
    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1649
    invoke-virtual {p0, v5, v5, v6}, Lcom/htc/opensense/widget/ImageViewTouchBase;->center(ZZZ)V

    .line 1651
    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onZoom()V

    goto :goto_0

    .line 1624
    .end local v1           #oldScale:F
    :cond_3
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 1625
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 1626
    mul-float v2, v0, p1

    const v3, 0x3f4ccccd

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    goto :goto_0

    .line 1629
    :cond_4
    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    goto :goto_1
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 1132
    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomOut(F)V

    .line 1134
    return-void
.end method

.method protected zoomOut(F)V
    .locals 6
    .parameter "rate"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 1689
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 1690
    .local v2, width:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1692
    .local v0, height:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1693
    .local v1, scale:F
    mul-float v3, v1, v4

    div-float/2addr v3, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1694
    move p1, v1

    .line 1696
    :cond_0
    div-float v3, v4, p1

    div-float v4, v2, v5

    div-float v5, v0, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomInAt(FFF)V

    .line 1717
    return-void
.end method

.method protected zoomOutByFrame(FIII)V
    .locals 12
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "stepFlow"

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2236
    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    :goto_0
    return-void

    .line 2246
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v5, v0

    .line 2247
    .local v5, currX:I
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v6, v0

    .line 2248
    .local v6, currY:I
    const/4 v9, 0x0

    .line 2249
    .local v9, finalX:I
    const/4 v10, 0x0

    .line 2250
    .local v10, finalY:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 2252
    .local v2, currScale:F
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense/widget/ImageViewTouchBase$7;

    move-object v1, p0

    move v3, p1

    move/from16 v4, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/widget/ImageViewTouchBase$7;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FFIIIII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zoomOutByTime(FIIF)V
    .locals 14
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "durationMs"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2283
    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    :goto_0
    return-void

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v7, v0

    .line 2294
    .local v7, currX:I
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v8, v0

    .line 2295
    .local v8, currY:I
    const/4 v11, 0x0

    .line 2296
    .local v11, finalX:I
    const/4 v12, 0x0

    .line 2297
    .local v12, finalY:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 2298
    .local v2, currScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2300
    .local v4, startTime:J
    const-string v0, "Justin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before zoom out mat "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenAnimationView;->OnAnimationStart(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V

    .line 2303
    iget-object v13, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;

    move-object v1, p0

    move/from16 v3, p4

    move v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/htc/opensense/widget/ImageViewTouchBase$8;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FFJFIIII)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 1112
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 1113
    .local v1, width:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 1115
    .local v0, height:F
    div-float v2, v1, v3

    div-float v3, v0, v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomTo(FFF)V

    .line 1116
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 1071
    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1074
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result p1

    .line 1076
    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onZoom()V

    .line 1078
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1079
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 1081
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1083
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v3, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->center(ZZZ)V

    goto :goto_0
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 1091
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 1092
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1093
    .local v3, startTime:J
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense/widget/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/widget/ImageViewTouchBase$2;-><init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zoomToCenterByFrame(FIII)V
    .locals 23
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "stepFlow"

    .prologue
    .line 2009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2010
    :cond_0
    const-string v1, "ImageViewTouchBase"

    const-string v2, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    :goto_0
    return-void

    .line 2021
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v5, v1

    .line 2022
    .local v5, cx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v6, v1

    .line 2024
    .local v6, cy:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v22

    .line 2025
    .local v22, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v21

    .line 2026
    .local v21, viewHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 2027
    .local v12, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 2029
    .local v11, bmpHeight:I
    sub-int v1, v22, v12

    div-int/lit8 v17, v1, 0x2

    .line 2030
    .local v17, mx:I
    sub-int v1, v21, v11

    div-int/lit8 v18, v1, 0x2

    .line 2032
    .local v18, my:I
    sub-int v13, p2, v17

    .line 2033
    .local v13, dx:I
    sub-int v14, p3, v18

    .line 2034
    .local v14, dy:I
    int-to-float v1, v13

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v7, v1, v17

    .line 2035
    .local v7, cx2:I
    int-to-float v1, v14

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v1, v18

    .line 2036
    .local v8, cy2:I
    div-int/lit8 v1, v22, 0x2

    sub-int v19, v1, p2

    .line 2037
    .local v19, tx:I
    div-int/lit8 v1, v21, 0x2

    sub-int v20, v1, p3

    .line 2038
    .local v20, ty:I
    sub-int v7, v7, v19

    .line 2039
    sub-int v8, v8, v20

    .line 2040
    int-to-float v1, v12

    mul-float v1, v1, p1

    float-to-int v15, v1

    .line 2041
    .local v15, maxx:I
    int-to-float v1, v11

    mul-float v1, v1, p1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 2043
    .local v16, maxy:I
    add-int v1, v7, v22

    if-le v1, v15, :cond_2

    sub-int v7, v15, v22

    .line 2044
    :cond_2
    add-int v1, v8, v21

    move/from16 v0, v16

    if-le v1, v0, :cond_3

    sub-int v8, v16, v21

    .line 2046
    :cond_3
    if-gez v7, :cond_4

    const/4 v7, 0x0

    .line 2047
    :cond_4
    if-gez v8, :cond_5

    const/4 v8, 0x0

    .line 2049
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v9

    .local v9, currScale:F
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v10, p4

    .line 2050
    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomAnimationByFrame(FIIIIIIFI)V

    goto/16 :goto_0
.end method

.method protected zoomToCenterByTime(FIIF)V
    .locals 23
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "durationMs"

    .prologue
    .line 2097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2098
    :cond_0
    const-string v1, "ImageViewTouchBase"

    const-string v2, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    :goto_0
    return-void

    .line 2109
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v5, v1

    .line 2110
    .local v5, cx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v6, v1

    .line 2112
    .local v6, cy:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v22

    .line 2113
    .local v22, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v21

    .line 2114
    .local v21, viewHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 2115
    .local v12, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 2117
    .local v11, bmpHeight:I
    sub-int v1, v22, v12

    div-int/lit8 v17, v1, 0x2

    .line 2118
    .local v17, mx:I
    sub-int v1, v21, v11

    div-int/lit8 v18, v1, 0x2

    .line 2120
    .local v18, my:I
    sub-int v13, p2, v17

    .line 2121
    .local v13, dx:I
    sub-int v14, p3, v18

    .line 2122
    .local v14, dy:I
    int-to-float v1, v13

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v7, v1, v17

    .line 2123
    .local v7, cx2:I
    int-to-float v1, v14

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v1, v18

    .line 2124
    .local v8, cy2:I
    div-int/lit8 v1, v22, 0x2

    sub-int v19, v1, p2

    .line 2125
    .local v19, tx:I
    div-int/lit8 v1, v21, 0x2

    sub-int v20, v1, p3

    .line 2126
    .local v20, ty:I
    sub-int v7, v7, v19

    .line 2127
    sub-int v8, v8, v20

    .line 2128
    int-to-float v1, v12

    mul-float v1, v1, p1

    float-to-int v15, v1

    .line 2129
    .local v15, maxx:I
    int-to-float v1, v11

    mul-float v1, v1, p1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 2131
    .local v16, maxy:I
    add-int v1, v7, v22

    if-le v1, v15, :cond_2

    sub-int v7, v15, v22

    .line 2132
    :cond_2
    add-int v1, v8, v21

    move/from16 v0, v16

    if-le v1, v0, :cond_3

    sub-int v8, v16, v21

    .line 2134
    :cond_3
    if-gez v7, :cond_4

    .line 2136
    int-to-float v1, v12

    mul-float v1, v1, p1

    move/from16 v0, v22

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 2137
    move/from16 v0, v22

    int-to-float v1, v0

    int-to-float v2, v12

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v7, v1

    .line 2142
    :cond_4
    :goto_1
    if-gez v8, :cond_5

    .line 2144
    int-to-float v1, v11

    mul-float v1, v1, p1

    move/from16 v0, v21

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 2145
    move/from16 v0, v21

    int-to-float v1, v0

    int-to-float v2, v11

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v8, v1

    .line 2151
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v9

    .local v9, currScale:F
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v10, p4

    .line 2152
    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomAnimationByTime(FIIIIIIFF)V

    goto/16 :goto_0

    .line 2139
    .end local v9           #currScale:F
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 2147
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method
