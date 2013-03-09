.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;
.super Ljava/lang/Object;
.source "MapFlashService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private catalogRecordBytes:I

.field private catalogUpdatedSinceLastWrite:Z

.field private final flashRecords:Ljava/util/Vector;

.field private highestRecordId:I

.field private lastChangedTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private maxFlashSize:I

.field private maxRecordBlocks:I

.field private needsScavenge:Z

.field private nextPersistTime:J

.field private final recordStoreBaseName:Ljava/lang/String;

.field private final store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private textSize:I

.field private tileEdition:I

.field private final tileToRecordMap:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    add-int/lit16 v2, p3, -0x7d0

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    const-wide/16 v2, 0x841

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    add-int/lit8 v2, p4, -0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->readCatalog()V

    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    return-void
.end method

.method private addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .locals 5

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private canCreateAnEmptyRecordStore()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {v2, v3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-interface {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 9

    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-direct {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    const/4 v2, 0x1

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v5

    array-length v8, v5

    add-int/lit8 v7, v8, -0x1

    :goto_0
    if-ltz v7, :cond_1

    aget-object v6, v5, v7

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    invoke-direct {v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v0

    add-int v8, v2, v0

    if-gt v8, p2, :cond_0

    invoke-virtual {v4, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/2addr v2, v0

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private findRecordIndexByID(I)I
    .locals 4

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v1

    goto :goto_0
.end method

.method private getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    return-object v0
.end method

.method private handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "B "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v0, " catalog"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->canCreateAnEmptyRecordStore()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit16 v0, v1, -0x3e8

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    goto :goto_1
.end method

.method private loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->findRecordIndexByID(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    monitor-exit p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private declared-synchronized persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/4 v2, 0x0

    new-array v2, v2, [B

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeRecord(Ljava/lang/String;I[B)V

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized readCatalog()V
    .locals 10

    const/16 v9, 0xa

    monitor-enter p0

    const/16 v4, 0xa

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v5

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v9, :cond_3

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    :cond_1
    if-eq v4, v9, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-interface {v5}, Ljava/io/DataInput;->readBoolean()Z

    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    move-result v7

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    move-result v7

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_4

    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    array-length v7, v0

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v7, "FLASH"

    invoke-static {v7, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V
    .locals 5

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->setUnsaved()V

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCache()Z

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method doPersist(Ljava/util/Hashtable;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-object/from16 v17, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-object v31, v17, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-object v31, v17, v30

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v24

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->scavengeCatalog()Z

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v31

    sub-int v3, v30, v31

    move v11, v3

    const v30, 0x11940

    move/from16 v0, v30

    if-lt v3, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_a

    :cond_1
    const/16 v27, -0x1

    const/16 v20, -0x1

    const-wide/high16 v28, -0x8000

    const-wide/high16 v21, -0x8000

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v16

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v18

    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    cmp-long v30, v18, v21

    if-lez v30, :cond_4

    :cond_2
    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    cmp-long v30, v18, v28

    if-lez v30, :cond_5

    :cond_3
    move/from16 v20, v27

    move-wide/from16 v21, v28

    move/from16 v27, v9

    move-wide/from16 v28, v18

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move/from16 v20, v9

    move-wide/from16 v21, v18

    goto :goto_1

    :cond_6
    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    const/16 v30, 0x0

    aput v27, v10, v30

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v31

    aput-object v31, v17, v30

    const/16 v30, 0x0

    aget-object v30, v17, v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v30

    add-int v11, v11, v30

    :cond_7
    const v30, 0x11940

    move/from16 v0, v30

    if-ge v11, v0, :cond_8

    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    const/16 v30, 0x1

    aput v20, v10, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v31

    aput-object v31, v17, v30

    const/16 v30, 0x1

    aget-object v30, v17, v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v30

    add-int v11, v11, v30

    :cond_8
    const v30, 0x11940

    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v30, 0x1770

    move/from16 v0, v30

    if-ge v11, v0, :cond_b

    const/16 v30, 0x0

    aget-object v30, v17, v30

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v31, v17, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    const/16 v30, 0x0

    aget-object v30, v17, v30

    const/16 v31, 0x0

    aget v31, v10, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    :cond_9
    const/16 v26, 0x1

    :goto_3
    return v26

    :cond_a
    const v11, 0x11940

    goto :goto_2

    :catchall_0
    move-exception v30

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    :cond_b
    monitor-enter p1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v14

    const/16 v30, 0x1770

    move/from16 v0, v30

    if-lt v14, v0, :cond_16

    const/4 v7, -0x1

    monitor-enter p0

    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v31

    sub-int v3, v30, v31

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_4
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ge v6, v0, :cond_d

    aget-object v30, v17, v6

    if-eqz v30, :cond_c

    aget-object v30, v17, v6

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    move-result v30

    if-eqz v30, :cond_c

    aget-object v30, v17, v6

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v30

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-lez v30, :cond_c

    const/16 v30, 0x1

    aput-boolean v30, v23, v6

    aget-object v30, v17, v6

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v30

    add-int v4, v4, v30

    :cond_c
    add-int v30, v3, v4

    move/from16 v0, v30

    if-gt v14, v0, :cond_10

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v15

    add-int v30, v3, v4

    move/from16 v0, v30

    if-le v14, v0, :cond_11

    const/16 v26, 0x2

    :cond_e
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ltz v7, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->createDataEntry(Ljava/util/Hashtable;)[B

    move-result-object v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V

    :cond_f
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z

    goto/16 :goto_3

    :catchall_1
    move-exception v30

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v30

    :catchall_2
    move-exception v30

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v30

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_11
    const/16 v30, 0x0

    :try_start_6
    aget-boolean v30, v23, v30

    if-eqz v30, :cond_14

    if-gt v14, v3, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_14

    :cond_12
    const/16 v26, 0x4

    const/16 v30, 0x0

    aget-object v30, v17, v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v7

    const/16 v30, 0x0

    aget-object v30, v17, v30

    const/16 v31, 0x0

    aget v31, v10, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    const/16 v30, 0x1

    aget-boolean v30, v23, v30

    if-eqz v30, :cond_e

    const/16 v30, 0x0

    aget v30, v10, v30

    const/16 v31, 0x1

    aget v31, v10, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    const/16 v30, 0x1

    aget v31, v10, v30

    add-int/lit8 v31, v31, -0x1

    aput v31, v10, v30

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-object v31, v17, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    const/16 v30, 0x1

    aget-object v30, v17, v30

    const/16 v31, 0x1

    aget v31, v10, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    goto/16 :goto_5

    :catchall_3
    move-exception v30

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v30

    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_15

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    move/from16 v30, v0

    add-int/lit8 v8, v30, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v7, v8

    goto/16 :goto_5

    :cond_15
    const/16 v26, 0x5

    goto/16 :goto_5

    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_6

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public declared-synchronized eraseAll()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteAllBlocks(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFlashRecordsSize()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    :cond_0
    return-object v1
.end method

.method getNumBlocks()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSize()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecordsSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapChanged()V
    .locals 2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    return-void
.end method

.method recordBlockName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized scavengeCatalog()Z
    .locals 8

    monitor-enter p0

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->listBlocks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v4, :cond_3

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    aget-object v3, v4, v2

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-interface {v6, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-lez v6, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x0

    :cond_4
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setTileEditionAndTextSize(II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, -0x1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eq p2, v2, :cond_3

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eq v2, v3, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeCache()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v9, 0x841

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getMapCache()Ljava/util/Hashtable;

    move-result-object v1

    const/4 v0, 0x0

    iget-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_2

    iget-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    const-wide/16 v7, 0x5dc

    add-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-gez v5, :cond_2

    :try_start_0
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->doPersist(Ljava/util/Hashtable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v9

    iput-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v9

    iput-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    throw v5

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method declared-synchronized writeCatalog()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    monitor-enter p0

    const/4 v5, 0x1

    :try_start_0
    iget-boolean v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    :goto_0
    monitor-exit p0

    return v8

    :cond_0
    :try_start_1
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    invoke-direct {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeToCatalog(Ljava/io/DataOutput;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v8, v1, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    array-length v8, v1

    iput v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    move v8, v5

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
