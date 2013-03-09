.class public final Lcom/google/android/maps/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapController$1;,
        Lcom/google/android/maps/MapController$VertPanState;,
        Lcom/google/android/maps/MapController$HorizPanState;
    }
.end annotation


# static fields
.field private static final EMPTY_TRANSFORM:Landroid/view/animation/Transformation;


# instance fields
.field private mAnimationCompletedMessage:Landroid/os/Message;

.field private mAnimationCompletedRunnable:Ljava/lang/Runnable;

.field private mDeferredLatSpanE6:I

.field private mDeferredLonSpanE6:I

.field private final mDeltas:[I

.field private volatile mDirty:Z

.field private mHasBeenMeasured:Z

.field private mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

.field private final mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private final mOrigin:[F

.field private mPanAnimation:Landroid/view/animation/Animation;

.field private mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private mVertPan:Lcom/google/android/maps/MapController$VertPanState;

.field private mXPanSpeed:F

.field private mYPanSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapController;->EMPTY_TRANSFORM:Landroid/view/animation/Transformation;

    return-void
.end method

.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Lcom/google/android/maps/MapView;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    iput v2, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    iput v2, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    iput v3, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    iput v3, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    iput-object p1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iput-object p2, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V
    .locals 12

    const v11, 0x49742400

    const/4 v10, 0x0

    iput-object p2, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/google/android/maps/MapController;->stopAnimation(Z)V

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v5, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    iput-object v4, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelDistanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v5, 0x4069

    const-wide/high16 v7, 0x4024

    mul-double/2addr v7, v2

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4089

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-int v0, v5

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->startNow()V

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    return-void
.end method

.method private centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    return-void
.end method

.method private curve(FF)F
    .locals 2

    sub-float v0, p2, p1

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private onKeyDown(I)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onKeyUp(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    sget-object v3, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    if-ne v2, v3, :cond_0

    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    sget-object v3, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    if-ne v2, v3, :cond_1

    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v3, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v3, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    if-ne v2, v3, :cond_3

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public animateTo(Lcom/google/android/maps/GeoPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    return-void
.end method

.method public animateTo(Lcom/google/android/maps/GeoPoint;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    return-void
.end method

.method public animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    return-void
.end method

.method clean()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    return-void
.end method

.method getDeltas()[I
    .locals 5

    const/high16 v4, 0x4100

    const/4 v3, 0x0

    const/high16 v2, -0x3f00

    sget-object v0, Lcom/google/android/maps/MapController$1;->$SwitchMap$com$google$android$maps$MapController$HorizPanState:[I

    iget-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    invoke-virtual {v1}, Lcom/google/android/maps/MapController$HorizPanState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/google/android/maps/MapController$1;->$SwitchMap$com$google$android$maps$MapController$VertPanState:[I

    iget-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    invoke-virtual {v1}, Lcom/google/android/maps/MapController$VertPanState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    goto :goto_1

    :pswitch_4
    iget v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    goto :goto_1

    :pswitch_5
    iput v3, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapController;->onKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapController;->onKeyUp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onMeasure()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    iget v0, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    iget v1, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    :cond_0
    return-void
.end method

.method repaint()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapController;->stopAnimation(Z)V

    iget-object v1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    return-void
.end method

.method scrollByTrackball(II)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    goto :goto_0
.end method

.method public setCenter(Lcom/google/android/maps/GeoPoint;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    return-void
.end method

.method public setZoom(I)I
    .locals 2

    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapController;->zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    return p1
.end method

.method stepAnimation(J)Z
    .locals 10

    const/4 v9, 0x0

    const-wide v7, 0x412e848000000000L

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->getDeltas()[I

    move-result-object v1

    aget v5, v1, v4

    if-nez v5, :cond_0

    aget v5, v1, v3

    if-eqz v5, :cond_1

    :cond_0
    aget v4, v1, v4

    aget v5, v1, v3

    invoke-virtual {p0, v4, v5}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5

    sget-object v2, Lcom/google/android/maps/MapController;->EMPTY_TRANSFORM:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aput v9, v5, v4

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aput v9, v5, v3

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aget v4, v5, v4

    float-to-double v4, v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aget v5, v5, v3

    float-to-double v5, v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {p0, v3}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    iput-object v6, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v6, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iput-object v6, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    :cond_3
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v5, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    iput-object v6, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method public stopAnimation(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    :cond_1
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopPanning()V
    .locals 1

    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    return-void
.end method

.method public zoomIn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    move-result v0

    return v0
.end method

.method zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    return-void
.end method

.method public zoomToSpan(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->zoomToSpan(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    iput p2, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    goto :goto_0
.end method
