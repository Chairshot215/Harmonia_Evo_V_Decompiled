.class public Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;
.super Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final PREFIX:Ljava/lang/String; = "DATA_"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v2, v0, v1

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteBlockX(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;

    const-string v1, "Delete failed."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-void
.end method

.method public getBlockSize(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->getDataSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize(Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x1000

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, v6

    move v3, v6

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v1, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ge v3, v1, :cond_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_0
.end method

.method public writeBlock([BLjava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v4, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
