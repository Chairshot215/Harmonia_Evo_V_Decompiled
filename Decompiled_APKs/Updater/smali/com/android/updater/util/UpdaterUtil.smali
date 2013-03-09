.class public Lcom/android/updater/util/UpdaterUtil;
.super Ljava/lang/Object;
.source "UpdaterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/util/UpdaterUtil$DownloadInfo;,
        Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    }
.end annotation


# static fields
.field public static ACTION_CHANGE_SUMMARY:Ljava/lang/String; = null

.field public static ACU_VAR_PROCESSING:Ljava/lang/String; = null

.field public static final ALLOW_CANCEL_COUNT:I = 0x1

.field public static final CHECKIN_STATUS_CANCEL:I = 0x2

.field public static final CHECKIN_STATUS_MANUAL:I = 0x1

.field public static final CHECKIN_STATUS_PERIOD:I = 0x0

.field public static final CHECKIN_STATUS_UNKNOW:I = -0x1

.field private static final DEFAULT_BATTERY_BOUNDARY:I = 0x23

.field public static final DEFAULT_INSTALL_RESERVED_SPACE:J = 0x1900000L

.field public static final DEFAULT_LARGE_INSTALL_RESERVED_SPACE:J = 0x3200000L

.field public static final DOWNLOAD_STATUS_DOWNLOADING:I = 0x1

.field public static final DOWNLOAD_STATUS_FAILED:I = 0x2

.field public static final DOWNLOAD_STATUS_NONE:I = 0x0

.field public static final DOWNLOAD_STATUS_SUCCESSED:I = 0x3

.field public static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = null

.field private static final INDIVIDUAL_INFO:Ljava/lang/String; = "individual_info"

.field private static final INDIVIDUAL_PACKAGE_NAME:Ljava/lang/String; = "indiPackageName"

.field private static final LOG:Z = false

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final SHOW_ACU_DOWNLOAD_DIALOG:Ljava/lang/String; = "showAcuDownloadDialog"

.field public static final STORAGE_STATUS_NO_SPACE:I = 0x2

.field public static final STORAGE_STATUS_READY:I = 0x0

.field public static final STORAGE_STATUS_READ_ONLY:I = 0x4

.field public static final STORAGE_STATUS_SHARED:I = 0x3

.field public static final STORAGE_STATUS_UNMOUNT:I = 0x1

.field public static final STRING_IS_OPTIONAL:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterUtil"

.field private static final TEST_END_STRING:Ljava/lang/String; = "test-keys"

.field private static final THRESHOLD_STORAGE_SPACE:J = 0x3e800000L

.field private static final TRIGGER_FROM_INDIVIDUAL:Ljava/lang/String; = "fromIndividual"

.field public static final VAR_INDI_APPUPDATE:Ljava/lang/String; = "individual_appupdate"

.field public static final VAR_IS_OPTIONAL:Ljava/lang/String; = "optional"

.field public static final VAR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final VAR_SHOW_DOWNLOAD:Ljava/lang/String; = "show_download_dialog"

.field public static final VAR_UPDATE_TYPE:Ljava/lang/String; = "update_type"

.field private static mCheckinCanceled:Z

.field private static mCheckinLock:Ljava/lang/Object;

.field private static mCheckinStarted:Z

.field private static mFotaBackupStarted:Z

.field private static mIndividualPackageName:Ljava/lang/String;

.field private static mIsTriggerFromIndividual:Z

.field private static mNeedShowACUDownloadDialog:Z

.field private static final sPackageNamePattern:Ljava/util/regex/Pattern;

.field private static final sPromptSizePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 66
    const-string v0, "[^0-9\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->sPromptSizePattern:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "/([^/]+)\\.zip$"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->sPackageNamePattern:Ljava/util/regex/Pattern;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "entity"

    aput-object v2, v0, v1

    const-string v1, "status"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "visibility"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 73
    sput-boolean v3, Lcom/android/updater/util/UpdaterUtil;->mCheckinStarted:Z

    .line 74
    sput-boolean v3, Lcom/android/updater/util/UpdaterUtil;->mCheckinCanceled:Z

    .line 75
    sput-boolean v3, Lcom/android/updater/util/UpdaterUtil;->mFotaBackupStarted:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinLock:Ljava/lang/Object;

    .line 80
    const-string v0, "com.android.updater.ACU_CHANGE_SUMMARY"

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    .line 81
    const-string v0, "isUpdaterProcessing"

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->ACU_VAR_PROCESSING:Ljava/lang/String;

    .line 92
    sput-boolean v3, Lcom/android/updater/util/UpdaterUtil;->mIsTriggerFromIndividual:Z

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/android/updater/util/UpdaterUtil;->mIndividualPackageName:Ljava/lang/String;

    .line 94
    sput-boolean v3, Lcom/android/updater/util/UpdaterUtil;->mNeedShowACUDownloadDialog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static byteToMBString(I)Ljava/lang/String;
    .locals 12
    .parameter "nBytes"

    .prologue
    const-wide/high16 v8, 0x4090

    const-wide/high16 v10, 0x4024

    .line 478
    if-gez p0, :cond_0

    .line 479
    const-wide/16 v3, 0x0

    .line 483
    .local v3, sizeKb:D
    :goto_0
    double-to-int v6, v3

    div-int/lit16 v0, v6, 0x3e8

    .line 484
    .local v0, n1:I
    div-double v6, v3, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    rem-int/lit8 v6, v6, 0x64

    div-int/lit8 v1, v6, 0xa

    .line 485
    .local v1, n2:I
    div-double v6, v3, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    rem-int/lit8 v2, v6, 0xa

    .line 486
    .local v2, n3:I
    if-lez v2, :cond_1

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, strMbSize:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 481
    .end local v0           #n1:I
    .end local v1           #n2:I
    .end local v2           #n3:I
    .end local v3           #sizeKb:D
    .end local v5           #strMbSize:Ljava/lang/String;
    :cond_0
    int-to-double v6, p0

    div-double/2addr v6, v8

    div-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L

    mul-double v3, v6, v8

    .restart local v3       #sizeKb:D
    goto :goto_0

    .line 489
    .restart local v0       #n1:I
    .restart local v1       #n2:I
    .restart local v2       #n3:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #strMbSize:Ljava/lang/String;
    goto :goto_1
.end method

.method public static cancelCheckin()V
    .locals 2

    .prologue
    .line 128
    sget-object v1, Lcom/android/updater/util/UpdaterUtil;->mCheckinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinStarted:Z

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinCanceled:Z

    .line 132
    :cond_0
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static checkStorageStatus(JI)I
    .locals 18
    .parameter "downloadSize"
    .parameter "reservedBlock"

    .prologue
    .line 259
    const/4 v10, 0x0

    .line 260
    .local v10, status:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 262
    .local v11, storageState:Ljava/lang/String;
    const-string v15, "mounted"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 263
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 264
    .local v8, path:Ljava/io/File;
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 265
    .local v9, stat:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v5, v15

    .line 266
    .local v5, blockSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v1, v15

    .line 267
    .local v1, availableBlocks:J
    mul-long v3, v5, v1

    .line 268
    .local v3, availableSize:J
    move/from16 v0, p2

    int-to-long v15, v0

    mul-long/2addr v15, v5

    add-long p0, p0, v15

    .line 270
    cmp-long v15, v3, p0

    if-gtz v15, :cond_1

    .line 272
    const/4 v10, 0x2

    .line 314
    .end local v1           #availableBlocks:J
    .end local v3           #availableSize:J
    .end local v5           #blockSize:J
    .end local v8           #path:Ljava/io/File;
    .end local v9           #stat:Landroid/os/StatFs;
    :cond_0
    :goto_0
    return v10

    .line 278
    .restart local v1       #availableBlocks:J
    .restart local v3       #availableSize:J
    .restart local v5       #blockSize:J
    .restart local v8       #path:Ljava/io/File;
    .restart local v9       #stat:Landroid/os/StatFs;
    :cond_1
    const/4 v14, 0x0

    .line 279
    .local v14, testSDFile:Ljava/io/File;
    const/4 v12, 0x0

    .line 281
    .local v12, testFile:Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 282
    new-instance v13, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "This_Is_The_Fota_Test_File_And_Removed_Soon.txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .end local v12           #testFile:Ljava/io/File;
    .local v13, testFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v12, v13

    .line 290
    .end local v13           #testFile:Ljava/io/File;
    .restart local v12       #testFile:Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 291
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v7

    .line 294
    .local v7, e:Ljava/lang/Exception;
    const-string v15, "UpdaterAPK | UpdaterUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "checkStorageStatus() error!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 285
    .restart local v7       #e:Ljava/lang/Exception;
    :goto_2
    const-string v15, "UpdaterAPK | UpdaterUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "can\'t create the test sd file!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v10, 0x4

    goto :goto_1

    .line 299
    .end local v1           #availableBlocks:J
    .end local v3           #availableSize:J
    .end local v5           #blockSize:J
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #path:Ljava/io/File;
    .end local v9           #stat:Landroid/os/StatFs;
    .end local v12           #testFile:Ljava/io/File;
    .end local v14           #testSDFile:Ljava/io/File;
    :cond_2
    const-string v15, "shared"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 301
    const/4 v10, 0x3

    goto :goto_0

    .line 304
    :cond_3
    const-string v15, "mounted_ro"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 306
    const/4 v10, 0x4

    goto/16 :goto_0

    .line 311
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 284
    .restart local v1       #availableBlocks:J
    .restart local v3       #availableSize:J
    .restart local v5       #blockSize:J
    .restart local v8       #path:Ljava/io/File;
    .restart local v9       #stat:Landroid/os/StatFs;
    .restart local v13       #testFile:Ljava/io/File;
    .restart local v14       #testSDFile:Ljava/io/File;
    :catch_2
    move-exception v7

    move-object v12, v13

    .end local v13           #testFile:Ljava/io/File;
    .restart local v12       #testFile:Ljava/io/File;
    goto :goto_2
.end method

.method public static finishUpdaterSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FINISH_MAIN_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, finishIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method public static getAvailableInternalStorage()J
    .locals 9

    .prologue
    .line 711
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 712
    .local v6, path:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 713
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 714
    .local v4, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 715
    .local v0, availableBlocks:J
    mul-long v2, v4, v0

    .line 717
    .local v2, availableSize:J
    return-wide v2
.end method

.method public static getBatteryBoundary(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 339
    const/16 v0, 0x23

    .line 340
    .local v0, batteryBoundary:I
    return v0
.end method

.method public static getCheckinStatus()I
    .locals 2

    .prologue
    .line 145
    const/4 v0, -0x1

    .line 146
    .local v0, status:I
    sget-boolean v1, Lcom/android/updater/util/UpdaterUtil;->mCheckinCanceled:Z

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x2

    .line 154
    :goto_0
    return v0

    .line 148
    :cond_0
    sget-boolean v1, Lcom/android/updater/util/UpdaterUtil;->mCheckinStarted:Z

    if-eqz v1, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .locals 13
    .parameter "context"
    .parameter "updateInfo"

    .prologue
    .line 225
    const/4 v8, 0x0

    .line 227
    .local v8, downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-nez p1, :cond_0

    move-object v1, v8

    .line 254
    .end local v8           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    :goto_0
    return-object v8

    .line 230
    .restart local v8       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 232
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v10, p1, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    .line 234
    .local v10, updateUrl:Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/updater/util/UpdaterUtil;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "entity=?"

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 236
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 238
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    .local v2, id:I
    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, name:Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 241
    .local v3, status:I
    const/4 v11, 0x3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, path:Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 243
    .local v6, visibility:I
    new-instance v1, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    invoke-direct/range {v1 .. v6}, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;-><init>(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .local v1, downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    move-object v8, v1

    .line 245
    .end local v1           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v8       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    goto :goto_1

    .line 249
    .end local v2           #id:I
    .end local v3           #status:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #visibility:I
    :cond_1
    if-eqz v7, :cond_4

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v7, 0x0

    move-object v1, v8

    .end local v8           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v1       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    :cond_2
    :goto_2
    move-object v8, v1

    .line 254
    .end local v1           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v8       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    goto :goto_0

    .line 246
    :catch_0
    move-exception v9

    move-object v1, v8

    .line 247
    .end local v8           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v1       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v11, "UpdaterAPK | UpdaterUtil"

    const-string v12, "Error when query download provider. error: "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    if-eqz v7, :cond_2

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v7, 0x0

    goto :goto_2

    .line 249
    .end local v1           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    :catchall_0
    move-exception v11

    move-object v1, v8

    .end local v8           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v1       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    :goto_3
    if-eqz v7, :cond_3

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v7, 0x0

    :cond_3
    throw v11

    .line 249
    .restart local v9       #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    goto :goto_3

    .end local v1           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    :cond_4
    move-object v1, v8

    .end local v8           #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v1       #downloadInfo:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    goto :goto_2
.end method

.method public static getIndividualPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 730
    const-string v1, "individual_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 732
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "indiPackageName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNegativeButtonText(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "it"
    .parameter "isFOTA"

    .prologue
    .line 655
    const/4 v1, 0x0

    .line 658
    .local v1, isOptional:Z
    if-eqz p2, :cond_1

    .line 659
    const-string v3, "optional"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 660
    const-string v3, "optional"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 669
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 671
    const v3, 0x7f060025

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 676
    .local v2, returnText:Ljava/lang/CharSequence;
    :goto_1
    return-object v2

    .line 664
    .end local v2           #returnText:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 665
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/updater/db/FOTADetail;->isOptional(Landroid/content/ContentResolver;)Z

    move-result v1

    goto :goto_0

    .line 673
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    const v3, 0x7f060087

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #returnText:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public static getPercentageText(JJ)Ljava/lang/String;
    .locals 5
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 538
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gtz v3, :cond_0

    .line 539
    const-string v3, ""

    .line 545
    :goto_0
    return-object v3

    .line 541
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p2

    div-long v0, v3, p0

    .line 542
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 544
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getProvisioningInterval(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, -0x1

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "checkin_interval"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$HTCservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 699
    .local v0, checkinInterval:J
    cmp-long v3, v0, v5

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x7080

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 700
    :cond_0
    const-wide/16 v0, 0x7080

    .line 703
    :cond_1
    const-wide/16 v3, 0xe10

    div-long v3, v0, v3

    long-to-int v2, v3

    .line 704
    .local v2, checkinIntervalHour:I
    return v2
.end method

.method public static getShowDownloadDialogFlag(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 748
    const-string v2, "individual_info"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 750
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "fromIndividual"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "showAcuDownloadDialog"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getSizeFromPrompt(Ljava/lang/String;)F
    .locals 3
    .parameter "promptSize"

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, updateSize:F
    if-eqz p0, :cond_1

    .line 380
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, scanner:Ljava/util/Scanner;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 382
    sget-object v2, Lcom/android/updater/util/UpdaterUtil;->sPromptSizePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextFloat()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/util/Scanner;->nextFloat()F

    move-result v1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    goto :goto_0

    .line 393
    .end local v0           #scanner:Ljava/util/Scanner;
    :cond_1
    return v1
.end method

.method public static getStorageBoundary(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 350
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->isLargeStorageSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "UpdaterAPK | UpdaterUtil"

    const-string v1, "getStorageBoundary=52428800"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-wide/32 v0, 0x3200000

    .line 355
    :goto_0
    return-wide v0

    .line 354
    :cond_0
    const-string v0, "UpdaterAPK | UpdaterUtil"

    const-string v1, "getStorageBoundary=26214400"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-wide/32 v0, 0x1900000

    goto :goto_0
.end method

.method public static getTriggerFromIndividualFlag(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 736
    const-string v1, "individual_info"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 738
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "fromIndividual"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    .locals 20
    .parameter "context"

    .prologue
    .line 172
    const/16 v16, 0x0

    .line 174
    .local v16, update:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 175
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/htcCheckin$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 177
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const-string v3, "link"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 179
    .local v13, linkValue:I
    const-string v3, "version"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 180
    .local v19, versionValue:I
    const-string v3, "feature"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 181
    .local v11, featureValue:I
    const-string v3, "size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 182
    .local v15, sizeValue:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, link:Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 184
    .local v18, version:Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, feature:Ljava/lang/String;
    const/4 v14, 0x0

    .line 186
    .local v14, size:Ljava/lang/String;
    if-ltz v15, :cond_0

    .line 187
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 191
    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 192
    new-instance v17, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1, v10, v14}, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16           #update:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    .local v17, update:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    move-object/from16 v16, v17

    .line 200
    .end local v10           #feature:Ljava/lang/String;
    .end local v11           #featureValue:I
    .end local v12           #link:Ljava/lang/String;
    .end local v13           #linkValue:I
    .end local v14           #size:Ljava/lang/String;
    .end local v15           #sizeValue:I
    .end local v17           #update:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    .end local v18           #version:Ljava/lang/String;
    .end local v19           #versionValue:I
    .restart local v16       #update:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :cond_1
    if-eqz v8, :cond_2

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v8, 0x0

    .line 205
    :cond_2
    :goto_0
    return-object v16

    .line 197
    :catch_0
    move-exception v9

    .line 198
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "UpdaterAPK | UpdaterUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUpdateInfo() Exception to get messages from local database. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v8, :cond_2

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v8, 0x0

    goto :goto_0

    .line 200
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_3

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v8, 0x0

    :cond_3
    throw v3
.end method

.method public static getWeight(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)F
    .locals 7
    .parameter "dm"
    .parameter "conf"

    .prologue
    const/16 v2, 0xf0

    const/4 v6, 0x1

    const/16 v5, 0x320

    const/16 v4, 0x1e0

    const/16 v3, 0x140

    .line 568
    const v0, 0x3f333333

    .line 570
    .local v0, weight:F
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v3, :cond_2

    .line 572
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_6

    .line 573
    const v0, 0x3f028f5c

    .line 578
    :cond_2
    :goto_0
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v5, :cond_4

    :cond_3
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v5, :cond_7

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_7

    .line 580
    :cond_4
    const v0, 0x3f81eb85

    .line 600
    :cond_5
    :goto_1
    return v0

    .line 575
    :cond_6
    const v0, 0x3f70a3d7

    goto :goto_0

    .line 584
    :cond_7
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_8

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v3, :cond_9

    :cond_8
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v3, :cond_b

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v4, :cond_b

    .line 586
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_a

    .line 587
    const v0, 0x3f170a3d

    goto :goto_1

    .line 589
    :cond_a
    const v0, 0x3f051eb8

    goto :goto_1

    .line 593
    :cond_b
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v5, :cond_c

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v4, :cond_d

    :cond_c
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v5, :cond_5

    .line 595
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_e

    .line 596
    const v0, 0x3f0a3d71

    goto :goto_1

    .line 598
    :cond_e
    const v0, 0x3f066666

    goto :goto_1
.end method

.method public static hideDownloadTask(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 318
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v2

    .line 319
    .local v2, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "visibility"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "entity=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v2, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.updater.FOTA_CANCEL_CONFIRM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, cancelConfirmIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    .end local v0           #cancelConfirmIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | UpdaterUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideDownloadTask exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isBiggerThenThirty(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 758
    const/4 v2, 0x0

    .line 759
    .local v2, isBig:Z
    const/4 v4, 0x0

    .line 761
    .local v4, promptSize:F
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isPydSFRProject()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v2

    .line 777
    .end local v2           #isBig:Z
    .local v3, isBig:I
    :goto_0
    return v3

    .line 766
    .end local v3           #isBig:I
    .restart local v2       #isBig:Z
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 767
    .local v0, cr:Landroid/content/ContentResolver;
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 774
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_1
    const/high16 v5, 0x41f0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 775
    const/4 v2, 0x1

    :cond_1
    move v3, v2

    .line 777
    .restart local v3       #isBig:I
    goto :goto_0

    .line 768
    .end local v3           #isBig:I
    :catch_0
    move-exception v1

    .line 769
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isEndWithTestKey()Z
    .locals 4

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, isTestKey:Z
    const-string v2, "ro.build.description"

    const-string v3, "unknow"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, buildNumber:Ljava/lang/String;
    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    const/4 v1, 0x1

    .line 647
    :cond_0
    return v1
.end method

.method public static isForceUpdateIntent(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, forceUpdate:Z
    const-string v3, "force_update"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, forceUpdateString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 511
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 516
    :cond_0
    :goto_0
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force_update format exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isFotaBackupStarted()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mFotaBackupStarted:Z

    return v0
.end method

.method public static isInPhoneCall(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 397
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 398
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLargeStorageSize()Z
    .locals 10

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 362
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 364
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v4, v8

    .line 365
    .local v4, totalBlocks:J
    mul-long v6, v4, v0

    .line 367
    .local v6, totalSize:J
    const-wide/32 v8, 0x3e800000

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    .line 368
    const/4 v8, 0x0

    .line 370
    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static isNeedToProcess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "fileUrl"

    .prologue
    .line 682
    const/4 v1, 0x1

    .line 684
    .local v1, isNeedToProcess:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 685
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Lcom/android/updater/db/FOTABlackList;->getFileCancelCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 686
    const/4 v1, 0x0

    .line 688
    :cond_0
    return v1
.end method

.method public static loadCustomizeData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .parameter "context"
    .parameter "moduleName"

    .prologue
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://customization_settings/SettingTable/application_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 403
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 404
    .local v8, customizationBundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 405
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 410
    if-eqz v7, :cond_0

    .line 411
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 413
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 414
    .local v6, columnIndex:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 417
    .local v10, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 418
    .local v12, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v12, v10, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 419
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 420
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .local v9, customizationBundle:Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 427
    .end local v6           #columnIndex:I
    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .end local v10           #data:[B
    .end local v12           #parcel:Landroid/os/Parcel;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_1
    const/4 v7, 0x0

    .line 433
    :goto_0
    return-object v8

    .line 424
    :catch_0
    move-exception v11

    .line 425
    .local v11, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v2, "UpdaterAPK | UpdaterUtil"

    const-string v3, "loadCustomizeData fail"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    if-eqz v7, :cond_2

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_2
    const/4 v7, 0x0

    .line 431
    goto :goto_0

    .line 427
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v7, :cond_3

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_3
    const/4 v7, 0x0

    throw v2

    .line 427
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v6       #columnIndex:I
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    .restart local v10       #data:[B
    .restart local v12       #parcel:Landroid/os/Parcel;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_2

    .line 424
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static prepareDownloadExtras(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 521
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 522
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "name"

    const-string v3, "android.server.HTCcheckin.CHECKIN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v2, "backup_action_string"

    const-string v3, "android.server.checkin.FOTA_UPDATE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "backup_uri_string"

    const/16 v3, 0xd

    invoke-static {v1, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v2, "download_sdcard"

    const/16 v3, 0xb

    invoke-static {v1, v3, v4}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    const-string v2, "promptVersion"

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v2, "promptFeature"

    const/16 v3, 0x9

    invoke-static {v1, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "promptSize"

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "force_update"

    const/16 v3, 0xc

    invoke-static {v1, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "wifiOnly"

    const/4 v3, 0x5

    invoke-static {v1, v3, v4}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    const-string v2, "optional"

    const/16 v3, 0x14

    invoke-static {v1, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-object v0
.end method

.method public static removeUpdatePackage(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 14
    .parameter "context"
    .parameter "path"
    .parameter "forceRemove"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    sget-object v11, Lcom/android/updater/util/UpdaterUtil;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 472
    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v10

    .line 444
    .local v10, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    if-eqz v10, :cond_0

    .line 446
    invoke-static {p0, v10}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v1

    .line 447
    .local v1, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    iget v11, v1, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, v1, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 453
    :cond_2
    sget-object v11, Lcom/android/updater/util/UpdaterUtil;->sPackageNamePattern:Ljava/util/regex/Pattern;

    iget-object v12, v10, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 454
    .local v7, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 455
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, packageName:Ljava/lang/String;
    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 458
    .local v2, downloadFolder:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, fileList:[Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v9, :cond_0

    .line 461
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v0, v5

    .line 462
    .local v4, fileName:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 463
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    .local v8, packageFile:Ljava/io/File;
    const-string v11, "UpdaterAPK | UpdaterUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 461
    .end local v8           #packageFile:Ljava/io/File;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static setAppUpdateStatus(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "status"

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 610
    .local v1, cr:Landroid/content/ContentResolver;
    const/16 v2, 0x11

    invoke-static {v1, v2, p1}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 612
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/updater/util/UpdaterUtil;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, changeIntent:Landroid/content/Intent;
    sget-object v2, Lcom/android/updater/util/UpdaterUtil;->ACU_VAR_PROCESSING:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 617
    return-void
.end method

.method public static setFOTAStatus(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isProcessing"

    .prologue
    .line 622
    move v2, p1

    .line 623
    .local v2, isUpdaterProcessing:Z
    if-nez p1, :cond_0

    .line 624
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v3

    .line 625
    .local v3, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    if-eqz v3, :cond_0

    .line 626
    invoke-static {p0, v3}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v1

    .line 627
    .local v1, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 628
    iget v4, v1, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 629
    const/4 v2, 0x1

    .line 634
    .end local v1           #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v3           #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/android/updater/util/UpdaterUtil;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, changeIntent:Landroid/content/Intent;
    sget-object v4, Lcom/android/updater/util/UpdaterUtil;->ACU_VAR_PROCESSING:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 638
    return-void
.end method

.method public static setFotaBackupStarted(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 111
    sput-boolean p0, Lcom/android/updater/util/UpdaterUtil;->mFotaBackupStarted:Z

    .line 112
    return-void
.end method

.method public static setShowDownloadDialogFlag(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "needShowDownload"

    .prologue
    .line 742
    const-string v1, "individual_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 743
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showAcuDownloadDialog"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 745
    return-void
.end method

.method public static setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "fromIndividual"
    .parameter "indiPackageName"

    .prologue
    .line 723
    const-string v1, "individual_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 724
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fromIndividual"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "indiPackageName"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 727
    return-void
.end method

.method public static startCheckin()V
    .locals 2

    .prologue
    .line 120
    sget-object v1, Lcom/android/updater/util/UpdaterUtil;->mCheckinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinStarted:Z

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinCanceled:Z

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopCheckin()V
    .locals 2

    .prologue
    .line 137
    sget-object v1, Lcom/android/updater/util/UpdaterUtil;->mCheckinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    sget-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinStarted:Z

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinCanceled:Z

    sput-boolean v0, Lcom/android/updater/util/UpdaterUtil;->mCheckinStarted:Z

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static verifyExistFOTAPackage(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;Lcom/android/updater/util/UpdaterUtil$DownloadInfo;Z)V
    .locals 4
    .parameter "context"
    .parameter "ui"
    .parameter "di"
    .parameter "isCacheFile"

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.FOTA_UPDATE"

    iget-object v3, p1, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .local v1, verifyIntent:Landroid/content/Intent;
    const-string v2, "name"

    const-string v3, "android.server.HTCcheckin.CHECKIN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v2, "promptVersion"

    iget-object v3, p1, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v2, "promptFeature"

    iget-object v3, p1, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v2, "promptSize"

    iget-object v3, p1, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "message"

    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 558
    const-string v2, "force_update"

    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    if-nez p3, :cond_0

    .line 560
    const-string v2, "checkFile"

    iget-object v3, p2, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 565
    return-void
.end method
