.class public Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# static fields
.field private static currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;


# instance fields
.field private bytesDownloaded:I

.field private bytesUploaded:I

.field private flashCacheHits:I

.field private flashCacheHitsSinceLastLog:I

.field private flashCacheMisses:I

.field private flashCacheMissesSinceLastLog:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesDownloaded:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesUploaded:I

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .locals 2

    const-class v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    if-nez v0, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->read()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    if-nez v0, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    :cond_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Z)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    add-int v4, v0, v1

    if-le v4, v3, :cond_0

    const/4 v4, 0x0

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    const/4 v4, 0x0

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v4, v0, v1

    if-le v4, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-lez v0, :cond_1

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    if-lez v1, :cond_2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "m"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x16

    const-string v5, "c"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void

    :cond_4
    const/16 v3, 0x32

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static read()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .locals 6

    const/4 v2, 0x0

    const-string v4, "Stats"

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesDownloaded:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesUploaded:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    :goto_1
    const-string v4, "STATS"

    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v4

    const-string v5, "Stats"

    invoke-interface {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public flashCacheHit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->log(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flashCacheMiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->log(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
