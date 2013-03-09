.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
.super Ljava/lang/Object;
.source "MapService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
    }
.end annotation


# instance fields
.field private final autoConfigCache:Z

.field private currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

.field volatile exitWorkThread:Z

.field final flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

.field private final indefiniteThreadLockObject:Ljava/lang/Object;

.field private lastMapMoveTime:J

.field private final layerImageTiles:Ljava/util/Vector;

.field private final layerServices:Ljava/util/Vector;

.field final mapCache:Ljava/util/Hashtable;

.field private volatile mapCacheLocked:Z

.field private maxCacheDataSize:I

.field private observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

.field private outOfMemoryTime:J

.field private final repaintListeners:Ljava/util/Vector;

.field private requestType:I

.field private requestsOutstanding:I

.field private targetCacheDataSize:I

.field private final tempScaledImages:Ljava/util/Hashtable;

.field private final timedThreadLockObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    const/16 v0, 0x1a

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I

    if-ne p1, v3, :cond_0

    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    const/16 v0, 0x61a8

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    if-lez p3, :cond_2

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;

    invoke-direct {v0, p0, p5, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    :goto_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->addPostStartupBgCallback(Ljava/lang/Runnable;)V

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    if-ne p2, v3, :cond_1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    goto :goto_0

    :cond_1
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V

    return-void
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I

    return v0
.end method

.method static synthetic access$208(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    return v0
.end method

.method static synthetic access$210(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    return v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;

    return-object v0
.end method

.method private addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private clearScaledImages()V
    .locals 4

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->removeScaledImage()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoomParent()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v5, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->clearScaledImages()V

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    const-string v2, "Map Service image scaling"

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 9

    const/16 v5, 0x100

    const/4 v0, 0x0

    const/16 v3, 0x80

    const/16 v7, 0x80

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v4

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ne v4, v6, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v4

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ne v4, v6, :cond_1

    move v2, v0

    :goto_1
    move-object v0, p3

    move v4, v3

    move v6, v5

    invoke-interface/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v8

    return-object v8

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private doCompact(Z)V
    .locals 14

    if-eqz p1, :cond_1

    const-wide/16 v7, 0x7d0

    :goto_0
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v11

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v10

    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v10, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v2

    add-long v12, v2, v7

    cmp-long v10, v12, v0

    if-gez v10, :cond_0

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->compact()V

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    const/16 v12, 0x8

    invoke-static {v12, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->doCompact(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0xfa0

    goto :goto_0

    :catchall_0
    move-exception v10

    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {p0, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v10

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    :cond_2
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private getOrCreateScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static getRelativeTime()J
    .locals 2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledImageFromCache(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    return-object v0
.end method

.method static getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J
    .locals 2

    sub-long v0, p1, p3

    return-wide v0
.end method

.method private getTempImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;I)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getOrCreateScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScaledImageFromCache(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private partition([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;III)I
    .locals 9

    aget-wide v1, p1, p5

    invoke-direct {p0, p1, p2, p5, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    move v3, p3

    move v0, p3

    move v4, v3

    :goto_0
    if-ge v0, p4, :cond_0

    aget-wide v5, p1, v0

    cmp-long v5, v5, v1

    if-ltz v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    invoke-direct {p0, p1, p2, v0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    aget-wide v5, p1, p4

    aget-wide v7, p1, v4

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-direct {p0, p1, p2, p4, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    :goto_2
    return v4

    :cond_1
    move v4, p4

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V
    .locals 7

    if-le p4, p3, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->partition([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;III)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, p1, p2, v0, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    :cond_0
    return-void
.end method

.method private queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    if-nez v0, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;B)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setRequested(Z)V

    return-void
.end method

.method private setAutoTargetCacheSize()V
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    return-void
.end method

.method private sort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    return-void
.end method

.method private startWorkThread()V
    .locals 2

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MapService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private stopWorkThread()V
    .locals 2

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V
    .locals 5

    aget-object v2, p2, p4

    aget-object v3, p2, p3

    aput-object v3, p2, p4

    aput-object v2, p2, p3

    aget-wide v0, p1, p4

    aget-wide v3, p1, p3

    aput-wide v3, p1, p4

    aput-wide v0, p1, p3

    return-void
.end method

.method private trimCache(I)V
    .locals 7

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    if-le p1, v4, :cond_2

    aget-object v2, v3, v0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    sub-int/2addr p1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    throw v4

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    :cond_2
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void
.end method


# virtual methods
.method checkTrimCache()V
    .locals 9

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getCacheSize()I

    move-result v0

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    if-le v0, v5, :cond_0

    iget-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    int-to-long v7, v0

    add-long v1, v5, v7

    const-wide/32 v5, 0x9c40

    sub-long v5, v1, v5

    long-to-int v5, v5

    div-int/lit8 v3, v5, 0x2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    long-to-int v4, v5

    div-int/lit8 v5, v4, 0x3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v5, 0x61a8

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    if-ge v0, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->trimCache(I)V

    goto :goto_0
.end method

.method close(Z)V
    .locals 3

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->stopWorkThread()V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->close(Z)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->close()V

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method getCacheSize()I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    monitor-exit v4

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLayerTiles(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Ljava/util/Vector;
    .locals 6

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->needFetchLayerTiles()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    invoke-static {v4, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    return-object v4
.end method

.method getMapCache()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method getRenderedImageCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 9

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v2, v6, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v3, v6, [J

    const/4 v1, 0x0

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    aput-object v6, v2, v1

    aget-object v6, v2, v1

    aget-object v7, v2, v1

    invoke-virtual {p0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTileDate(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)J

    move-result-wide v7

    invoke-static {v6, v4, v5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J

    move-result-wide v6

    aput-wide v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->sort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    return-object v2
.end method

.method getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 7

    const/4 v5, 0x1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    const-wide/high16 v3, -0x8000

    cmp-long v3, p5, v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v3

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide p5

    :cond_0
    if-nez v0, :cond_6

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    if-nez v3, :cond_5

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v3, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTempImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;I)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-direct {v1, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    invoke-virtual {v0, p5, p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setLastAccessTime(J)V

    return-object v0

    :cond_2
    :try_start_4
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    const-wide/16 v5, 0x4e20

    sub-long/2addr p5, v5

    :cond_4
    :try_start_6
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHit()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    :cond_5
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    const/4 v3, 0x0

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-direct {v0, p1, v3, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMiss()V

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v0, v1

    goto :goto_2
.end method

.method public getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 7

    const-wide/high16 v5, -0x8000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    return-object v0
.end method

.method getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 7

    if-eqz p4, :cond_0

    const/4 v4, 0x2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method getTileDate(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)J
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleOutOfMemory(Z)V
    .locals 4

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->clearDataCache()V

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->clearScaledImages()V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v2

    const/16 v0, 0x1f40

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->doCompact(Z)V

    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x61a8

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    :goto_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->checkTrimCache()V

    monitor-exit v2

    return-void

    :cond_0
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    add-int/lit16 v1, v1, -0x1f40

    const/16 v3, 0x61a8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mapChanged()V
    .locals 2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->mapChanged()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyLayerTilesDirty()V
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->setLayerTilesDirty()V

    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyLayerTilesDirty()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method pause()V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->stopWorkThread()V

    return-void
.end method

.method requestLayerTiles()V
    .locals 3

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->needFetchLayerTiles()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTiles()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method requestTiles()Z
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restoreBaseImagesIfNeeded()I
    .locals 8

    const/4 v3, 0x0

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v6

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRenderedImageCount()I

    move-result v3

    const/16 v5, 0x30

    if-le v3, v5, :cond_1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    const/16 v5, 0x18

    if-le v3, v5, :cond_1

    aget-object v2, v4, v0

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->restoreBaseImage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3
.end method

.method resume()V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V

    return-void
.end method

.method public run()V
    .locals 14

    const-wide/16 v12, 0xc29

    const-wide/16 v10, 0x835

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    add-long v2, v0, v10

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    add-long/2addr v0, v12

    :cond_0
    :goto_0
    iget-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-nez v4, :cond_5

    :try_start_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v7

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    move-wide v4, v2

    :goto_1
    sub-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-nez v4, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->checkTrimCache()V

    add-long v2, v4, v10

    :cond_2
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->doCompact(Z)V

    add-long v0, v4, v12

    :cond_3
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->writeCache()Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    const-wide/16 v8, 0xfa0

    add-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    :try_start_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-exception v4

    const-string v5, "MapService BG"

    invoke-static {v5, v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move-wide v4, v0

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v4

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    goto :goto_0

    :cond_5
    return-void

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method setMapCacheLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    return-void
.end method

.method setTileEditionAndTextSize(II)V
    .locals 8

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v5, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->setTileEditionAndTextSize(II)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void
.end method
