.class public Lcom/android/internal/backup/LocalTransport;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "LocalTransport.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final RESTORE_TOKEN:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataDir:Ljava/io/File;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 8

    const-string v5, "LocalTransport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearBackupData() pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    return v5
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    const-string v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public finishBackup()I
    .locals 2

    const-string v0, "LocalTransport"

    const-string v1, "finishBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    const-string v0, "LocalTransport"

    const-string v1, "finishRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/app/backup/RestoreSet;

    const-string v2, "Local disk image"

    const-string v3, "flash"

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/app/backup/RestoreSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 15

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "startRestore not called"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v12, :cond_1

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "nextRestorePackage not called"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v13, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v14, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v13, v13, v14

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error listing directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_2
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  getRestoreData() found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " key files"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/app/backup/BackupDataOutput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v1

    :try_start_0
    array-length v8, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v4, v0, v5

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v11, v12

    new-array v2, v11, [B

    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>([B)V

    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    ... key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v7, v11}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v9, v2, v11}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v12

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string v12, "LocalTransport"

    const-string v13, "Unable to read backup records"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public initializeDevice()I
    .locals 2

    const-string v0, "LocalTransport"

    const-string/jumbo v1, "wiping all data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nextRestorePackage()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRestore not called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocalTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  nextRestorePackage() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "LocalTransport"

    const-string v2, "  no more packages to restore"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 13

    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "performBackup() pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v2, 0x200

    :try_start_0
    new-array v1, v2, [B

    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got change set key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key64="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-le v4, v2, :cond_1

    move v2, v4

    new-array v1, v2, [B

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  data size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v10, "LocalTransport"

    const-string v11, "Exception reading backup input:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    :goto_1
    return v10

    :catch_1
    move-exception v5

    :try_start_3
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update key file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v10

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public requestBackupTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3

    const-string v0, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
