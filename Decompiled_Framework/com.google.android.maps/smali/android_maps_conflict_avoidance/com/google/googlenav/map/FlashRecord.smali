.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
.super Ljava/lang/Object;
.source "FlashRecord.java"


# static fields
.field private static final lastCacheDataLock:Ljava/lang/Object;

.field private static lastCachedData:[B

.field private static lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;


# instance fields
.field private final flashEntries:Ljava/util/Vector;

.field private recordId:I

.field private unverified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    return-void
.end method

.method static clearDataCache()V
    .locals 2

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadTileFromDataEntry([BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v8

    if-ne v3, v8, :cond_0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    iget-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    if-eqz v8, :cond_2

    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    invoke-direct {v4, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v6, v0

    iget-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    if-nez v8, :cond_4

    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v7, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "FLASH"

    invoke-static {v7, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "FlashRecord full"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return-object v3
.end method


# virtual methods
.method public addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z
    .locals 2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setFlashRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method createDataEntry(Ljava/util/Hashtable;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v6, 0x11940

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    if-nez v4, :cond_0

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_0
    invoke-virtual {v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->write(Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    iget v8, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    if-eq v7, v8, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v3

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v7

    if-eq v3, v7, :cond_4

    move v5, v6

    goto :goto_0

    :cond_4
    iget-object v4, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDataSize()I
    .locals 4

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    return-object v0
.end method

.method public getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getRecordId()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return v0
.end method

.method public getScore(J)J
    .locals 8

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v5

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getLastAccessTime()J

    move-result-wide v6

    invoke-static {v5, p1, p2, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long v5, v2

    div-long v5, v3, v5

    :goto_1
    return-wide v5

    :cond_1
    const-wide v5, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return v0
.end method

.method isSaved()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-eqz v2, :cond_3

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    sput-object p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTileFromDataEntry([BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public numEntries()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method setUnsaved()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeRecord(Ljava/lang/String;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return-void
.end method

.method public writeToCatalog(Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t write unsaved FlashRecord"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->writeToCatalog(Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
