.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;
.super Ljava/lang/Object;
.source "GmmTileOverlayRendererImpl.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRenderer;


# instance fields
.field private final shapeProviders:Ljava/util/Vector;

.field protected shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

.field private shapeRendererVersion:I

.field private showTraffic:Z

.field protected final trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

.field protected trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeProviders:Ljava/util/Vector;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    return-void
.end method

.method private getImageVersion(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)I
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getDataTime()J

    move-result-wide v2

    long-to-int v1, v2

    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setLastAccess(J)V

    :cond_1
    mul-int/lit8 v2, v1, 0x1d

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRendererVersion:I

    add-int/2addr v2, v3

    return v2
.end method

.method private renderTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v3, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    move-result-object v2

    :cond_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->getImageVersion(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)I

    move-result v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->isFast()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-direct {p0, p1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->updateTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;I)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImageVersion(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v1

    if-eq v1, p3, :cond_2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->restoreBaseImage()V

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getImageVersion()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRendererVersion:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTiles()V

    return-void
.end method

.method protected abstract generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
.end method

.method protected abstract isFast()Z
.end method

.method public isShowTraffic()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    return v0
.end method

.method public renderTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->renderTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z

    move-result v0

    return v0
.end method

.method public setShowTraffic(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    return-void
.end method

.method public setTrafficService(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .locals 0

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    return-void
.end method
