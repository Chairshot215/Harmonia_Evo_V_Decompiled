.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficTileRequest"
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

.field private final tiles:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .locals 2

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    const/16 v0, 0x1a

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;-><init>(IB)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleEndOfResponse(I)V
    .locals 0

    return-void
.end method

.method protected processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    if-nez v0, :cond_1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    invoke-direct {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    :cond_0
    :goto_0
    array-length v1, p3

    if-nez v1, :cond_2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$100()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->notifyDownloadedTile()V
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    invoke-direct {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->readData([B)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected setTileEditionAndTextSize(II)V
    .locals 0

    return-void
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V

    return-void
.end method
