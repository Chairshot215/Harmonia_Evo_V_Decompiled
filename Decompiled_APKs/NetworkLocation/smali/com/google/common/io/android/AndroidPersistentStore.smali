.class public Lcom/google/common/io/android/AndroidPersistentStore;
.super Lcom/google/common/io/BasePersistentStore;

# interfaces
.implements Lcom/google/common/io/PersistentStore;


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

    invoke-direct {p0}, Lcom/google/common/io/BasePersistentStore;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

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


# virtual methods
.method public readBlock(Ljava/lang/String;)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lcom/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    invoke-static {p1, v2, v3, v0}, Lcom/google/common/io/android/AndroidPersistentStoreHelper;->readFully(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_4
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public writeBlock([BLjava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v3, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p1, v0, [B

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
