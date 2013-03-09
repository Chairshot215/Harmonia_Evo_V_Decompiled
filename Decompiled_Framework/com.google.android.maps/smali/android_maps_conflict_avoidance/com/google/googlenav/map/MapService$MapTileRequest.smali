.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.source "MapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapTileRequest"
.end annotation


# instance fields
.field private closed:Z

.field private isForeground:Z

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private tilePriorityList:Ljava/util/Vector;

.field private tileSchedule:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;B)V
    .locals 1

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;-><init>(IB)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->isForeground:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    return-void
.end method


# virtual methods
.method protected handleEndOfResponse(I)V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-static {v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/ArrayUtil;->copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->isForeground:Z

    return v0
.end method

.method protected processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .locals 7

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    if-nez v1, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setData([B)V

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v3

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setLastAccessTime(J)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;->repaint()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$210(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    invoke-super {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readResponseData(Ljava/io/DataInput;)Z

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Adding tiles to closed request!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_1
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p2, v1, :cond_4

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_3
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected setTileEditionAndTextSize(II)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setTileEditionAndTextSize(II)V

    return-void
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$208(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V

    return-void
.end method
