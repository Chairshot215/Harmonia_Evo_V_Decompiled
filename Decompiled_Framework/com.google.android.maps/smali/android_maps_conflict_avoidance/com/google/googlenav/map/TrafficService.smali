.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;
.super Ljava/lang/Object;
.source "TrafficService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
    }
.end annotation


# static fields
.field private static final EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private nextRefreshTime:J

.field private final refreshMillis:J

.field private volatile request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

.field private final requestedTiles:Ljava/util/Hashtable;

.field private volatile stopCleanCache:Z

.field private final timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-void
.end method

.method public constructor <init>(JLandroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-direct {v0, p3, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    const-wide/16 v1, 0x4e91

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->setDelay(J)V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->start()V

    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->notifyDownloadedTile()V

    return-void
.end method

.method private notifyDownloadedTile()V
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isUnscheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->schedule()V

    :cond_0
    return-void
.end method

.method private declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    if-nez v0, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized cleanCache(J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getLastAccess()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 0

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stop()V

    return-void
.end method

.method public declared-synchronized getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    if-eqz v6, :cond_3

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getDataTime()J

    move-result-wide v4

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v4

    if-eqz p2, :cond_0

    if-nez v3, :cond_0

    const-wide/high16 v7, -0x8000

    cmp-long v7, v4, v7

    if-eqz v7, :cond_0

    iget-wide v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    if-eqz v7, :cond_0

    :cond_2
    invoke-direct {p0, p1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_3
    if-eqz v3, :cond_4

    move-object v6, v3

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    invoke-direct {v6, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public handleOutOfMemory(Z)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public declared-synchronized requestTiles()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J
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

.method public run()V
    .locals 3

    const-wide/32 v1, 0xea60

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cleanCache(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TrafficService BG"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;->getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
