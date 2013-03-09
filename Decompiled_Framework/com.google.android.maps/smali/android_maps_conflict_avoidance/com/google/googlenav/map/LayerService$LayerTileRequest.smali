.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "LayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerTileRequest"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

.field private final tiles:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)V
    .locals 1

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getRequestType()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public processLayerTile(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;Z)V
    .locals 12

    const/4 v6, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    invoke-virtual {p1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {p1, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    invoke-virtual {p1, v11, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    if-nez v3, :cond_4

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    :goto_2
    invoke-virtual {p1, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setImage([B)V

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyLayerTilesDirty()V

    return-void

    :cond_4
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public processResponseHeader(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 10

    const/16 v9, 0xd

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v8, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    new-array v3, v4, [Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v5, v9, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    aput-object v7, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v7, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyNewLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v5, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_RESPONSE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-static {v5, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->processResponseHeader(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v1, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v1, v7, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->processLayerTile(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v6
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    monitor-enter p0

    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v6, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    const/16 v10, 0x100

    invoke-virtual {v6, v11, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v9

    new-instance v8, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->MAP_TILE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    const/16 v10, 0x8

    invoke-virtual {v8, v11, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v10

    invoke-virtual {v8, v12, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v10

    invoke-virtual {v8, v13, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    const/4 v10, 0x4

    invoke-virtual {v8, v10, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    invoke-virtual {v6, v13, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_0
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;

    move-result-object v2

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    const/16 v10, 0x15

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->getParameters()[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v10, v5

    add-int/lit8 v1, v10, -0x1

    :goto_2
    if-ltz v1, :cond_1

    const/16 v10, 0x16

    aget-object v11, v5, v1

    invoke-virtual {v3, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->isValidZoomLevel(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v6, v12, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v6, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    return-void
.end method
