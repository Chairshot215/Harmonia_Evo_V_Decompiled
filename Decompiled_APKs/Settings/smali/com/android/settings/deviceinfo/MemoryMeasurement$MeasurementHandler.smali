.class Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "MemoryMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MemoryMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;
    }
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x5

.field public static final MSG_CONNECTED:I = 0x3

.field public static final MSG_DISCONNECT:I = 0x4

.field public static final MSG_INVALIDATE:I = 0x6

.field public static final MSG_MEASURE_EXTERNAL:I = 0x2

.field public static final MSG_MEASURE_INTERNAL:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field private volatile mMeasured:Z

.field private mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MemoryMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 220
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    .line 221
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 197
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    .line 205
    new-instance v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 222
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 223
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V

    return-void
.end method

.method private getSize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 6
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 459
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 464
    :goto_0
    return-wide v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private measureApproximateInternalStorage()V
    .locals 13

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 352
    .local v6, dataPath:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 353
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 354
    .local v4, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v8, v12

    .line 355
    .local v8, totalBlocks:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    .line 357
    .local v2, availableBlocks:J
    mul-long v10, v8, v4

    .line 358
    .local v10, totalSize:J
    mul-long v0, v2, v4

    .line 360
    .local v0, availSize:J
    iget-object v12, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalTotalSize:J
    invoke-static {v12, v10, v11}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$802(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    .line 361
    iget-object v12, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAvailSize:J
    invoke-static {v12, v0, v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$902(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    .line 363
    iget-object v12, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1000(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    .line 364
    return-void
.end method

.method private measureExactInternalStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 18
    .parameter "imcs"

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    move-object v3, v12

    .line 368
    .local v3, context:Landroid/content/Context;
    :goto_0
    if-nez v3, :cond_2

    .line 424
    :cond_0
    :goto_1
    return-void

    .line 367
    .end local v3           #context:Landroid/content/Context;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 373
    .restart local v3       #context:Landroid/content/Context;
    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 374
    .local v11, pm:Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_0

    .line 378
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    const/4 v12, 0x5

    if-ge v7, v12, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    const-wide/16 v13, 0x0

    aput-wide v13, v12, v7

    .line 380
    sget-object v12, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v6, v12, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mDirPaths:[Ljava/lang/String;

    .line 381
    .local v6, dirs:[Ljava/lang/String;
    array-length v10, v6

    .line 382
    .local v10, len:I
    if-lez v10, :cond_4

    .line 383
    const/4 v9, 0x0

    .local v9, k:I
    :goto_3
    if-ge v9, v10, :cond_4

    .line 384
    aget-object v12, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->getSize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v4

    .line 385
    .local v4, dirSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    aget-wide v13, v12, v7

    add-long/2addr v13, v4

    aput-wide v13, v12, v7

    .line 386
    sget-boolean v12, Lcom/android/settings/deviceinfo/MemoryMeasurement;->LOGV:Z

    if-eqz v12, :cond_3

    .line 387
    const-string v12, "MemorySettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "size of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 378
    .end local v4           #dirSize:J
    .end local v9           #k:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 394
    .end local v6           #dirs:[Ljava/lang/String;
    .end local v10           #len:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v14}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v14

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    aput-wide v14, v12, v13

    .line 395
    const/4 v7, 0x1

    :goto_4
    const/4 v12, 0x5

    if-ge v7, v12, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    const/4 v13, 0x5

    aget-wide v14, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static/range {v16 .. v16}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v16

    aget-wide v16, v16, v7

    sub-long v14, v14, v16

    aput-wide v14, v12, v13

    .line 395
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 398
    :cond_6
    sget-boolean v12, Lcom/android/settings/deviceinfo/MemoryMeasurement;->LOGV:Z

    if-eqz v12, :cond_7

    .line 399
    const-string v12, "MemorySettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "media_misc size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v14}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v14

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    .line 406
    const/16 v12, 0x2200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 409
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_0

    .line 411
    new-instance v12, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Lcom/android/settings/deviceinfo/MemoryMeasurement$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->access$1300(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;

    move-result-object v13

    monitor-enter v13

    .line 413
    const/4 v7, 0x0

    :goto_5
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_8

    .line 414
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 415
    .local v8, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    iget-object v14, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->queuePackageMeasurementLocked(Ljava/lang/String;)V

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 418
    .end local v8           #info:Landroid/content/pm/ApplicationInfo;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V

    .line 419
    monitor-exit v13

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 17
    .parameter "imcs"

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    .line 427
    .local v13, top:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 428
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 430
    .local v10, files:[Ljava/io/File;
    if-nez v10, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    array-length v12, v10

    .line 435
    .local v12, len:I
    if-eqz v12, :cond_0

    .line 439
    const-wide/16 v6, 0x0

    .line 440
    .local v6, counter:J
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_5

    .line 441
    aget-object v2, v10, v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, path:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/deviceinfo/Constants;->ExclusionTargetsForMiscFiles:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 445
    :cond_3
    aget-object v2, v10, v11

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-object v14, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;

    aget-object v15, v10, v11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v15, 0x1

    add-long v8, v6, v15

    .end local v6           #counter:J
    .local v8, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v6, v8

    .end local v8           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .line 447
    :cond_4
    aget-object v2, v10, v11

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->getSize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v4

    .line 449
    .local v4, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-object v14, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;

    const-wide/16 v15, 0x1

    add-long v8, v6, v15

    .end local v6           #counter:J
    .restart local v8       #counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v6, v8

    .end local v8           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .line 454
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #dirSize:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onInternalMeasurementComplete()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 348
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 295
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 297
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 298
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendExternalApproximateUpdate()V
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$200(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureApproximateExternalStorage()V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    if-eqz v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalExactUpdate()V
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$300(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 244
    .local v0, context:Landroid/content/Context;
    :cond_3
    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureApproximateInternalStorage()V

    .line 250
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 251
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_4

    .line 252
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 253
    const/4 v3, 0x3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 255
    :cond_4
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$400()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 256
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 263
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #service:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 264
    .local v1, imcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureExactInternalStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 268
    .end local v1           #imcs:Lcom/android/internal/app/IMediaContainerService;
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 269
    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_7

    .line 270
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 271
    .restart local v0       #context:Landroid/content/Context;
    :cond_5
    if-nez v0, :cond_6

    .line 272
    monitor-exit v4

    goto :goto_0

    .line 278
    .end local v0           #context:Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 275
    .restart local v0       #context:Landroid/content/Context;
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    .line 276
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    .end local v0           #context:Landroid/content/Context;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 282
    :pswitch_4
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    .line 283
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalExactUpdate()V
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$300(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    goto/16 :goto_0

    .line 287
    :pswitch_5
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public measureApproximateExternalStorage()V
    .locals 11

    .prologue
    .line 469
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 471
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 472
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 473
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 474
    .local v6, totalBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 476
    .local v0, availableBlocks:J
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    mul-long v9, v6, v2

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalTotalSize:J
    invoke-static {v8, v9, v10}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1402(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    .line 477
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    mul-long v9, v0, v2

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalAvailSize:J
    invoke-static {v8, v9, v10}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1502(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    .line 479
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendExternalApproximateUpdate()V
    invoke-static {v8}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$200(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    .line 480
    return-void
.end method

.method public requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V
    .locals 5
    .parameter "pm"

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->getAppsList()Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, appsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 308
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 309
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method
