.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.source "AndroidPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private context:Landroid/content/Context;

.field private final fileLockNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    return-void
.end method

.method private static makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "DATA_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v2, v1, v0

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_1

    aget-object v7, v3, v0

    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v6, v1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v6, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-ge v5, v3, :cond_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v4

    goto :goto_0
.end method

.method public writeBlock([BLjava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_0
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v1

    goto :goto_0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v5, -0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array p1, v2, [B

    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    div-int/lit16 v2, v2, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x1000

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
