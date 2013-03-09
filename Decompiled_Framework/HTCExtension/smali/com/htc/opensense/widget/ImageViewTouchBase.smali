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

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->sNewZoomControl:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->USE_PERFECT_FIT_OPTIMIZATION:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mG1Matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHQLoaded:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->USE_PERFECT_FIT_OPTIMIZATION:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mG1Matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    iput-boolean v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHQLoaded:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/ImageViewTouchBase;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/ImageViewTouchBase;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    return p1
.end method

.method static synthetic access$008(Lcom/htc/opensense/widget/ImageViewTouchBase;)I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I

    return v0
.end method

.method private describe(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

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

    const/4 v1, 0x1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private static mapRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method static mapXPoint(Landroid/graphics/Matrix;I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v0, v3

    float-to-int v1, v1

    return v1
.end method

.method private onZoom()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mIsZooming:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    :cond_0
    return-void
.end method

.method private static translatePoint(Landroid/graphics/Matrix;[F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private zoomAnimationByFrame(FIIIIIIFI)V
    .locals 12

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

    return-void
.end method

.method private zoomAnimationByTime(FIIIIIIFF)V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

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

    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenAnimationView;->OnAnimationStart(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v2

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

    return-void
.end method


# virtual methods
.method protected afterZoomAnimation(FF)V
    .locals 0

    return-void
.end method

.method protected beginZoomAnimation()V
    .locals 0

    return-void
.end method

.method protected calculateZoomRatio(FFFF)V
    .locals 11

    const/high16 v10, 0x4040

    const/high16 v9, 0x4020

    const/high16 v8, 0x3f80

    const/high16 v7, 0x4000

    const/4 v0, 0x0

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    if-nez v6, :cond_2

    :cond_0
    div-float v6, p1, v7

    cmpg-float v6, p3, v6

    if-gez v6, :cond_1

    div-float v6, p2, v7

    cmpg-float v6, p4, v6

    if-gez v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    iput v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    :goto_1
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_8

    const-string v6, "ImageViewTouchBase"

    const-string v7, "[Opensence][Widget][ImageViewTouchBase][calculateZoomRatio]: mMaxZoom < 1F !"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v6, v6

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v6, v6

    cmpg-float v6, v6, p2

    if-gez v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    packed-switch v6, :pswitch_data_0

    move v2, p3

    move v1, p4

    const-string v6, "ImageViewTouchBase"

    const-string v7, "[Opensence][Widget][ImageViewTouchBase][calculateZoomRatio]: mViewMode should\'t be VIEW_BEST_FIT ! Return!"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    move v2, p3

    move v1, p4

    :goto_3
    div-float v5, p1, v2

    div-float v4, p2, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    const/high16 v6, 0x4522

    div-float v5, v6, v2

    const/high16 v6, 0x44c7

    div-float v4, v6, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v6, 0x4120

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    div-float v6, v3, v6

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v6, p2, p1

    if-lez v6, :cond_5

    cmpl-float v6, p3, p4

    if-lez v6, :cond_4

    iput v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    :goto_4
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    const v7, 0x3f99999a

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_1

    :pswitch_1
    move v2, p4

    move v1, p3

    goto :goto_3

    :cond_4
    iput v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_4

    :cond_5
    cmpg-float v6, p3, p4

    if-gez v6, :cond_6

    iput v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_4

    :cond_6
    iput v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_4

    :cond_7
    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto/16 :goto_1

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected cancelZoomAnimation()V
    .locals 0

    return-void
.end method

.method public center(ZZZ)V
    .locals 14

    iget-object v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v10, 0x2

    new-array v6, v10, [F

    fill-array-data v6, :array_0

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

    invoke-static {v5, v6}, Lcom/htc/opensense/widget/ImageViewTouchBase;->translatePoint(Landroid/graphics/Matrix;[F)V

    invoke-static {v5, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->translatePoint(Landroid/graphics/Matrix;[F)V

    const/4 v10, 0x1

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    sub-float v4, v10, v11

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x0

    aget v11, v6, v11

    sub-float v9, v10, v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v10, v7

    cmpg-float v10, v4, v10

    if-gez v10, :cond_4

    int-to-float v10, v7

    sub-float/2addr v10, v4

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v6, v11

    sub-float v3, v10, v11

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v8

    int-to-float v10, v8

    cmpg-float v10, v9, v10

    if-gez v10, :cond_6

    int-to-float v10, v8

    sub-float/2addr v10, v9

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v6, v11

    sub-float v2, v10, v11

    :cond_2
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/opensense/widget/ImageViewTouchBase;->postTranslate(FF)V

    if-eqz p3, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v10, v2

    const/4 v11, 0x0

    neg-float v12, v3

    const/4 v13, 0x0

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartTime(J)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x1

    aget v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    const/4 v10, 0x1

    aget v10, v6, v10

    neg-float v3, v10

    goto :goto_1

    :cond_5
    const/4 v10, 0x1

    aget v10, v1, v10

    int-to-float v11, v7

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    sub-float v3, v10, v11

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v10, 0x0

    aget v10, v6, v10

    neg-float v2, v10

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    aget v10, v1, v10

    int-to-float v11, v8

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    int-to-float v10, v8

    const/4 v11, 0x0

    aget v11, v1, v11

    sub-float v2, v10, v11

    goto :goto_2

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method changeMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->clearBitmaps()V

    return-void
.end method

.method public clearBitmaps()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    iput v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    iput v4, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    iput-object v3, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    iput v4, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    invoke-virtual {p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    iget-object v0, p1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method protected doesScrolling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method dumpMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 3

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

    return-void
.end method

.method public forceRecycleBitmaps()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0, v1, v2, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method getBaseMinZoom()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    return v0
.end method

.method getDoubleTapZoom()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method protected getRealScale()F
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getSkewX(Landroid/graphics/Matrix;)F
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSkewY(Landroid/graphics/Matrix;)F
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTranslateX()F
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getTranslateX(Landroid/graphics/Matrix;)F
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTranslateY()F
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getTranslateY(Landroid/graphics/Matrix;)F
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getZoomStatus()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    return v0
.end method

.method public isBitmapRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

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

    const/high16 v1, 0x3f80

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomTo(F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int v1, p4, p2

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisWidth:I

    sub-int v1, p5, p3

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThisHeight:I

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected panBy(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->postTranslate(FF)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected reCalculateSupp()V
    .locals 0

    return-void
.end method

.method public recycleBitmap(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public recycleBitmaps()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public release()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_1

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_2

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    if-eqz v4, :cond_3

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mMatrixValues:[F

    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_8

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    :cond_8
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_9

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    :cond_9
    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    iput-object v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    return-void
.end method

.method protected setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 11

    const/4 v8, 0x0

    const/high16 v10, 0x4000

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v6, v7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v5, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v2, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    cmpl-float v7, v6, v5

    if-lez v7, :cond_2

    cmpl-float v7, v2, v0

    if-ltz v7, :cond_1

    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    :goto_1
    invoke-virtual {p0, v6, v5, v2, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->calculateZoomRatio(FFFF)V

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    if-eqz v7, :cond_4

    const/high16 v7, -0x3d4c

    div-float v8, v2, v10

    div-float v9, v0, v10

    invoke-virtual {p2, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move v3, v2

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getBaseMinZoom()F

    move-result v4

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

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

    :cond_1
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    :cond_2
    cmpl-float v7, v2, v0

    if-lez v7, :cond_3

    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    :cond_4
    move v3, v2

    move v1, v0

    goto :goto_2
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3

    new-instance v1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;

    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
    .locals 20

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "bitmap must not be mPerfectFitBitmap"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v14

    if-gtz v15, :cond_1

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

    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    const/16 v17, 0x1

    invoke-static/range {p1 .. p1}, Lcom/htc/opensense/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->usePerfectFitBitmap()Z

    move-result v17

    if-nez v17, :cond_7

    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    :goto_2
    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    const-string v17, "ImageViewTouchBase"

    const-string v18, "set Full/HQ(1:1) Image"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_7
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

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

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

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

    :cond_a
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v16

    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v9

    cmpl-float v17, v16, v9

    if-lez v17, :cond_b

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

    :goto_4
    new-instance v11, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v11, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

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

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->reCalculateSupp()V

    goto/16 :goto_3
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUseBestFit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mUseBestFit:Z

    return-void
.end method

.method protected smartZoom(FFFF)V
    .locals 10

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v5

    sub-float v0, p1, v5

    div-float v6, v0, p4

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    if-nez p1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->reCalculateSupp()V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method protected updateImageMatrix()V
    .locals 3

    const v2, 0x3f7fff58

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected usePerfectFitBitmap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected zoomIn()V
    .locals 1

    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomIn(F)V

    return-void
.end method

.method protected zoomIn(F)V
    .locals 6

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v0, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    mul-float v3, v1, p1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v3

    div-float p1, v3, v1

    :cond_0
    div-float v3, v2, v5

    div-float v4, v0, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomInAt(FFF)V

    return-void
.end method

.method protected zoomInAt(FFF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iput v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    mul-float v2, v0, p1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v3

    const v4, 0x3f99999a

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    :cond_2
    :goto_1
    iput p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    iput p3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0, v5, v5, v6}, Lcom/htc/opensense/widget/ImageViewTouchBase;->center(ZZZ)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onZoom()V

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    mul-float v2, v0, p1

    const v3, 0x3f4ccccd

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_4
    iput v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStatus:I

    goto :goto_1
.end method

.method protected zoomOut()V
    .locals 1

    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomOut(F)V

    return-void
.end method

.method protected zoomOut(F)V
    .locals 6

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v0, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    mul-float v3, v1, v4

    div-float/2addr v3, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move p1, v1

    :cond_0
    div-float v3, v4, p1

    div-float v4, v2, v5

    div-float v5, v0, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomInAt(FFF)V

    return-void
.end method

.method protected zoomOutByFrame(FIII)V
    .locals 12

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v2

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

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v8, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

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

    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenAnimationView;->OnAnimationStart(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V

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

    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v0, v2

    div-float v2, v1, v3

    div-float v3, v0, v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomTo(FFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result p1

    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onZoom()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    div-float v0, p1, v1

    iget-object v2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v3, v2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->center(ZZZ)V

    goto :goto_0
.end method

.method protected zoomTo(FFFF)V
    .locals 10

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "ImageViewTouchBase"

    const-string v2, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v6, v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v21

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

    sub-int v1, v22, v12

    div-int/lit8 v17, v1, 0x2

    sub-int v1, v21, v11

    div-int/lit8 v18, v1, 0x2

    sub-int v13, p2, v17

    sub-int v14, p3, v18

    int-to-float v1, v13

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v7, v1, v17

    int-to-float v1, v14

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v1, v18

    div-int/lit8 v1, v22, 0x2

    sub-int v19, v1, p2

    div-int/lit8 v1, v21, 0x2

    sub-int v20, v1, p3

    sub-int v7, v7, v19

    sub-int v8, v8, v20

    int-to-float v1, v12

    mul-float v1, v1, p1

    float-to-int v15, v1

    int-to-float v1, v11

    mul-float v1, v1, p1

    float-to-int v0, v1

    move/from16 v16, v0

    add-int v1, v7, v22

    if-le v1, v15, :cond_2

    sub-int v7, v15, v22

    :cond_2
    add-int v1, v8, v21

    move/from16 v0, v16

    if-le v1, v0, :cond_3

    sub-int v8, v16, v21

    :cond_3
    if-gez v7, :cond_4

    const/4 v7, 0x0

    :cond_4
    if-gez v8, :cond_5

    const/4 v8, 0x0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomAnimationByFrame(FIIIIIIFI)V

    goto/16 :goto_0
.end method

.method protected zoomToCenterByTime(FIIF)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "ImageViewTouchBase"

    const-string v2, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v6, v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getHeight()I

    move-result v21

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

    sub-int v1, v22, v12

    div-int/lit8 v17, v1, 0x2

    sub-int v1, v21, v11

    div-int/lit8 v18, v1, 0x2

    sub-int v13, p2, v17

    sub-int v14, p3, v18

    int-to-float v1, v13

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v7, v1, v17

    int-to-float v1, v14

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v1, v18

    div-int/lit8 v1, v22, 0x2

    sub-int v19, v1, p2

    div-int/lit8 v1, v21, 0x2

    sub-int v20, v1, p3

    sub-int v7, v7, v19

    sub-int v8, v8, v20

    int-to-float v1, v12

    mul-float v1, v1, p1

    float-to-int v15, v1

    int-to-float v1, v11

    mul-float v1, v1, p1

    float-to-int v0, v1

    move/from16 v16, v0

    add-int v1, v7, v22

    if-le v1, v15, :cond_2

    sub-int v7, v15, v22

    :cond_2
    add-int v1, v8, v21

    move/from16 v0, v16

    if-le v1, v0, :cond_3

    sub-int v8, v16, v21

    :cond_3
    if-gez v7, :cond_4

    int-to-float v1, v12

    mul-float v1, v1, p1

    move/from16 v0, v22

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    move/from16 v0, v22

    int-to-float v1, v0

    int-to-float v2, v12

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v7, v1

    :cond_4
    :goto_1
    if-gez v8, :cond_5

    int-to-float v1, v11

    mul-float v1, v1, p1

    move/from16 v0, v21

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    move/from16 v0, v21

    int-to-float v1, v0

    int-to-float v2, v11

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v8, v1

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomAnimationByTime(FIIIIIIFF)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method
