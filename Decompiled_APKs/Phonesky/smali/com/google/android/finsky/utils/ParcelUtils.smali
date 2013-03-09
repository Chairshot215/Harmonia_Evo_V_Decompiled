.class public Lcom/google/android/finsky/utils/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized readFromDisk(Ljava/io/File;)Landroid/os/Parcelable;
    .locals 10
    .parameter "cacheFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 60
    const-class v6, Lcom/google/android/finsky/utils/ParcelUtils;

    monitor-enter v6

    const/4 v0, 0x0

    .line 62
    .local v0, cachedObject:Landroid/os/Parcelable;,"TT;"
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .local v3, ois:Ljava/io/DataInputStream;
    invoke-static {v3}, Lcom/google/android/finsky/utils/ParcelUtils;->readObject(Ljava/io/DataInputStream;)Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 64
    .local v2, obj:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_0

    .line 65
    move-object v0, v2

    .line 75
    .end local v2           #obj:Landroid/os/Parcelable;,"TT;"
    .end local v3           #ois:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 69
    const-string v5, "Version mismatch in %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v1           #e:Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 70
    :catch_1
    move-exception v4

    .line 71
    .local v4, t:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 72
    const-string v5, "Unable to read %s from cache: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static readObject(Ljava/io/DataInputStream;)Landroid/os/Parcelable;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/io/DataInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 94
    const-class v0, Lcom/google/android/finsky/utils/ParcelUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 96
    new-array v1, v1, [B

    .line 97
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 101
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 108
    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Landroid/os/Parcelable;)V
    .locals 3
    .parameter "out"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 81
    .local v1, p:Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 84
    .local v0, marshalled:[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    return-void

    .line 87
    .end local v0           #marshalled:[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static declared-synchronized writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    .locals 5
    .parameter "cacheFile"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const-class v3, Lcom/google/android/finsky/utils/ParcelUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_2
    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ParcelUtils;->writeObject(Ljava/io/DataOutputStream;Landroid/os/Parcelable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 43
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    .line 44
    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 47
    :cond_1
    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    .end local v0           #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 45
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 43
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_1
.end method
