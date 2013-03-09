.class public Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_PREFERENCE_SIZE:I = 0x7d0

.field public static final PREFERENCE_BLOCK:Ljava/lang/String; = "Preferences"


# instance fields
.field private final persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

.field private preferences:Ljava/util/Hashtable;

.field private preferencesChanged:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferencesChanged:Z

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    return-void
.end method

.method private declared-synchronized ensurePreferencesLoaded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    const-string v1, "Preferences"

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->unpackPreferences([B)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const-string v2, "Preferences"

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static packPreferences(Ljava/util/Hashtable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    :cond_0
    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    array-length v0, v1

    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-interface {v3, v1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static packPreferencesBlock(Ljava/util/Hashtable;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->packPreferences(Ljava/util/Hashtable;)[B

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v2, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static unpackPreferences([B)Ljava/util/Hashtable;
    .locals 6

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    new-array v5, v5, [B

    invoke-interface {v0, v5}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FLASH"

    invoke-static {v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public declared-synchronized clearPreferences()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readPreference(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

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
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->packPreferencesBlock(Ljava/util/Hashtable;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->persistentStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    const-string v2, "Preferences"

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setPreference(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferencesChanged:Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
