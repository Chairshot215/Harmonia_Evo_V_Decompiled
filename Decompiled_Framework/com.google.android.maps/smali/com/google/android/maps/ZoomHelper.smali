.class Lcom/google/android/maps/ZoomHelper;
.super Ljava/lang/Object;
.source "ZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/ZoomHelper$1;,
        Lcom/google/android/maps/ZoomHelper$Snapshot;
    }
.end annotation


# instance fields
.field private final mAnimations:Landroid/view/animation/AnimationSet;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mCommitTime:J

.field private final mController:Lcom/google/android/maps/MapController;

.field private mFading:Z

.field private final mLastDrawnScale:Landroid/view/animation/Transformation;

.field private mManualZoomActive:Z

.field private final mMapView:Lcom/google/android/maps/MapView;

.field private mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

.field private mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field protected final mTempPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;Lcom/google/android/maps/MapController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempPoint:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    iput-object p2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v1, Lcom/google/android/maps/PixelConverter;

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    invoke-direct {v1, v0}, Lcom/google/android/maps/PixelConverter;-><init>(Lcom/google/android/maps/PixelConverter;)V

    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    return-void
.end method

.method private addFade()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private addScale(J)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F

    move-result v2

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aget v5, v3, v7

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aget v6, v3, v8

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v0, v8}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->startNow()V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput-boolean v7, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static calculateRoundedZoom(FI)I
    .locals 7

    const/4 v3, 0x1

    const/high16 v5, 0x3f80

    cmpg-float v4, p0, v5

    if-gez v4, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    div-float p0, v5, p0

    :cond_0
    float-to-int v1, p0

    const/4 v0, 0x0

    :goto_1
    if-le v1, v3, :cond_2

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x3ff0

    float-to-double v5, p0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fd0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-eqz v2, :cond_4

    neg-int v0, v0

    :cond_4
    add-int v3, p1, v0

    return v3
.end method

.method private createSnapshot()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/google/android/maps/ZoomHelper$Snapshot;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/ZoomHelper$Snapshot;-><init>(Lcom/google/android/maps/ZoomHelper$1;)V

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/maps/MapView;->drawMap(Landroid/graphics/Canvas;Z)Z

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    return-void
.end method

.method private getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F
    .locals 2

    invoke-virtual {p2, p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->isMoreZoomedIn(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p2, p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private stepAnimation(JLcom/google/android/maps/PixelConverter;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v2, v2, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F

    move-result v2

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v5, 0x1

    aget v5, v0, v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/PixelConverter;->setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V

    return-void
.end method

.method private updateSnapshotFixedPoint(FF)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ZoomHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Singular matrix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method private updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/PixelConverter;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    aput p3, v0, v3

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    aput p4, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aput p3, v0, v3

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aput p4, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method


# virtual methods
.method beginZoom(FF)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->createSnapshot()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(FF)V

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/PixelConverter;->setMatricesFrom(Lcom/google/android/maps/PixelConverter;)V

    return-void
.end method

.method doZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;ZII)Z
    .locals 6

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->createSnapshot()V

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(FF)V

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/MapController;->zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-eq p4, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v2, v2, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p3

    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    :cond_2
    const-wide/16 v2, 0x12c

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->addScale(J)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x258

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->preLoad()V

    goto :goto_0
.end method

.method doZoom(ZZII)Z
    .locals 4

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextHigherZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/android/maps/ZoomHelper;->doZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;ZII)Z

    move-result v2

    goto :goto_1
.end method

.method endZoom()V
    .locals 15

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/PixelConverter;

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v9

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v12

    invoke-static {v9, v12}, Lcom/google/android/maps/ZoomHelper;->calculateRoundedZoom(FI)I

    move-result v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v12, v5}, Lcom/google/android/maps/MapController;->zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    const/4 v13, 0x0

    aget v2, v12, v13

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    const/4 v13, 0x1

    aget v3, v12, v13

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v0, v12

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v1, v12

    float-to-int v10, v2

    float-to-int v11, v3

    int-to-float v12, v10

    cmpl-float v12, v12, v0

    if-nez v12, :cond_0

    int-to-float v12, v11

    cmpl-float v12, v12, v1

    if-eqz v12, :cond_1

    :cond_0
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v13, v14}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v8

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    iget v13, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v10

    iget v14, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v11

    invoke-virtual {v12, v13, v14}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    :cond_1
    const-wide/16 v12, 0xc8

    invoke-direct {p0, v12, v13}, Lcom/google/android/maps/ZoomHelper;->addScale(J)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    invoke-direct {p0, v12, v13, v7}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->preLoad()V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/16 v4, 0xff

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    invoke-virtual {p0, p3, p4}, Lcom/google/android/maps/ZoomHelper;->shouldDrawMap(J)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_1
    iget-wide v3, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    cmp-long v3, p3, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->preLoad()V

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    :cond_2
    iget-boolean v3, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    if-nez v3, :cond_3

    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    :cond_3
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f

    iget-object v5, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v3, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    invoke-virtual {v0}, Lcom/google/android/maps/PixelConverter;->resetMatrix()V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->canCoverCenter()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->addFade()V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v0, v0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView$Repainter;->repaint()V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method shouldDrawMap(J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateZoom(FFF)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    invoke-virtual {v3}, Lcom/google/android/maps/PixelConverter;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    neg-float v2, p2

    neg-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v4, v4, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v5, v5, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/PixelConverter;->setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V

    return-void
.end method
