.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "BaseTileRequest.java"


# instance fields
.field protected final createTime:J

.field private final requestType:I

.field private stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

.field private textSize:I

.field private writeLatency:I


# direct methods
.method protected constructor <init>(IB)V
    .locals 4

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tile-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    const-string v2, "t"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;-><init>(Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start()V

    return-void
.end method

.method private static formatTileTypesForLog(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_1

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_2

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_3

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    const-string v1, ","

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readImageData(Ljava/io/DataInput;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    new-array v0, v1, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    return v0
.end method

.method protected abstract handleEndOfResponse(I)V
.end method

.method protected abstract processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v15, 0x0

    :try_start_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v1, v9, v1

    long-to-int v3, v1

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v14

    move-object/from16 v0, p0

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->setTileEditionAndTextSize(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    if-eqz v13, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Server returned: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    throw v1

    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    :cond_1
    const/4 v15, 0x0

    :goto_0
    if-ge v15, v5, :cond_2

    invoke-static/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v8

    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readImageData(Ljava/io/DataInput;)[B

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v1, v11, v1

    long-to-int v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->stop()V

    invoke-static/range {v16 .. v16}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    invoke-static/range {v1 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmLogger;->logTimingTileLatency(Ljava/lang/String;IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    const/4 v1, 0x1

    return v1

    :cond_3
    :try_start_2
    array-length v1, v7

    add-int/2addr v6, v1

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    shl-int/2addr v1, v2

    or-int v16, v16, v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method

.method protected abstract setTileEditionAndTextSize(II)V
.end method

.method protected writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_1

    array-length v6, p1

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    move-result v6

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    const/16 v6, 0x100

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    const-wide/16 v0, 0xa2f

    sget-object v6, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x2000

    or-long/2addr v0, v6

    :cond_0
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_2

    aget-object v5, p1, v2

    invoke-virtual {v5, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v6, v3, v6

    long-to-int v6, v6

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    return-void
.end method
