.class public Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;
.super Ljava/lang/Object;
.source "InMemoryPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private blocks:Ljava/util/Hashtable;

.field private final prefs:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAllBlocks(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteBlock(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public savePreferences()V
    .locals 0

    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized writeBlock([BLjava/lang/String;)I
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p1, v0, [B

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->writeBlock([BLjava/lang/String;)I

    move-result v0

    return v0
.end method
