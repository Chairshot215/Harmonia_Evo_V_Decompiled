.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
.super Ljava/lang/Object;
.source "TrafficTile.java"


# instance fields
.field private dataTime:J

.field private lastAccess:J

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-void
.end method


# virtual methods
.method public getDataTime()J
    .locals 2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

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
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    goto :goto_0
.end method

.method getLastAccess()J
    .locals 2

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->lastAccess:J

    return-wide v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readData([B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-direct {v10, p1, v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v10, 0x54524133

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/io/IOException;

    const-string v11, "Bad traffic header"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/4 v9, 0x6

    array-length v10, p1

    sub-int v4, v10, v9

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isTest()Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p1, v9, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v8

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    new-array v7, v5, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-static {v1, v8, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readTrafficRoad(Ljava/io/DataInput;II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v10

    aput-object v10, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, v9, v4, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->inflate([BIII)[B

    move-result-object v10

    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v10

    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V

    return-void
.end method

.method protected setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V
    .locals 0

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-void
.end method

.method public setLastAccess(J)V
    .locals 0

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->lastAccess:J

    return-void
.end method
