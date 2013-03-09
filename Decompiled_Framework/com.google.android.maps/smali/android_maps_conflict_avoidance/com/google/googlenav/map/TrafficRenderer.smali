.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;
.super Ljava/lang/Object;
.source "TrafficRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawRoadBackgroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getNumPoints()I

    move-result v2

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v2, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const v5, -0x2f000001

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineBackgroundWidth()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-interface {p2, v3, v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawRoadForegroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_2

    aget-object v6, p1, v2

    invoke-virtual {p0, p2, v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v5

    invoke-static {v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I

    move-result v3

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getNumPoints()I

    move-result v4

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v4, :cond_1

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v1, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    invoke-static {v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineWidth()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-interface {p2, v5, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    invoke-virtual {p0, p2, v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v5

    move v3, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineWidth()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-interface {p2, v5, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getSpeedCategory(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x60d1d1d1

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, -0x64

    goto :goto_0

    :pswitch_1
    const/high16 v0, -0x67

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x2000

    goto :goto_0

    :pswitch_3
    const v0, -0xcc4f00

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V
    .locals 3

    invoke-virtual {p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getXOffset(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x8

    invoke-virtual {p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getYOffset(I)I

    move-result v2

    shl-int/lit8 v1, v2, 0x8

    if-eqz p4, :cond_0

    invoke-interface {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;->lineTo(II)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;->moveTo(II)V

    goto :goto_0
.end method

.method protected initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .locals 2

    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    return-object v0
.end method

.method public renderTrafficTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .locals 2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setLastAccess(J)V

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->drawRoadBackgroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->drawRoadForegroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    return-void
.end method
