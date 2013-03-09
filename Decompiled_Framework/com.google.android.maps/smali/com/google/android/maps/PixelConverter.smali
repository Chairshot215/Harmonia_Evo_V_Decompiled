.class final Lcom/google/android/maps/PixelConverter;
.super Ljava/lang/Object;
.source "PixelConverter.java"

# interfaces
.implements Lcom/google/android/maps/Projection;


# instance fields
.field private final mInverse:Landroid/graphics/Matrix;

.field private final mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mTempFloats:[F

.field private final mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iput-object p1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/PixelConverter;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget-object v0, p1, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    return-void
.end method

.method private transformTempPoint()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v1, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v1, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    aget v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    return-void
.end method


# virtual methods
.method public fromPixels(II)Lcom/google/android/maps/GeoPoint;
    .locals 10

    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x0

    int-to-float v9, p1

    aput v9, v6, v8

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x1

    int-to-float v9, p2

    aput v9, v6, v8

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int p1, v6

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int p2, v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v6, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    move-result-object v1

    iget v6, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    sub-int v2, p1, v6

    iget v6, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    sub-int v3, p2, v6

    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    invoke-virtual {v0, v2, v3, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v5

    new-instance v4, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    return-object v4

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method getInverseMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    return v0
.end method

.method resetMatrix()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method setMatricesFrom(Lcom/google/android/maps/PixelConverter;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-virtual {v2, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v4, v4, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v5, v5, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v2, v2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    int-to-float v2, v2

    sub-float v0, v2, p4

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v2, v2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    int-to-float v2, v2

    sub-float v1, v2, p5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PixelConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting singular matrix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/PixelConverter;->transformTempPoint()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
