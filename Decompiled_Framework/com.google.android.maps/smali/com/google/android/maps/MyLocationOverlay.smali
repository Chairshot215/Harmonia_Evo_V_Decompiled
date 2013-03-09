.class public Lcom/google/android/maps/MyLocationOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/hardware/SensorListener;
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
    }
.end annotation


# static fields
.field private static final DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

.field private static final LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

.field private static final LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mCompassArrow:Landroid/graphics/drawable/Drawable;

.field private mCompassBase:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/google/android/maps/MapController;

.field private final mEnabledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/MyLocationOverlay$NameAndDate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCompassEnabled:Z

.field private volatile mIsMyLocationEnabled:Z

.field private volatile mIsOnScreen:Z

.field private volatile mLastFix:Landroid/location/Location;

.field private volatile mLocationChangedSinceLastDraw:Z

.field private mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

.field private mLocationDotHalfHeight:I

.field private mLocationDotHalfWidth:I

.field private final mMapView:Lcom/google/android/maps/MapView;

.field private volatile mMyLocation:Lcom/google/android/maps/GeoPoint;

.field private volatile mMyLocationTime:J

.field mNetworkLocation:Landroid/location/Location;

.field mNetworkLocationHandler:Landroid/os/Handler;

.field private volatile mOrientation:F

.field private volatile mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

.field private final mRunOnFirstFix:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gps"

    aput-object v1, v0, v2

    const-string v1, "network"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x4020

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    new-instance v0, Lcom/google/android/maps/MyLocationOverlay$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MyLocationOverlay$1;-><init>(Lcom/google/android/maps/MyLocationOverlay;)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapView == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    return-void
.end method

.method private clearNetworkLocationRebroadcasts()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getCompassArrow()Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/maps/InternalR$drawable;->compass_arrow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    const/16 v4, -0x1c

    add-int/lit8 v5, v0, -0x1c

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method private getCompassBase()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/maps/InternalR$drawable;->compass_base:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    neg-int v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method private getLocationDot()Landroid/graphics/drawable/LevelListDrawable;
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$drawable;->ic_maps_indicator_current_position_anim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    iget v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    neg-int v1, v1

    iget v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    iget v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method private isCloseToPoint(IILcom/google/android/maps/MapView;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    iget-object v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    int-to-long v1, p1

    iget-object v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    int-to-long v3, p2

    iget-object v5, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const/high16 v5, 0x4200

    mul-long/2addr v1, v1

    mul-long/2addr v3, v3

    add-long/2addr v1, v3

    long-to-float v1, v1

    mul-float v2, v5, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLocationOnScreen(Lcom/google/android/maps/MapView;Lcom/google/android/maps/GeoPoint;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private isect(FFF)F
    .locals 4

    const/4 v1, 0x0

    mul-float v2, p2, p2

    mul-float v3, p1, p1

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v3, p1

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    mul-float v3, p3, p3

    sub-float v0, v2, v3

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    :cond_0
    return v1
.end method


# virtual methods
.method public declared-synchronized disableCompass()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableMyLocation()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dispatchTap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .locals 8

    const/4 v7, 0x0

    monitor-enter p0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocationTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    iget-object v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x4248

    const/high16 v1, 0x4268

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassBase()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, v2, v2, v2}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    neg-float v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassArrow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, v2, v2, v2}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V
    .locals 28

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/MyLocationOverlay;->getLocationDot()Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/LevelListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v0, p4

    invoke-interface {v15, v0, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    const/16 v22, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-interface {v15, v4}, Lcom/google/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v22

    :cond_1
    const-wide/16 v4, 0x3e8

    rem-long v4, p5, v4

    long-to-int v4, v4

    mul-int/lit16 v4, v4, 0x2710

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v20, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v18

    const/4 v4, 0x0

    cmpl-float v4, v22, v4

    if-lez v4, :cond_5

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v6, 0x3f80

    move/from16 v0, v27

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v17

    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-lez v4, :cond_2

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float v5, v4, v17

    move/from16 v0, v26

    int-to-float v4, v0

    add-float v7, v4, v17

    sget-object v9, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v17

    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-lez v4, :cond_3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float v8, v4, v17

    move/from16 v0, v18

    int-to-float v4, v0

    sub-float v9, v4, v6

    move/from16 v0, v26

    int-to-float v4, v0

    add-float v10, v4, v17

    move/from16 v0, v18

    int-to-float v4, v0

    sub-float v11, v4, v6

    sget-object v12, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v17

    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-lez v4, :cond_4

    move/from16 v0, v27

    int-to-float v4, v0

    sub-float v7, v4, v17

    move/from16 v0, v27

    int-to-float v4, v0

    add-float v9, v4, v17

    sget-object v10, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v25

    int-to-float v5, v0

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v17

    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-lez v4, :cond_5

    move/from16 v0, v25

    int-to-float v4, v0

    sub-float v8, v4, v6

    move/from16 v0, v27

    int-to-float v4, v0

    sub-float v9, v4, v17

    move/from16 v0, v25

    int-to-float v4, v0

    sub-float v10, v4, v6

    move/from16 v0, v27

    int-to-float v4, v0

    add-float v11, v4, v17

    sget-object v12, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v4, v5, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    iget v5, v14, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v26

    iget v7, v14, Landroid/graphics/Rect;->top:I

    add-int v7, v7, v27

    iget v8, v14, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v26

    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v27

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    div-int/lit8 v5, v25, 0x14

    div-int/lit8 v7, v18, 0x14

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v15, v4, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    :cond_6
    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v15, v4, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    const-wide/16 v8, 0xfa

    sub-int v10, v26, v23

    sub-int v11, v27, v16

    add-int v12, v26, v23

    add-int v13, v27, v16

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/maps/MapView;->postInvalidateDelayed(JIIII)V

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    goto/16 :goto_0
.end method

.method public declared-synchronized enableCompass()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    const-string v1, "Maps.MyLocationOverlay"

    const-string v2, "Compass SensorManager was unavailable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableMyLocation()Z
    .locals 9

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

    array-length v8, v7

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;

    invoke-direct {v3, v1}, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v2, "Maps.MyLocationOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request updates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Maps.MyLocationOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "Maps.MyLocationOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    if-nez v0, :cond_2

    const-string v0, "Maps.MyLocationOverlay"

    const-string v1, "None of the desired Location Providers are available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    return v0
.end method

.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 11

    const-wide v9, 0x412e848000000000L

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    sub-long v3, v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;

    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iput-wide v1, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v9

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v9

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocationTime:J

    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/MyLocationOverlay;->isLocationOnScreen(Lcom/google/android/maps/MapView;Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const-string v1, "Maps.MyLocationOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running deferred on first fix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_7
    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    const-string v8, "gps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_4

    const-string v0, "Maps.MyLocationOverlay"

    const-string v1, "Got fallback update soon after preferred udpate, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->clearNetworkLocationRebroadcasts()V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onSensorChanged(I[F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassBase()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x32

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x3a

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x32

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x3a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/maps/MapView;->postInvalidate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/google/android/maps/MapView;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/MyLocationOverlay;->isCloseToPoint(IILcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p3, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->clearNetworkLocationRebroadcasts()V

    :cond_0
    return-void
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v1, p1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/maps/MyLocationOverlay;->isCloseToPoint(IILcom/google/android/maps/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/MyLocationOverlay;->dispatchTap()Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
