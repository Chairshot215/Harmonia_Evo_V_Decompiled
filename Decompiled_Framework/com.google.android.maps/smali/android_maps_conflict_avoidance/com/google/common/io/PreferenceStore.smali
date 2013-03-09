.class public Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;
.super Ljava/lang/Object;
.source "PreferenceStore.java"


# instance fields
.field private final persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private preferences:Ljava/util/Hashtable;

.field private preferencesChanged:Z


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    return-void
.end method

.method private declared-synchronized ensurePreferencesLoaded()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const-string v2, "Preferences"

    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->unpackPreferences([B)Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/16 v2, 0x7d0

    new-array v2, v2, [B

    const-string v3, "Preferences"

    invoke-interface {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static packPreferences(Ljava/util/Hashtable;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    if-nez v1, :cond_0

    const/4 v5, 0x0

    new-array v1, v5, [B

    :cond_0
    invoke-interface {v2, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    array-length v5, v1

    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-interface {v2, v1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static packPreferencesBlock(Ljava/util/Hashtable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x7d0

    const/4 v3, 0x0

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->packPreferences(Ljava/util/Hashtable;)[B

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v4, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static unpackPreferences([B)Ljava/util/Hashtable;
    .locals 9

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    new-array v4, v0, [B

    invoke-interface {v1, v4}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "FLASH"

    invoke-static {v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v6
.end method


# virtual methods
.method public declared-synchronized readPreference(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized savePreferences()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->packPreferencesBlock(Ljava/util/Hashtable;)[B

    move-result-object v0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const-string v3, "Preferences"

    invoke-interface {v2, v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "FLASH"

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setPreference(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z

    if-nez p2, :cond_1

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
