.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.super Ljava/lang/Object;
.source "LayerService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private nextRefreshTime:J

.field private final observers:Ljava/util/Vector;

.field private refreshMillis:J

.field private volatile request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

.field private final requestedTiles:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J

    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    return-object v0
.end method

.method private isTileLocationValid(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->isValidZoomLevel(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->isTileLocationValid(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    if-nez v0, :cond_1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    return-void
.end method

.method public declared-synchronized doCompact(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->compact()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    if-eqz v2, :cond_3

    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v8

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v8

    invoke-interface {v8}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getDataTime()J

    move-result-wide v6

    sub-long v0, v3, v6

    if-eqz p2, :cond_1

    if-nez v5, :cond_1

    const-wide/high16 v8, -0x8000

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_1

    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J

    cmp-long v8, v3, v8

    if-gtz v8, :cond_0

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    if-eqz v8, :cond_1

    :cond_0
    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v5, v2

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v5

    :cond_3
    if-nez v5, :cond_2

    if-nez p2, :cond_4

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-direct {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v2

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public handleOutOfMemory(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->clearTileCache()V

    return-void
.end method

.method public needFetchLayerTiles()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLayerTilesDirty()V
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->setLayerTilesDirty()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNewLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v1, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->updateLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized requestTiles()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J
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
