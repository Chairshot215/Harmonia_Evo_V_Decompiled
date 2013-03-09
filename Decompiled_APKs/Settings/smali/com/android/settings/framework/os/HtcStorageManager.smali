.class public Lcom/android/settings/framework/os/HtcStorageManager;
.super Ljava/lang/Object;
.source "HtcStorageManager.java"


# static fields
.field private static final HAS_REMOVABLE_STORAGE_SLOT:Z

.field private static final TAG:Ljava/lang/String;

.field private static mIMountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/os/HtcStorageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/os/HtcStorageManager;->HAS_REMOVABLE_STORAGE_SLOT:Z

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1316
    sget-object v0, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public static doFactoryDataReset(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1236
    const-string v4, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1247
    .local v0, eraseInternalSdCard:Z
    if-eqz v0, :cond_0

    .line 1249
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    .line 1255
    :cond_0
    const-string v4, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1258
    .local v1, eraseSdCard:Z
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, sdCardStatus:Ljava/lang/String;
    const-string v4, "removed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "bad_removal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1271
    :cond_1
    const/4 v1, 0x0

    .line 1281
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 1289
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    .line 1293
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v3, service:Landroid/content/Intent;
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1295
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1313
    :goto_1
    return-void

    .line 1272
    .end local v3           #service:Landroid/content/Intent;
    :cond_3
    const-string v4, "shared"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1274
    const/4 v1, 0x0

    goto :goto_0

    .line 1303
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    .restart local v3       #service:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static formatInternalAndExternalSdCardVolume(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1215
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    .line 1216
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    .line 1217
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    .line 1218
    return-void
.end method

.method public static formatInternalSdCardVolume(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1159
    const-wide/16 v3, 0x0

    .local v3, startTime:J
    const-wide/16 v0, 0x0

    .line 1160
    .local v0, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, sdState:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountInternalSdCardVolume(Landroid/content/Context;)Z

    .line 1187
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/framework/os/HtcStorageManager;->formatVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 1191
    const-string v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1196
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountSdCardVolume(Landroid/content/Context;)V

    .line 1204
    :cond_1
    return-void
.end method

.method public static formatSdCardVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1149
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 1150
    return-void
.end method

.method public static formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "size"

    .prologue
    .line 239
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatVolume(Landroid/content/Context;Ljava/io/File;)V
    .locals 8
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 1116
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v1, 0x0

    .line 1125
    .local v1, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 1127
    .local v3, service:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_0

    .line 1129
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to format the volume"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInternalSdCardStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 707
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalSdCardStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportEmmcStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalSdCardStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportEmmcStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalSdCardStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 614
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 696
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageAvailableSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 697
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    const-string v0, "mounted"

    return-object v0
.end method

.method public static getInternalStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 604
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageTotalSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 605
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 4

    .prologue
    .line 69
    const-class v2, Lcom/android/settings/framework/os/HtcStorageManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 72
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 76
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;

    .line 81
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 78
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get the mount service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getRawInternalStorageAvailableSpace(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 663
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 664
    .local v1, driveC:Ljava/io/File;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 665
    .local v2, driveD:Ljava/io/File;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 670
    .local v0, disks:[Ljava/io/File;
    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getRawInternalStorageTotalSpace(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 578
    const-string v0, "/sys/block/mmcblk0/size"

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->readRawStorageSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRawStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)J
    .locals 14
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 479
    const-wide/16 v0, 0x0

    .line 485
    .local v0, allSpace:J
    array-length v11, p1

    add-int/lit8 v9, v11, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_0

    .line 487
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    aget-object v11, p1, v9

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .local v10, stat:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v6, v11

    .line 504
    .local v6, blockSize:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v2, v11

    .line 505
    .local v2, availableBlocks:J
    mul-long v4, v6, v2

    .line 506
    .local v4, availableSpace:J
    add-long/2addr v0, v4

    .line 485
    .end local v2           #availableBlocks:J
    .end local v4           #availableSpace:J
    .end local v6           #blockSize:J
    .end local v10           #stat:Landroid/os/StatFs;
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 488
    :catch_0
    move-exception v8

    .line 496
    .local v8, e:Ljava/lang/IllegalArgumentException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mountPoints["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 519
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    return-wide v0
.end method

.method public static getRawStorageTotalSpace(Landroid/content/Context;[Ljava/io/File;)J
    .locals 14
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    .line 312
    .local v0, allSpace:J
    array-length v11, p1

    add-int/lit8 v5, v11, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_0

    .line 314
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    aget-object v11, p1, v5

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 331
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v7, v11

    .line 332
    .local v7, totalBlocks:J
    mul-long v9, v2, v7

    .line 333
    .local v9, totalSpace:J
    add-long/2addr v0, v9

    .line 312
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    .end local v9           #totalSpace:J
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v4

    .line 323
    .local v4, e:Ljava/lang/IllegalArgumentException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mountPoints["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 346
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    return-wide v0
.end method

.method public static getSdCardStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 636
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdCardStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 785
    sget-boolean v0, Lcom/android/settings/framework/os/HtcStorageManager;->HAS_REMOVABLE_STORAGE_SLOT:Z

    if-eqz v0, :cond_0

    .line 786
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdCardStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    sget-boolean v0, Lcom/android/settings/framework/os/HtcStorageManager;->HAS_REMOVABLE_STORAGE_SLOT:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdCardStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 549
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 431
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 449
    .local v4, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 450
    .local v0, availableBlocks:J
    mul-long v2, v4, v0

    .line 460
    .local v2, availableSpace:J
    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v7           #stat:Landroid/os/StatFs;
    :goto_0
    return-object v8

    .line 432
    :catch_0
    move-exception v6

    .line 440
    .local v6, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mountPoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const v8, 0x7f0c061c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 534
    invoke-static {p0, p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)J

    move-result-wide v0

    .line 536
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 259
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 277
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v4, v8

    .line 278
    .local v4, totalBlocks:J
    mul-long v6, v0, v4

    .line 288
    .local v6, totalSpace:J
    invoke-static {p0, v6, v7}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .end local v0           #blockSize:J
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #totalBlocks:J
    .end local v6           #totalSpace:J
    :goto_0
    return-object v8

    .line 260
    :catch_0
    move-exception v2

    .line 268
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mountPoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const v8, 0x7f0c061c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getStorageTotalSpace(Landroid/content/Context;[Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 361
    invoke-static {p0, p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawStorageTotalSpace(Landroid/content/Context;[Ljava/io/File;)J

    move-result-wide v0

    .line 362
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStorageUsedSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 381
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 399
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v6, v10

    .line 400
    .local v6, totalBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 401
    .local v0, availableBlocks:J
    sub-long v10, v6, v0

    mul-long v8, v2, v10

    .line 412
    .local v8, usedSpace:J
    invoke-static {p0, v8, v9}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v6           #totalBlocks:J
    .end local v8           #usedSpace:J
    :goto_0
    return-object v10

    .line 382
    :catch_0
    move-exception v4

    .line 390
    .local v4, e:Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mountPoint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    const v10, 0x7f0c061c

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static getUsbStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 716
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getVirtualUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 623
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasAppAccessingStorage(Landroid/content/Context;Ljava/io/File;)Z
    .locals 8
    .parameter "context"
    .parameter "mountPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 93
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 94
    :cond_0
    sget-object v4, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasAppAccessingStorage("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v4, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "\t The arguments context or mountPoint can not be null."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 150
    :cond_1
    :goto_0
    return v4

    .line 100
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 105
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v3

    .line 106
    .local v3, users:[I
    if-eqz v3, :cond_3

    array-length v6, v3

    if-gtz v6, :cond_1

    .line 125
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 129
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 134
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    move v4, v5

    .line 150
    goto :goto_0
.end method

.method public static mountInternalSdCardVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 883
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 884
    return-void
.end method

.method public static mountSdCardVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 873
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 874
    return-void
.end method

.method public static mountUsbVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 893
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 894
    return-void
.end method

.method public static mountVolume(Landroid/content/Context;Ljava/io/File;)V
    .locals 8
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 841
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v1, 0x0

    .line 850
    .local v1, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 852
    .local v3, service:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_0

    .line 854
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to mount volume"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static readRawStorageSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 12
    .parameter "context"
    .parameter "infoPath"

    .prologue
    .line 167
    const-wide/16 v0, 0x200

    .line 168
    .local v0, SECTOR_SIZE:J
    invoke-static {p1}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    .local v2, content:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 174
    :cond_0
    const-string v4, "0"

    .line 199
    .local v4, sizeInString:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 200
    .local v6, totalSectors:J
    const-wide/16 v10, 0x200

    mul-long v8, v6, v10

    .line 209
    .local v8, totalSpace:J
    return-wide v8

    .line 180
    .end local v4           #sizeInString:Ljava/lang/String;
    .end local v6           #totalSectors:J
    .end local v8           #totalSpace:J
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 181
    .restart local v4       #sizeInString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 184
    .local v3, length:I
    const/4 v5, 0x0

    .local v5, splitAt:I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 188
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 192
    const-string v4, "0"

    goto :goto_0

    .line 184
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static readStorageSize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "infoPath"

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcom/android/settings/framework/os/HtcStorageManager;->readRawStorageSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 227
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static unmountInternalSdCardVolume(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x64

    .line 1013
    const-wide/16 v8, 0x0

    .local v8, startTime:J
    const-wide/16 v4, 0x0

    .line 1014
    .local v4, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v7

    .line 1016
    .local v7, mountService:Landroid/os/storage/IMountService;
    const/4 v10, 0x0

    .line 1025
    .local v10, successful:Z
    if-eqz v7, :cond_0

    .line 1026
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1035
    .local v6, mountPoint:Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v7, v6, v11, v12}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    const/4 v10, 0x1

    .line 1042
    .end local v6           #mountPoint:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 1046
    const/16 v1, 0x64

    .line 1049
    .local v1, TIME_INTERVAL:I
    const/16 v0, 0x64

    .line 1051
    .local v0, SCANNING_TIMES:I
    new-instance v2, Lcom/android/settings/framework/os/HtcStorageManager$2;

    invoke-direct {v2}, Lcom/android/settings/framework/os/HtcStorageManager$2;-><init>()V

    .line 1084
    .local v2, cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    invoke-virtual {v2, v13}, Lcom/android/settings/framework/os/HtcConditionScanner;->setTimeInterval(I)V

    .line 1085
    invoke-virtual {v2, v13}, Lcom/android/settings/framework/os/HtcConditionScanner;->setScanningTimes(I)V

    .line 1086
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->start()V

    .line 1087
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->getResult()Z

    move-result v10

    .line 1090
    .end local v0           #SCANNING_TIMES:I
    .end local v1           #TIME_INTERVAL:I
    .end local v2           #cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    :cond_1
    if-nez v10, :cond_2

    .line 1091
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to unmount the internal SD card volume"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_2
    return v10

    .line 1037
    .restart local v6       #mountPoint:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1038
    .local v3, e:Landroid/os/RemoteException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unmountSdCardVolume(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x64

    .line 911
    const-wide/16 v8, 0x0

    .local v8, startTime:J
    const-wide/16 v4, 0x0

    .line 912
    .local v4, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v7

    .line 914
    .local v7, mountService:Landroid/os/storage/IMountService;
    const/4 v10, 0x0

    .line 923
    .local v10, successful:Z
    if-eqz v7, :cond_0

    .line 924
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, mountPoint:Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v7, v6, v11, v12}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    const/4 v10, 0x1

    .line 940
    .end local v6           #mountPoint:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 944
    const/16 v1, 0x64

    .line 947
    .local v1, TIME_INTERVAL:I
    const/16 v0, 0x64

    .line 949
    .local v0, SCANNING_TIMES:I
    new-instance v2, Lcom/android/settings/framework/os/HtcStorageManager$1;

    invoke-direct {v2}, Lcom/android/settings/framework/os/HtcStorageManager$1;-><init>()V

    .line 984
    .local v2, cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    invoke-virtual {v2, v13}, Lcom/android/settings/framework/os/HtcConditionScanner;->setTimeInterval(I)V

    .line 985
    invoke-virtual {v2, v13}, Lcom/android/settings/framework/os/HtcConditionScanner;->setScanningTimes(I)V

    .line 986
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->start()V

    .line 987
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->getResult()Z

    move-result v10

    .line 990
    .end local v0           #SCANNING_TIMES:I
    .end local v1           #TIME_INTERVAL:I
    .end local v2           #cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    :cond_1
    if-nez v10, :cond_2

    .line 991
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to unmount the SD card volume"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_2
    return v10

    .line 935
    .restart local v6       #mountPoint:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 936
    .local v3, e:Landroid/os/RemoteException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
