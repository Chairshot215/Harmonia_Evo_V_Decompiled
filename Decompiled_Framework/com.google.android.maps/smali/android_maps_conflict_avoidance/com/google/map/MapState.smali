.class public Landroid_maps_conflict_avoidance/com/google/map/MapState;
.super Ljava/lang/Object;
.source "MapState.java"


# instance fields
.field private final bicyclingLayerEnabled:Z

.field private final centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private final mapMode:I

.field private final zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    iput-boolean p4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    return-void
.end method


# virtual methods
.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    return-object v0
.end method

.method public getMapMode()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-object v0
.end method

.method public isBicyclingLayerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    return v0
.end method

.method public isSatellite()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerrain()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newMapState(I)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 4

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    invoke-direct {v0, v1, v2, p1, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-object v0
.end method

.method public newMapState(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 4

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    invoke-direct {v0, p1, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-object v0
.end method

.method public newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 4

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    invoke-direct {v0, v1, p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-object v0
.end method
