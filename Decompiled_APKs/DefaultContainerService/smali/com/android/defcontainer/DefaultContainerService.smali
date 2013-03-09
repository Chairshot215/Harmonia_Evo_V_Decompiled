.class public Lcom/android/defcontainer/DefaultContainerService;
.super Landroid/app/IntentService;
.source "DefaultContainerService.java"


# static fields
.field private static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final PREFER_EXTERNAL:I = 0x2

.field private static final PREFER_INTERNAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefContainer"

.field private static final localLOGV:Z = true


# instance fields
.field private mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 209
    const-string v0, "DefaultContainerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/android/defcontainer/DefaultContainerService$1;

    invoke-direct {v0, p0}, Lcom/android/defcontainer/DefaultContainerService$1;-><init>(Lcom/android/defcontainer/DefaultContainerService;)V

    iput-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/defcontainer/DefaultContainerService;->setIntentRedelivery(Z)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;IJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/defcontainer/DefaultContainerService;->recommendAppInstallLocation(ILjava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private calculateContainerSize(Ljava/io/File;)I
    .locals 7
    .parameter "apkFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 564
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 565
    .local v0, sizeBytes:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 571
    :cond_0
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesLI(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 573
    const/16 v3, 0x14

    shr-long v3, v0, v3

    long-to-int v2, v3

    .line 574
    .local v2, sizeMb:I
    mul-int/lit16 v3, v2, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v3, v3

    sub-long v3, v0, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 575
    add-int/lit8 v2, v2, 0x1

    .line 583
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 585
    return v2
.end method

.method private copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "pPackageURI"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v4, srcPackageFile:Ljava/io/File;
    invoke-static {v4, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 389
    .end local v4           #srcPackageFile:Ljava/io/File;
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/defcontainer/DefaultContainerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 369
    if-nez v2, :cond_2

    .line 370
    const-string v5, "DefContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider returned no file descriptor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "provider returned no file descriptor"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "DefContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t open file descriptor from download service. Failed with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    throw v1

    .line 374
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    const-string v5, "DefContainer"

    const-string v6, "Opened file descriptor from download service."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 383
    .local v0, dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    invoke-static {v0, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 386
    .end local v0           #dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const-string v5, "DefContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package URI is not \'file:\' or \'content:\' - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "Package URI is not \'file:\' or \'content:\'"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "packageURI"
    .parameter "newCid"
    .parameter "key"
    .parameter "resFileName"

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, status:Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 250
    const-string v10, "DefContainer"

    const-string v11, "Make sure sdcard is mounted."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v4, 0x0

    .line 329
    :goto_0
    return-object v4

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, codePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, codeFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 269
    .local v8, sizeMb:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    move-object/from16 v0, p3

    invoke-static {v8, p2, v0, v10}, Lcom/android/internal/content/PackageHelper;->createSdDir(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, newCachePath:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 270
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to create container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v4, 0x0

    goto :goto_0

    .line 262
    .end local v4           #newCachePath:Ljava/lang/String;
    .end local v8           #sizeMb:I
    :catch_0
    move-exception v3

    .line 263
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File does not exist when trying to copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v4, 0x0

    goto :goto_0

    .line 275
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #newCachePath:Ljava/lang/String;
    .restart local v8       #sizeMb:I
    :cond_1
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Created container for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at path : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v5, resFile:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 281
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copied "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v7, Ljava/io/File;

    const-string v10, "lib"

    invoke-direct {v7, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v7, sharedLibraryDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 292
    invoke-static {v1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    move-result v6

    .line 293
    .local v6, ret:I
    const/4 v10, 0x1

    if-eq v6, v10, :cond_4

    .line 294
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not copy native libraries to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 296
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 284
    .end local v6           #ret:I
    .end local v7           #sharedLibraryDir:Ljava/io/File;
    :cond_2
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 287
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 299
    .restart local v7       #sharedLibraryDir:Ljava/io/File;
    :cond_3
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create native lib directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 301
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 304
    .restart local v6       #ret:I
    :cond_4
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 305
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to finalize "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 308
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 312
    :cond_5
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finalized container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 317
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unmounting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->gc()V

    .line 322
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 325
    :cond_6
    const-string v10, "DefContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not mounted"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static copyToFile(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "srcFile"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :goto_0
    return-void

    .line 346
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "inputStream"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 335
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_0

    .line 336
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method private isUnderExternalThreshold(Ljava/io/File;)Z
    .locals 7
    .parameter "apkFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 537
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v4

    .line 541
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;)I

    move-result v3

    .line 544
    .local v3, sizeMb:I
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 545
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 546
    .local v2, sdStats:Landroid/os/StatFs;
    const/high16 v5, 0x10

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    div-int v1, v5, v6

    .line 547
    .local v1, blocksToMb:I
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    mul-int v0, v5, v1

    .line 552
    .end local v1           #blocksToMb:I
    .end local v2           #sdStats:Landroid/os/StatFs;
    .local v0, availSdMb:I
    :goto_1
    if-le v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 549
    .end local v0           #availSdMb:I
    :cond_2
    const/4 v0, -0x1

    .restart local v0       #availSdMb:I
    goto :goto_1
.end method

.method private isUnderInternalThreshold(Ljava/io/File;J)Z
    .locals 9
    .parameter "apkFile"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 517
    .local v3, size:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 518
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5

    .line 521
    :cond_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 522
    .local v2, internalStats:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 525
    .local v0, availInternalSize:J
    sub-long v5, v0, v3

    cmp-long v5, v5, p2

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private recommendAppInstallLocation(ILjava/lang/String;IJ)I
    .locals 13
    .parameter "installLocation"
    .parameter "archiveFilePath"
    .parameter "flags"
    .parameter "threshold"

    .prologue
    .line 397
    const/4 v3, 0x0

    .line 403
    .local v3, checkBoth:Z
    and-int/lit8 v10, p3, 0x1

    if-eqz v10, :cond_4

    .line 408
    const/4 v9, 0x1

    .line 453
    .local v9, prefer:I
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    .line 455
    .local v5, emulated:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, apkFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 458
    .local v6, fitsOnInternal:Z
    if-nez v3, :cond_0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 460
    :cond_0
    :try_start_0
    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;J)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 466
    :cond_1
    const/4 v7, 0x0

    .line 467
    .local v7, fitsOnSd:Z
    if-nez v5, :cond_3

    if-nez v3, :cond_2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 469
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 475
    :cond_3
    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 476
    if-eqz v6, :cond_d

    .line 477
    const/4 v10, 0x1

    .line 502
    .end local v7           #fitsOnSd:Z
    :goto_1
    return v10

    .line 410
    .end local v2           #apkFile:Ljava/io/File;
    .end local v5           #emulated:Z
    .end local v6           #fitsOnInternal:Z
    .end local v9           #prefer:I
    :cond_4
    and-int/lit8 v10, p3, 0x10

    if-eqz v10, :cond_5

    .line 411
    const/4 v9, 0x1

    .line 412
    .restart local v9       #prefer:I
    goto :goto_0

    .line 413
    .end local v9           #prefer:I
    :cond_5
    and-int/lit8 v10, p3, 0x8

    if-eqz v10, :cond_6

    .line 414
    const/4 v9, 0x2

    .line 415
    .restart local v9       #prefer:I
    goto :goto_0

    .line 419
    .end local v9           #prefer:I
    :cond_6
    const/4 v10, 0x1

    if-ne p1, v10, :cond_7

    .line 420
    const/4 v9, 0x1

    .line 421
    .restart local v9       #prefer:I
    goto :goto_0

    .line 422
    .end local v9           #prefer:I
    :cond_7
    const/4 v10, 0x2

    if-ne p1, v10, :cond_8

    .line 423
    const/4 v9, 0x2

    .line 424
    .restart local v9       #prefer:I
    const/4 v3, 0x1

    .line 425
    goto :goto_0

    .line 426
    .end local v9           #prefer:I
    :cond_8
    if-nez p1, :cond_9

    .line 428
    const/4 v9, 0x1

    .line 429
    .restart local v9       #prefer:I
    const/4 v3, 0x1

    .line 430
    goto :goto_0

    .line 434
    .end local v9           #prefer:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/defcontainer/DefaultContainerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_install_location"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 438
    .local v8, installPreference:I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_a

    .line 439
    const/4 v9, 0x1

    .line 440
    .restart local v9       #prefer:I
    goto :goto_0

    .line 441
    .end local v9           #prefer:I
    :cond_a
    const/4 v10, 0x2

    if-ne v8, v10, :cond_b

    .line 442
    const/4 v9, 0x2

    .line 443
    .restart local v9       #prefer:I
    goto :goto_0

    .line 450
    .end local v9           #prefer:I
    :cond_b
    const/4 v9, 0x1

    .restart local v9       #prefer:I
    goto :goto_0

    .line 461
    .end local v8           #installPreference:I
    .restart local v2       #apkFile:Ljava/io/File;
    .restart local v5       #emulated:Z
    .restart local v6       #fitsOnInternal:Z
    :catch_0
    move-exception v4

    .line 462
    .local v4, e:Ljava/io/FileNotFoundException;
    const/4 v10, -0x6

    goto :goto_1

    .line 470
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v7       #fitsOnSd:Z
    :catch_1
    move-exception v4

    .line 471
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    const/4 v10, -0x6

    goto :goto_1

    .line 479
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :cond_c
    if-nez v5, :cond_d

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 480
    if-eqz v7, :cond_d

    .line 481
    const/4 v10, 0x2

    goto :goto_1

    .line 485
    :cond_d
    if-eqz v3, :cond_f

    .line 486
    if-eqz v6, :cond_e

    .line 487
    const/4 v10, 0x1

    goto :goto_1

    .line 488
    :cond_e
    if-nez v5, :cond_f

    if-eqz v7, :cond_f

    .line 489
    const/4 v10, 0x2

    goto :goto_1

    .line 498
    :cond_f
    if-nez v5, :cond_11

    if-nez v3, :cond_10

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    :cond_10
    const-string v10, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 500
    const/4 v10, -0x5

    goto :goto_1

    .line 502
    :cond_11
    const/4 v10, -0x1

    goto :goto_1
.end method


# virtual methods
.method eraseFiles(Ljava/io/File;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, files:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 234
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 235
    .local v1, file:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #files:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 240
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 215
    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 218
    .local v1, pm:Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 220
    .local v0, pkg:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 222
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 223
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 228
    .end local v0           #pkg:Ljava/lang/String;
    .end local v1           #pm:Landroid/content/pm/IPackageManager;
    :cond_0
    return-void
.end method
