.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
.super Ljava/lang/Object;
.source "LayerTile.java"


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private dataTime:J

.field private image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private isComplete:Z

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized compact()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataTime()J
    .locals 2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    goto :goto_0
.end method

.method public declared-synchronized getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setImage([B)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    goto :goto_0
.end method

.method public updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .locals 9

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v7, p1

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_4

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getItems()[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    move-result-object v3

    array-length v7, v3

    add-int/lit8 v4, v7, -0x1

    :goto_2
    if-ltz v4, :cond_3

    aget-object v2, v3, v4

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-nez v6, :cond_1

    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;

    invoke-direct {v6, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v7

    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    goto :goto_0
.end method
