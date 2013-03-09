.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;
    }
.end annotation


# instance fields
.field private final biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

.field private centerPixelX:I

.field private centerPixelY:I

.field private completeTilesInViewport:I

.field private cornerToCenterDist:I

.field private displayHeight:I

.field private displayWidth:I

.field private earliestTileNeededTime:J

.field private estimatedCountOfRenderedImagesInMapCache:I

.field private halfDisplayHeight:I

.field private halfDisplayWidth:I

.field private halfHeight:I

.field private halfWidth:I

.field private hardwareAcceleration:Z

.field private height:I

.field private isViewportAllNew:Z

.field private lastPaintStartTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

.field private pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

.field private running:Z

.field private tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

.field private tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private width:I

.field private xDisplayTiles:I

.field private xTiles:I

.field private yDisplayTiles:I

.field private yTiles:I


# direct methods
.method public constructor <init>(IIILandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->cornerToCenterDist:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->hardwareAcceleration:Z

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    const-string v5, "Tiles"

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;-><init>(IIIILjava/lang/String;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-direct {v0, p4, v1, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-direct {p0, p4, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->load(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    return-void
.end method

.method private calculateCenterPixel()V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    return-void
.end method

.method private static checkPaintTimeExceeded(J)Z
    .locals 4

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    sub-int v7, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    sub-int v8, v2, v3

    :goto_0
    if-lez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    sub-int/2addr v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->begin()V

    :cond_1
    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v12

    invoke-interface/range {v16 .. v16}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v17

    const/4 v11, 0x1

    if-nez p1, :cond_2

    const/4 v11, 0x0

    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    if-ge v4, v2, :cond_6

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    if-ge v5, v2, :cond_5

    move/from16 v0, v19

    int-to-long v2, v0

    add-long v14, v17, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    add-int/lit8 v20, v19, 0x1

    aget-object v3, v2, v19

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IILandroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;IIZZZJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    add-int v21, v21, v2

    if-eqz v11, :cond_3

    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->checkPaintTimeExceeded(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v20

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    const/16 v3, 0x30

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->restoreBaseImagesIfNeeded()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    :cond_7
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->logPerceivedTileLatency(I)V

    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestTiles()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestLayerTiles()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->end()V

    :cond_a
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->clearDataCache()V

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->lastPaintStartTime:J

    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->checkPaintTimeExceeded(J)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_4
    return v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private drawTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IILandroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;IIZZZJJ)Z
    .locals 12

    mul-int/lit16 v2, p2, 0x100

    add-int v9, p5, v2

    mul-int/lit16 v2, p3, 0x100

    add-int v10, p6, v2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->notValid()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p4, :cond_1

    const v2, 0xffffff

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->setColor(I)V

    const/16 v2, 0x100

    const/16 v3, 0x100

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    add-int/lit16 v3, v9, 0x80

    sub-int/2addr v2, v3

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    add-int/lit16 v4, v10, 0x80

    sub-int/2addr v3, v4

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int v4, v2, v3

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreen(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v11

    if-eqz p7, :cond_7

    if-nez v11, :cond_7

    const/16 p7, 0x0

    move/from16 v5, p7

    :goto_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    if-eqz p9, :cond_5

    const/4 v6, 0x2

    :goto_2
    move-object v3, p1

    move-wide/from16 v7, p12

    invoke-virtual/range {v2 .. v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v3

    if-eqz v11, :cond_3

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    if-eqz v2, :cond_3

    if-eqz p9, :cond_3

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    invoke-interface {v2, v3, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->renderTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    :cond_3
    const/4 v2, 0x0

    if-eqz p4, :cond_6

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p8, :cond_6

    :cond_4
    move-wide/from16 v0, p12

    invoke-virtual {v3, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v9, v10}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V

    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->lastPaintStartTime:J

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setPaint(JJ)V

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    move-result v4

    if-lez v4, :cond_6

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updatePerceivedTileLatency(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->logIfPreCached(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    const/4 v2, 0x1

    move v3, v2

    :goto_3
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v2, p1, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getLayerTiles(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Ljava/util/Vector;

    move-result-object v5

    if-eqz p4, :cond_0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_4
    if-ltz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v9, v10}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V

    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_4

    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move/from16 v5, p7

    goto :goto_1
.end method

.method private declared-synchronized findZoom(IILandroid_maps_conflict_avoidance/com/google/map/MapState;)Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v1

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v1

    if-ge v1, p2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getMaxMapInitialZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I
    .locals 2

    const/16 v0, 0xf

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isMapPointInKoreaBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isMapPointInJapanBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static getMaxTiles(I)I
    .locals 1

    const/16 v0, 0x100

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;->ceiledDivision(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getTileFlagsForMapMode()B
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getMapMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isMapPointInJapanBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    const v2, 0x16c6e44

    if-le v0, v2, :cond_0

    const v2, 0x2bf01d6

    if-ge v0, v2, :cond_0

    const v0, 0x7604113

    if-le v1, v0, :cond_0

    const v0, 0x8920c07

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMapPointInKoreaBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z
    .locals 7

    const v6, 0x7cfb66a

    const v5, 0x7ae0f28

    const v4, 0x7a8b1de

    const v3, 0x24e6895

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    const v2, 0x1f75f9c

    if-le v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    const v2, 0x76d5478

    if-le v1, v2, :cond_0

    if-lt v1, v4, :cond_3

    :cond_0
    const v2, 0x20de3a2

    if-le v0, v2, :cond_1

    if-ge v0, v3, :cond_1

    if-le v1, v4, :cond_1

    if-lt v1, v5, :cond_3

    :cond_1
    const v2, 0x2167b23

    if-le v0, v2, :cond_2

    if-ge v0, v3, :cond_2

    if-le v1, v5, :cond_2

    if-lt v1, v6, :cond_3

    :cond_2
    const v2, 0x234ffbd

    if-le v0, v2, :cond_4

    if-ge v0, v3, :cond_4

    if-le v1, v6, :cond_4

    const v0, 0x7de3697

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTileOnScreenX(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v5

    div-int/lit16 v1, v5, 0x100

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    if-lt v5, v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v5

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    rem-int v2, v5, v1

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v5

    if-ge v5, v2, :cond_4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v5

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v6

    if-lt v5, v6, :cond_3

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v5

    if-le v5, v2, :cond_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v5

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v5

    if-gt v5, v2, :cond_6

    :cond_5
    move v4, v3

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private isTileOnScreenY(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 3

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->notValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    const-string v2, "Map info"

    invoke-interface {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v5

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readPoint(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :try_start_2
    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move-object v5, v4

    move v4, v2

    move v2, v3

    :goto_0
    move v7, v0

    move v0, v2

    move v2, v7

    :goto_1
    if-eqz v0, :cond_3

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    :goto_2
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    :goto_3
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapInitialZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    invoke-direct {v1, v5, v2, v0, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    :goto_4
    return-void

    :catch_0
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    move v2, v1

    :goto_5
    const-string v5, "MAP"

    invoke-static {v5, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    const-string v5, "Map info"

    invoke-interface {v0, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    move v0, v1

    move-object v5, v4

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-direct {v0, p1, p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move v2, v1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_4
    move v2, v1

    move v4, v1

    move-object v5, v0

    move v0, v1

    goto :goto_0

    :cond_5
    move v2, v1

    move v4, v1

    move-object v5, v0

    move v0, v1

    goto :goto_1
.end method

.method private logIfPreCached(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 7

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getIsPreCached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x16

    const-string v3, "pc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getFirstPaintTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private logPerceivedTileLatency(I)V
    .locals 7

    const/16 v6, 0x16

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    const-string v0, "s"

    :goto_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    sub-long v2, v1, v3

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    :cond_2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    if-ge v1, p1, :cond_3

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    mul-int/2addr v1, v4

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    if-eqz v1, :cond_4

    const-string v1, "tc"

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    :cond_3
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "h"

    goto :goto_1

    :pswitch_3
    const-string v0, "n"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "m"

    goto/16 :goto_1

    :cond_4
    const-string v1, "tp"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private precalculateTiles()V
    .locals 9

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v4

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    if-ge v0, v5, :cond_1

    const/4 v3, 0x0

    :goto_1
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    add-int/lit8 v2, v1, 0x1

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePerceivedTileLatency(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getFirstPaintTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    :cond_0
    return-void
.end method

.method private updateTopLeftTile(ZZ)V
    .locals 4

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->precalculateTiles()V

    :cond_1
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->notifyLayerTilesDirty()V

    :cond_3
    return-void
.end method


# virtual methods
.method public canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Z)Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZLandroid_maps_conflict_avoidance/com/google/map/Zoom;)Z

    move-result v0

    return v0
.end method

.method public canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZLandroid_maps_conflict_avoidance/com/google/map/Zoom;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v3

    invoke-static {v3, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public close(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->saveState()V

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->close(Z)V

    return-void
.end method

.method public drawMap(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZZZZ)Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map has zero size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    invoke-virtual {v0, p3, p4, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    :cond_2
    invoke-direct {p0, p1, p2, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z

    move-result v0

    return v0
.end method

.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    return v0
.end method

.method public declared-synchronized getLatitudeSpan()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    .locals 6

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    invoke-virtual {v1, v4, v5, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    neg-int v4, v4

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    neg-int v5, v5

    invoke-virtual {v1, v4, v5, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v4

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    return v4
.end method

.method public getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    .locals 7

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    invoke-virtual {v1, v5, v6, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    neg-int v5, v5

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    neg-int v6, v6

    invoke-virtual {v1, v5, v6, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v5

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v6

    sub-int v2, v5, v6

    if-gez v2, :cond_0

    const v5, 0x15752a00

    add-int/2addr v2, v5

    :cond_0
    return v2
.end method

.method public getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    return-object v0
.end method

.method public getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I
    .locals 3

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isSatellite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getMapMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x12

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x14

    goto :goto_0
.end method

.method public getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    return-object v0
.end method

.method public getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V
    .locals 3

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    if-eqz v1, :cond_1

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    invoke-interface {v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;->transformPoint(Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    :cond_1
    return-void

    :cond_2
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_0

    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    goto :goto_0
.end method

.method public getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    return-object v0
.end method

.method public getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    iget v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    return-void
.end method

.method public getTileFlags()B
    .locals 2

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlagsForMapMode()B

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isBicyclingLayerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, -0x80

    int-to-byte v0, v1

    :cond_0
    return v0
.end method

.method getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 11

    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v8

    invoke-static {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v9

    div-int/lit8 v10, p1, 0x2

    sub-int v4, v9, v10

    invoke-static {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v9

    div-int/lit8 v10, p2, 0x2

    sub-int v6, v9, v10

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v9

    invoke-static {v9, v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_2

    const/4 v5, 0x1

    :goto_0
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    move-result v10

    sub-int v2, v9, v10

    if-eqz v5, :cond_0

    const/16 v9, 0x80

    if-le v2, v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    rem-int/lit8 v9, p2, 0x2

    if-nez v9, :cond_3

    const/4 v7, 0x1

    :goto_1
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    move-result v10

    sub-int v3, v9, v10

    if-eqz v7, :cond_1

    const/16 v9, 0x80

    if-le v3, v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v9

    invoke-static {v9, v4, v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v9

    return-object v9

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public isSatellite()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v0

    return v0
.end method

.method public isTileOnScreen(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreenY(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreenX(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->pause()V

    :cond_0
    return-void
.end method

.method public declared-synchronized preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resize(II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(IIII)V

    return-void
.end method

.method public resize(IIII)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    if-ne p1, v4, :cond_0

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    if-ne p2, v4, :cond_0

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    if-ne p3, v4, :cond_0

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    if-ne p4, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    mul-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x4

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v4, v7

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v4, v7

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->cornerToCenterDist:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    div-int/lit8 v4, p3, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    div-int/lit8 v4, p4, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    invoke-static {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v4, :cond_1

    mul-int v4, v1, v3

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    mul-int/2addr v7, v8

    if-eq v4, v7, :cond_2

    :cond_1
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    mul-int/2addr v4, v7

    new-array v4, v4, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    :cond_2
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    if-ne v1, v4, :cond_3

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    if-eq v3, v4, :cond_5

    :cond_3
    move v4, v6

    :goto_1
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    if-ne v0, v7, :cond_4

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    if-eq v2, v7, :cond_6

    :cond_4
    :goto_2
    invoke-direct {p0, v4, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updateTopLeftTile(ZZ)V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapChanged()V

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    move v6, v5

    goto :goto_2
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->resume()V

    :cond_0
    return-void
.end method

.method public declared-synchronized saveState()V
    .locals 5

    const/4 v0, 0x2

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xe

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-static {v1, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isBicyclingLayerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "Map info"

    invoke-interface {v1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isTerrain()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMapMode(I)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(I)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    return-void
.end method

.method public declared-synchronized setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    :cond_1
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->calculateCenterPixel()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updateTopLeftTile(ZZ)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapChanged()V

    const/4 v1, 0x0

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setTileOverlayRenderer(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;)V
    .locals 0

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    return-void
.end method

.method public declared-synchronized setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zoomToSpan(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->findZoom(IILandroid_maps_conflict_avoidance/com/google/map/MapState;)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
