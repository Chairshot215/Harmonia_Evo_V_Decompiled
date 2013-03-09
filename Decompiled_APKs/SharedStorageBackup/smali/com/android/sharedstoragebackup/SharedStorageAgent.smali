.class public Lcom/android/sharedstoragebackup/SharedStorageAgent;
.super Landroid/app/backup/FullBackupAgent;
.source "SharedStorageAgent.java"


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SharedStorageAgent"


# instance fields
.field mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 23
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/android/sharedstoragebackup/SharedStorageAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 24
    .local v0, mgr:Landroid/os/storage/StorageManager;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v1, "SharedStorageAgent"

    const-string v2, "Unable to access Storage Manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "SharedStorageAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared volumes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v7, v0, v6

    .line 46
    .local v7, v:Landroid/os/storage/StorageVolume;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shared/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, domain:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/sharedstoragebackup/SharedStorageAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    .end local v2           #domain:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #v:Landroid/os/storage/StorageVolume;
    :cond_0
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 14
    .parameter "data"
    .parameter "size"
    .parameter "type"
    .parameter "domain"
    .parameter "relpath"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "SharedStorageAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared restore: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v9, 0x0

    .line 64
    .local v9, outFile:Ljava/io/File;
    const/16 v1, 0x2f

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 65
    .local v13, slash:I
    if-lez v13, :cond_2

    .line 67
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 68
    .local v11, i:I
    iget-object v1, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v1

    if-gt v11, v1, :cond_1

    .line 69
    new-instance v12, Ljava/io/File;

    iget-object v1, p0, Lcom/android/sharedstoragebackup/SharedStorageAgent;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v9           #outFile:Ljava/io/File;
    .local v12, outFile:Ljava/io/File;
    :try_start_1
    const-string v1, "SharedStorageAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v12

    .line 80
    .end local v11           #i:I
    .end local v12           #outFile:Ljava/io/File;
    .restart local v9       #outFile:Ljava/io/File;
    :goto_0
    if-nez v9, :cond_0

    .line 81
    const-string v1, "SharedStorageAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping data with malformed path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-wide/16 v5, -0x1

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v7, p9

    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 85
    return-void

    .line 72
    .restart local v11       #i:I
    :cond_1
    :try_start_2
    const-string v1, "SharedStorageAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot restore data for unavailable volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 74
    .end local v11           #i:I
    :catch_0
    move-exception v10

    .line 75
    .local v10, e:Ljava/lang/NumberFormatException;
    :goto_1
    const-string v1, "SharedStorageAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad volume number token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v1, "SharedStorageAgent"

    const-string v2, "Can\'t find volume-number token"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v9           #outFile:Ljava/io/File;
    .restart local v11       #i:I
    .restart local v12       #outFile:Ljava/io/File;
    :catch_1
    move-exception v10

    move-object v9, v12

    .end local v12           #outFile:Ljava/io/File;
    .restart local v9       #outFile:Ljava/io/File;
    goto :goto_1
.end method
