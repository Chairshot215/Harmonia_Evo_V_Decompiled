.class public Lcom/android/providers/drm/DrmIntentService;
.super Landroid/app/IntentService;
.source "DrmIntentService.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field public static final BULK_AUDIO_URI:Landroid/net/Uri; = null

.field public static final BULK_IMAGES_URI:Landroid/net/Uri; = null

.field public static final BULK_JAR_URI:Landroid/net/Uri; = null

.field public static final BULK_VIDEO_URI:Landroid/net/Uri; = null

.field public static final DRM_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "DRM_BOOT_COMPLETED"

.field public static final DRM_ACTION_CHECK_MID:Ljava/lang/String; = "CHECK_MID"

.field public static final DRM_ACTION_SCAN_STORAGE:Ljava/lang/String; = "SCAN_STORAGE"

.field public static final DRM_ACTION_SYNC_AFTER_BOOT:Ljava/lang/String; = "SYNC_AFTER_BOOT"

.field public static final DRM_ACTION_SYNC_CLOCK:Ljava/lang/String; = "SYNC_CLOCK"

.field public static final DRM_ACTION_SYNC_DEVICEID:Ljava/lang/String; = "SYNC_DEVICEID"

.field public static final DRM_ACTION_TIME_THREAD:Ljava/lang/String; = "TIME_THREAD"

.field public static final DRM_ACTION_WAP_PUSH:Ljava/lang/String; = "INSTALL_WAP_PUSH_RIGHTS"

.field public static final DRM_EXTRA_CLOCK:Ljava/lang/String; = "EXTRA_CLOCK"

.field public static final DRM_FILE_FILTER_DCF_EXTENSION:Ljava/lang/String; = ".dcf"

.field public static final DRM_FILE_FILTER_DM_EXTENSION:Ljava/lang/String; = ".dm"

.field public static final DRM_WAIT_TIME:I = 0x12c

.field private static final LOGD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DrmIntentService"

.field private static final SCAN_PROJECTION:[Ljava/lang/String;

.field private static mSync:Ljava/lang/Integer;


# instance fields
.field private mTimeThread:Lcom/android/providers/drm/TimeThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "_data"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "existence"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/DrmIntentService;->SCAN_PROJECTION:[Ljava/lang/String;

    .line 57
    const-string v0, "content://drm/bulk_update_images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/drm/DrmIntentService;->BULK_IMAGES_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "content://drm/bulk_update_audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/drm/DrmIntentService;->BULK_AUDIO_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://drm/bulk_update_video"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/drm/DrmIntentService;->BULK_VIDEO_URI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://drm/bulk_update_jar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/drm/DrmIntentService;->BULK_JAR_URI:Landroid/net/Uri;

    .line 96
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/providers/drm/DrmIntentService;->mSync:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "DrmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/drm/DrmIntentService;->mTimeThread:Lcom/android/providers/drm/TimeThread;

    .line 104
    return-void
.end method

.method private actionInternetSetTime(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1224
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 1230
    .local v1, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v2, v5

    .line 1231
    .local v2, tzOffset:J
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1237
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1243
    const-string v5, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    const-string v5, "timezone_stamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    const-string v5, "network_sync"

    const-string v6, "TRUE"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v5, "time_differential"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1254
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/drm/DrmIntentService;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1256
    .local v0, sycnDrmClockIntent:Landroid/content/Intent;
    const-string v5, "SYNC_CLOCK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    const-string v5, "EXTRA_CLOCK"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1260
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1266
    return-void
.end method

.method private changeFolderGroup(Ljava/io/File;)V
    .locals 5
    .parameter "folder"

    .prologue
    const/4 v4, 0x2

    .line 542
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "chown"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "-1.oma_drm_group"

    aput-object v3, v0, v2

    const-string v2, ""

    aput-object v2, v0, v4

    .line 543
    .local v0, CMD_CHOWN:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 545
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 555
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 549
    const-string v2, "DrmIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change folder group error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 552
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 553
    const-string v2, "DrmIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change folder group error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeFolderPermission(Ljava/io/File;)V
    .locals 5
    .parameter "folder"

    .prologue
    const/4 v4, 0x2

    .line 526
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "chmod"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "770"

    aput-object v3, v0, v2

    const-string v2, ""

    aput-object v2, v0, v4

    .line 527
    .local v0, CMD_CHMOD1:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 529
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v1

    .line 532
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 533
    const-string v2, "DrmIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change folder permission error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 536
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 537
    const-string v2, "DrmIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change folder permission error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkNetworkSyncTimeFlagFile()Z
    .locals 5

    .prologue
    .line 819
    const/4 v2, 0x0

    .line 820
    .local v2, result:Z
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.providers.drm/rights/NetworkSyncTimeFlagFile"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 825
    .local v1, flagFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    const/4 v2, 0x1

    .line 850
    :goto_0
    return v2

    .line 837
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DrmIntentService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 847
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createDrmFolders()V
    .locals 4

    .prologue
    .line 508
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.drm/rights/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, drmProviderDirectory:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 514
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/drm/DrmIntentService;->changeFolderPermission(Ljava/io/File;)V

    .line 515
    invoke-direct {p0, v0}, Lcom/android/providers/drm/DrmIntentService;->changeFolderGroup(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteNetworkSyncTimeFlagFile()V
    .locals 4

    .prologue
    .line 801
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.drm/rights/NetworkSyncTimeFlagFile"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 805
    .local v1, flagFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v1           #flagFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findDMFile(Ljava/lang/String;)[Ljava/io/File;
    .locals 2
    .parameter "folderPath"

    .prologue
    .line 909
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, dir:Ljava/io/File;
    new-instance v1, Lcom/android/providers/drm/DrmIntentService$1;

    invoke-direct {v1, p0}, Lcom/android/providers/drm/DrmIntentService$1;-><init>(Lcom/android/providers/drm/DrmIntentService;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private getTimeDifferential(Landroid/content/Context;)J
    .locals 21
    .parameter "context"

    .prologue
    .line 1074
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1075
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v19, 0x0

    .line 1076
    .local v19, time_differential:J
    if-nez v1, :cond_0

    .line 1080
    const-wide/16 v2, 0x0

    .line 1119
    :goto_0
    return-wide v2

    .line 1083
    :cond_0
    const/4 v7, 0x0

    .line 1085
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1086
    if-eqz v7, :cond_1

    .line 1087
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1088
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1089
    const-string v2, "time_stamp"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1090
    .local v18, timeColumnIndex:I
    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1091
    .local v16, rtc:J
    const-string v2, "clock_stamp"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1092
    .local v8, clockColumnIndex:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1093
    .local v14, elapsed:J
    const-string v2, "time_differential"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1094
    .local v11, differentialColumnIndex:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1095
    .local v9, differential:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    add-long/2addr v2, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    sub-long/2addr v4, v14

    sub-long v19, v2, v4

    .line 1105
    .end local v8           #clockColumnIndex:I
    .end local v9           #differential:J
    .end local v11           #differentialColumnIndex:I
    .end local v14           #elapsed:J
    .end local v16           #rtc:J
    .end local v18           #timeColumnIndex:I
    :cond_1
    if-eqz v7, :cond_2

    .line 1107
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move-wide/from16 v2, v19

    .line 1119
    goto :goto_0

    .line 1108
    :catch_0
    move-exception v12

    .line 1110
    .local v12, e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1112
    :catch_1
    move-exception v13

    .line 1113
    .local v13, e2:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (getTimeDifferential)-1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v7, 0x0

    goto :goto_1

    .line 1099
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v12

    .line 1103
    .restart local v12       #e:Ljava/lang/Exception;
    const-wide/16 v19, 0x0

    .line 1105
    if-eqz v7, :cond_2

    .line 1107
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1108
    :catch_3
    move-exception v12

    .line 1110
    const-wide/16 v2, 0x12c

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 1112
    :catch_4
    move-exception v13

    .line 1113
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (getTimeDifferential)-1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v7, 0x0

    goto :goto_1

    .line 1105
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 1107
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1116
    :cond_3
    :goto_2
    throw v2

    .line 1108
    :catch_5
    move-exception v12

    .line 1110
    .restart local v12       #e:Ljava/lang/Exception;
    const-wide/16 v3, 0x12c

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 1112
    :catch_6
    move-exception v13

    .line 1113
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v3, "DrmIntentService"

    const-string v4, " @@@@@  ERROR: close cursor fail!!! (getTimeDifferential)-1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private installWAPPushRights(Landroid/content/ContentResolver;Ljava/lang/String;[B)V
    .locals 24
    .parameter "cr"
    .parameter "rightMimeType"
    .parameter "rightData"

    .prologue
    .line 928
    const-string v2, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 932
    :cond_0
    if-nez p3, :cond_2

    .line 933
    const-string v2, "DrmIntentService"

    const-string v4, " @@@@@ ERROR: The rights data is invalid."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 940
    .local v17, rightDataStream:Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v2

    move-object/from16 v0, p3

    array-length v4, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v4, v1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v18

    .line 945
    .local v18, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual/range {v18 .. v18}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v20

    .line 947
    .local v20, uid:Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 954
    const/4 v9, 0x0

    .line 957
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v3, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "content_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v9

    .line 968
    if-eqz v9, :cond_1

    .line 975
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v2

    if-gtz v2, :cond_3

    .line 981
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 982
    :catch_0
    move-exception v11

    .line 984
    .local v11, e:Ljava/lang/Exception;
    const-wide/16 v22, 0x12c

    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 985
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 986
    :catch_1
    move-exception v12

    .line 987
    .local v12, e2:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "DrmIntentService"

    const-string v4, " @@@@@  ERROR: close cursor fail!!! (WAP_PUSH)-1"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v9, 0x0

    goto :goto_0

    .line 960
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 961
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    const-string v4, " @@@@@ ERROR: query database failed. (ContentResolver)"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v2, "DrmIntentService"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Landroid/drm/mobile1/DrmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 1042
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v20           #uid:Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 1043
    .local v11, e:Landroid/drm/mobile1/DrmException;
    const-string v2, "DrmIntentService"

    const-string v4, "Install drm rights failed."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    .end local v11           #e:Landroid/drm/mobile1/DrmException;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v20       #uid:Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 995
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 996
    .local v10, dataColumnIndext:I
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 997
    .local v13, filepath:Ljava/lang/String;
    const-string v2, "mime_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 998
    .local v16, mimeTypeColumnIndex:I
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 999
    .local v5, mimeType:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1000
    .local v15, idColumnIndex:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1002
    .local v14, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1004
    .local v6, contentUri:Landroid/net/Uri;
    if-eqz v13, :cond_5

    .line 1005
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v3, parseFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 1010
    .local v7, destination:I
    invoke-static {}, Landroid/provider/DrmHelper;->getSupportedStorages()I

    move-result v19

    .line 1012
    .local v19, supportedStorages:I
    and-int/lit8 v2, v19, 0x2

    if-eqz v2, :cond_4

    .line 1013
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1015
    const/4 v7, 0x7

    .line 1019
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "application/vnd.oma.drm.content"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/provider/DrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v21

    .line 1024
    .local v21, values:Landroid/content/ContentValues;
    if-eqz v21, :cond_5

    .line 1025
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/drm/mobile1/DrmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1030
    .end local v3           #parseFile:Ljava/io/File;
    .end local v7           #destination:I
    .end local v19           #supportedStorages:I
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/drm/mobile1/DrmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 1031
    :catch_4
    move-exception v11

    .line 1033
    .local v11, e:Ljava/lang/Exception;
    const-wide/16 v22, 0x12c

    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 1034
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/drm/mobile1/DrmException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 1035
    :catch_5
    move-exception v12

    .line 1036
    .restart local v12       #e2:Ljava/lang/Exception;
    :try_start_9
    const-string v2, "DrmIntentService"

    const-string v4, " @@@@@  ERROR: close cursor fail!!! (WAP_PUSH)-2"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/drm/mobile1/DrmException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 1045
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataColumnIndext:I
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #e2:Ljava/lang/Exception;
    .end local v13           #filepath:Ljava/lang/String;
    .end local v14           #id:I
    .end local v15           #idColumnIndex:I
    .end local v16           #mimeTypeColumnIndex:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v20           #uid:Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 1046
    .local v11, e:Ljava/io/IOException;
    const-string v2, "DrmIntentService"

    const-string v4, "IOException occurs when install drm rights."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private internetSetTime()V
    .locals 7

    .prologue
    .line 858
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 864
    .local v0, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v1, v4

    .line 865
    .local v1, tzOffset:J
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 871
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    const-string v4, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 878
    const-string v4, "timezone_stamp"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 879
    const-string v4, "network_sync"

    const-string v5, "TRUE"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v4, "time_differential"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/providers/drm/DrmIntentService;->syncDrmClock(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 887
    return-void
.end method

.method private scan(Landroid/content/ContentResolver;)V
    .locals 19
    .parameter "cr"

    .prologue
    .line 321
    const/4 v8, 0x0

    .line 323
    .local v8, bFind:Z
    const/16 v17, 0x0

    .local v17, index:I
    :goto_0
    :try_start_0
    sget-object v2, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 328
    sget-object v2, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    aget-object v3, v2, v17

    sget-object v4, Lcom/android/providers/drm/DrmIntentService;->SCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 332
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 323
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_2

    .line 345
    if-eqz v9, :cond_0

    .line 346
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v10

    .line 350
    .local v10, e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 351
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 352
    :catch_1
    move-exception v11

    .line 353
    .local v11, e1:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (scan)-1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v9, 0x0

    goto :goto_1

    .line 360
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #e1:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    const/4 v8, 0x1

    .line 365
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 367
    .local v15, filenameColumnId:I
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v18, values:Landroid/content/ContentValues;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v16, filepath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v12, existence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, filename:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 375
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 380
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v2, "exist"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :goto_2
    const-string v2, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 389
    const-string v2, "existence"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 395
    .end local v13           #file:Ljava/io/File;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-nez v2, :cond_3

    .line 398
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 411
    :goto_3
    :try_start_5
    sget-object v2, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 413
    sget-object v2, Lcom/android/providers/drm/DrmIntentService;->BULK_IMAGES_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 495
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #existence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #filename:Ljava/lang/String;
    .end local v15           #filenameColumnId:I
    .end local v16           #filepath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v2

    .line 500
    :cond_5
    return-void

    .line 384
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #existence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #filename:Ljava/lang/String;
    .restart local v15       #filenameColumnId:I
    .restart local v16       #filepath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v2, "gone"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 399
    .end local v13           #file:Ljava/io/File;
    :catch_3
    move-exception v10

    .line 401
    .restart local v10       #e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 403
    :catch_4
    move-exception v11

    .line 404
    .restart local v11       #e1:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (scan)-2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v9, 0x0

    goto :goto_3

    .line 414
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #e1:Ljava/lang/Exception;
    :cond_7
    sget-object v2, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 416
    sget-object v2, Lcom/android/providers/drm/DrmIntentService;->BULK_AUDIO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    :cond_8
    sget-object v2, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 419
    sget-object v2, Lcom/android/providers/drm/DrmIntentService;->BULK_VIDEO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 420
    :cond_9
    sget-object v2, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    sget-object v2, Lcom/android/providers/drm/DrmIntentService;->BULK_JAR_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1
.end method

.method private syncClockAfterBoot(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 1133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1134
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 1135
    const/4 v6, 0x0

    .line 1137
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1138
    if-eqz v6, :cond_1

    .line 1139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1140
    .local v10, rebootRTC:J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 1141
    .local v7, drmDate:Ljava/util/Date;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_4

    .line 1142
    :cond_0
    const-string v1, "DrmIntentService"

    const-string v2, "First boot after ROM was reflash."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v13, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v13, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1144
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1145
    const-string v1, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1150
    const-string v1, "network_sync"

    const-string v2, "TRUE"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v1, "time_differential"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    new-instance v12, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/drm/DrmIntentService;

    invoke-direct {v12, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1159
    .local v12, sycnDrmClockIntent:Landroid/content/Intent;
    const-string v1, "SYNC_CLOCK"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v1, "EXTRA_CLOCK"

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p1, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    .end local v7           #drmDate:Ljava/util/Date;
    .end local v10           #rebootRTC:J
    .end local v12           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 1191
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1206
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/providers/drm/DrmCustomization;->onHandleCutomization(Landroid/content/Context;)V

    .line 1211
    invoke-direct {p0}, Lcom/android/providers/drm/DrmIntentService;->checkNetworkSyncTimeFlagFile()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1212
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmIntentService;->actionInternetSetTime(Landroid/content/Context;)V

    .line 1214
    :cond_3
    return-void

    .line 1167
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #drmDate:Ljava/util/Date;
    .restart local v10       #rebootRTC:J
    :cond_4
    :try_start_2
    new-instance v13, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v13, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1168
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v1, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1169
    const-string v1, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1174
    new-instance v12, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/drm/DrmIntentService;

    invoke-direct {v12, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1176
    .restart local v12       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v1, "SYNC_CLOCK"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    const-string v1, "EXTRA_CLOCK"

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1180
    invoke-virtual {p1, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1184
    .end local v7           #drmDate:Ljava/util/Date;
    .end local v10           #rebootRTC:J
    .end local v12           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1190
    if-eqz v6, :cond_2

    .line 1191
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1193
    :catch_1
    move-exception v8

    .line 1195
    .local v8, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x12c

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1197
    :catch_2
    move-exception v9

    .line 1198
    .local v9, e1:Ljava/lang/Exception;
    const-string v1, "DrmIntentService"

    const-string v2, " @@@@@  ERROR: close cursor fail!!! (boot)-1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v6, 0x0

    goto :goto_1

    .line 1193
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 1195
    .restart local v8       #e:Ljava/lang/Exception;
    const-wide/16 v1, 0x12c

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 1197
    :catch_4
    move-exception v9

    .line 1198
    .restart local v9       #e1:Ljava/lang/Exception;
    const-string v1, "DrmIntentService"

    const-string v2, " @@@@@  ERROR: close cursor fail!!! (boot)-1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v6, 0x0

    goto :goto_1

    .line 1189
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1190
    if-eqz v6, :cond_5

    .line 1191
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1201
    :cond_5
    :goto_2
    throw v1

    .line 1193
    :catch_5
    move-exception v8

    .line 1195
    .restart local v8       #e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_7
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 1197
    :catch_6
    move-exception v9

    .line 1198
    .restart local v9       #e1:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (boot)-1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private syncDeviceId()V
    .locals 14

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/providers/drm/DrmIntentService;->createDrmFolders()V

    .line 568
    const/4 v4, 0x0

    .line 571
    .local v4, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/data/com.android.providers.drm/rights/mid.txt"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v3, fileMid:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v11

    if-eqz v11, :cond_1

    .line 653
    if-eqz v4, :cond_0

    .line 655
    :try_start_1
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    const/4 v4, 0x0

    .line 665
    .end local v3           #fileMid:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 657
    .restart local v3       #fileMid:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 661
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 581
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 586
    .local v6, md:Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 587
    .local v1, deviceId:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, nRetried:I
    move v9, v8

    .line 588
    .end local v8           #nRetried:I
    .local v9, nRetried:I
    :goto_1
    add-int/lit8 v8, v9, 0x1

    .end local v9           #nRetried:I
    .restart local v8       #nRetried:I
    const/4 v11, 0x5

    if-ge v9, v11, :cond_2

    .line 589
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 590
    .local v10, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_5

    .line 603
    .end local v10           #telMngr:Landroid/telephony/TelephonyManager;
    :cond_2
    if-eqz v1, :cond_3

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0x7d

    if-eq v11, v12, :cond_3

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const/16 v12, 0x89

    if-ne v11, v12, :cond_4

    .line 615
    :cond_3
    :try_start_3
    const-string v11, "ro.serialno"

    const-string v12, "1234567890AB"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 636
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 638
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "chmod"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "644"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, ""

    aput-object v12, v0, v11

    .line 639
    .local v0, CMD_CHMOD:[Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    .line 640
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 641
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .local v5, fout:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 642
    .local v7, mid:[B
    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 643
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 653
    if-eqz v5, :cond_7

    .line 655
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 656
    const/4 v4, 0x0

    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 594
    .end local v0           #CMD_CHMOD:[Ljava/lang/String;
    .end local v7           #mid:[B
    .restart local v10       #telMngr:Landroid/telephony/TelephonyManager;
    :cond_5
    const-wide/16 v11, 0x3e8

    :try_start_7
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    move v9, v8

    .line 595
    .end local v8           #nRetried:I
    .restart local v9       #nRetried:I
    goto :goto_1

    .line 622
    .end local v9           #nRetried:I
    .end local v10           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v8       #nRetried:I
    :catch_1
    move-exception v2

    .line 623
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "DrmIntentService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error syncDeviceId : get serialno"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v1, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 657
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v0       #CMD_CHMOD:[Ljava/lang/String;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    .restart local v7       #mid:[B
    :catch_2
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 662
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 644
    .end local v0           #CMD_CHMOD:[Ljava/lang/String;
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fileMid:Ljava/io/File;
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v7           #mid:[B
    .end local v8           #nRetried:I
    :catch_3
    move-exception v11

    .line 653
    :goto_3
    if-eqz v4, :cond_0

    .line 655
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 656
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 657
    :catch_4
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 662
    goto/16 :goto_0

    .line 648
    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 653
    :goto_4
    if-eqz v4, :cond_0

    .line 655
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 656
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 657
    :catch_6
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 662
    goto/16 :goto_0

    .line 653
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v4, :cond_6

    .line 655
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 656
    const/4 v4, 0x0

    .line 662
    :cond_6
    :goto_6
    throw v11

    .line 657
    :catch_7
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_6

    .line 653
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v0       #CMD_CHMOD:[Ljava/lang/String;
    .restart local v1       #deviceId:Ljava/lang/String;
    .restart local v3       #fileMid:Ljava/io/File;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    .restart local v6       #md:Ljava/security/MessageDigest;
    .restart local v8       #nRetried:I
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 648
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v11

    move-object v4, v5

    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 644
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v11

    move-object v4, v5

    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    .restart local v7       #mid:[B
    :cond_7
    move-object v4, v5

    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private syncDrmClock(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 17
    .parameter "cr"
    .parameter "values"

    .prologue
    .line 668
    const/4 v8, 0x0

    .line 669
    .local v8, c:Landroid/database/Cursor;
    const/4 v13, 0x1

    .line 675
    .local v13, result:Z
    :try_start_0
    const-string v2, "time_differential"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 677
    .local v14, tempValue:Ljava/lang/Long;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x270f

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/drm/DrmIntentService;->getTimeDifferential(Landroid/content/Context;)J

    move-result-wide v15

    .line 680
    .local v15, time_differential:J
    const-string v2, "time_differential"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 699
    .end local v14           #tempValue:Ljava/lang/Long;
    .end local v15           #time_differential:J
    :cond_0
    :goto_0
    :try_start_1
    sget-object v3, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 702
    if-nez v8, :cond_4

    .line 703
    const/4 v13, 0x0

    .line 762
    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-ne v13, v2, :cond_2

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->deleteNetworkSyncTimeFlagFile()V

    .line 781
    :cond_2
    if-eqz v8, :cond_3

    .line 783
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 796
    :cond_3
    :goto_2
    return-void

    .line 705
    :cond_4
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 710
    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 711
    const/4 v13, 0x0

    goto :goto_1

    .line 719
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    .line 720
    const/4 v13, 0x0

    .line 723
    :cond_6
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 724
    .local v12, idColumn:I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 730
    .local v11, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-gtz v2, :cond_1

    .line 732
    const/4 v13, 0x0

    goto :goto_1

    .line 784
    .end local v11           #id:I
    .end local v12           #idColumn:I
    :catch_0
    move-exception v9

    .line 786
    .local v9, e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 787
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 788
    :catch_1
    move-exception v10

    .line 789
    .local v10, e2:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (syncDrmClock)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v8, 0x0

    goto :goto_2

    .line 739
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 753
    .restart local v9       #e:Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 762
    const/4 v2, 0x1

    if-ne v13, v2, :cond_7

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->deleteNetworkSyncTimeFlagFile()V

    .line 781
    :cond_7
    if-eqz v8, :cond_3

    .line 783
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 784
    :catch_3
    move-exception v9

    .line 786
    const-wide/16 v2, 0x12c

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 787
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 788
    :catch_4
    move-exception v10

    .line 789
    .restart local v10       #e2:Ljava/lang/Exception;
    const-string v2, "DrmIntentService"

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (syncDrmClock)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 755
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 762
    const/4 v3, 0x1

    if-ne v13, v3, :cond_8

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->deleteNetworkSyncTimeFlagFile()V

    .line 781
    :cond_8
    if-eqz v8, :cond_9

    .line 783
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 792
    :cond_9
    :goto_3
    throw v2

    .line 784
    :catch_5
    move-exception v9

    .line 786
    .restart local v9       #e:Ljava/lang/Exception;
    const-wide/16 v3, 0x12c

    :try_start_8
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 787
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    .line 788
    :catch_6
    move-exception v10

    .line 789
    .restart local v10       #e2:Ljava/lang/Exception;
    const-string v3, "DrmIntentService"

    const-string v4, " @@@@@  ERROR: close cursor fail!!! (syncDrmClock)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v8, 0x0

    goto :goto_3

    .line 691
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #e2:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 110
    const-string v4, "DrmIntentService"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, action:Ljava/lang/String;
    const-string v4, "SCAN_STORAGE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    sget-object v5, Lcom/android/providers/drm/DrmIntentService;->mSync:Ljava/lang/Integer;

    monitor-enter v5

    .line 128
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/drm/DrmIntentService;->scan(Landroid/content/ContentResolver;)V

    .line 129
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 133
    :cond_2
    const-string v4, "SYNC_DEVICEID"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->syncDeviceId()V

    goto :goto_0

    .line 135
    :cond_3
    const-string v4, "SYNC_CLOCK"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    sget-object v5, Lcom/android/providers/drm/DrmIntentService;->mSync:Ljava/lang/Integer;

    monitor-enter v5

    .line 142
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v4, "EXTRA_CLOCK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/providers/drm/DrmIntentService;->syncDrmClock(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 144
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 151
    :cond_4
    const-string v4, "INSTALL_WAP_PUSH_RIGHTS"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v20

    .line 154
    .local v20, rightMimeType:Ljava/lang/String;
    const-string v4, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v19, v4

    check-cast v19, [B

    .line 165
    .local v19, rightData:[B
    sget-object v5, Lcom/android/providers/drm/DrmIntentService;->mSync:Ljava/lang/Integer;

    monitor-enter v5

    .line 166
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/android/providers/drm/DrmIntentService;->installWAPPushRights(Landroid/content/ContentResolver;Ljava/lang/String;[B)V

    .line 167
    monitor-exit v5

    goto :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 171
    .end local v19           #rightData:[B
    .end local v20           #rightMimeType:Ljava/lang/String;
    :cond_5
    const-string v4, "DRM_BOOT_COMPLETED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 176
    sget-object v22, Lcom/android/providers/drm/DrmIntentService;->mSync:Ljava/lang/Integer;

    monitor-enter v22

    .line 179
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, external_state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, internal_state:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mounted"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/drm/DrmIntentService;->scan(Landroid/content/ContentResolver;)V

    .line 191
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->syncDeviceId()V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v3

    .line 202
    .local v3, cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_a

    .line 203
    const/4 v10, 0x0

    .line 206
    .local v10, c:Landroid/database/Cursor;
    :try_start_4
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 209
    if-eqz v10, :cond_9

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 211
    .local v17, rebootRTC:J
    new-instance v11, Ljava/util/Date;

    move-wide/from16 v0, v17

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 213
    .local v11, drmDate:Ljava/util/Date;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v11}, Ljava/util/Date;->getYear()I

    move-result v4

    const/16 v5, 0x50

    if-ge v4, v5, :cond_c

    .line 214
    :cond_8
    const-string v4, "DrmIntentService"

    const-string v5, "First boot after ROM was reflash."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v21, Landroid/content/ContentValues;

    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 218
    .local v21, values:Landroid/content/ContentValues;
    const-string v4, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v4, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v4, "network_sync"

    const-string v5, "TRUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v4, "time_differential"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/providers/drm/DrmIntentService;->syncDrmClock(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    .end local v11           #drmDate:Ljava/util/Date;
    .end local v17           #rebootRTC:J
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_9
    :goto_1
    if-eqz v10, :cond_a

    .line 248
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 271
    .end local v10           #c:Landroid/database/Cursor;
    :cond_a
    :goto_2
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->checkNetworkSyncTimeFlagFile()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->internetSetTime()V

    .line 278
    :cond_b
    monitor-exit v22

    goto/16 :goto_0

    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v14           #external_state:Ljava/lang/String;
    .end local v15           #internal_state:Ljava/lang/String;
    :catchall_3
    move-exception v4

    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    .line 232
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #drmDate:Ljava/util/Date;
    .restart local v14       #external_state:Ljava/lang/String;
    .restart local v15       #internal_state:Ljava/lang/String;
    .restart local v17       #rebootRTC:J
    :cond_c
    :try_start_7
    new-instance v21, Landroid/content/ContentValues;

    const/4 v4, 0x2

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 234
    .restart local v21       #values:Landroid/content/ContentValues;
    const-string v4, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v4, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/providers/drm/DrmIntentService;->syncDrmClock(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 241
    .end local v11           #drmDate:Ljava/util/Date;
    .end local v17           #rebootRTC:J
    .end local v21           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 247
    if-eqz v10, :cond_a

    .line 248
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 250
    :catch_1
    move-exception v12

    .line 252
    .local v12, e:Ljava/lang/Exception;
    const-wide/16 v4, 0x12c

    :try_start_9
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 253
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 254
    :catch_2
    move-exception v13

    .line 255
    .local v13, e1:Ljava/lang/Exception;
    :try_start_a
    const-string v4, "DrmIntentService"

    const-string v5, " @@@@@  ERROR: close cursor fail!!! (boot)-1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 256
    const/4 v10, 0x0

    goto :goto_2

    .line 250
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e1:Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 252
    .restart local v12       #e:Ljava/lang/Exception;
    const-wide/16 v4, 0x12c

    :try_start_b
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 253
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .line 254
    :catch_4
    move-exception v13

    .line 255
    .restart local v13       #e1:Ljava/lang/Exception;
    :try_start_c
    const-string v4, "DrmIntentService"

    const-string v5, " @@@@@  ERROR: close cursor fail!!! (boot)-1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 256
    const/4 v10, 0x0

    goto :goto_2

    .line 246
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e1:Ljava/lang/Exception;
    :catchall_4
    move-exception v4

    .line 247
    if-eqz v10, :cond_d

    .line 248
    :try_start_d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 258
    :cond_d
    :goto_3
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 250
    :catch_5
    move-exception v12

    .line 252
    .restart local v12       #e:Ljava/lang/Exception;
    const-wide/16 v5, 0x12c

    :try_start_f
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 253
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_3

    .line 254
    :catch_6
    move-exception v13

    .line 255
    .restart local v13       #e1:Ljava/lang/Exception;
    :try_start_10
    const-string v5, "DrmIntentService"

    const-string v6, " @@@@@  ERROR: close cursor fail!!! (boot)-1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 256
    const/4 v10, 0x0

    goto :goto_3

    .line 283
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e1:Ljava/lang/Exception;
    .end local v14           #external_state:Ljava/lang/String;
    .end local v15           #internal_state:Ljava/lang/String;
    :cond_e
    const-string v4, "TIME_THREAD"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 286
    const-string v4, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/NetworkInfo;

    .line 287
    .local v16, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 288
    const-string v4, "DrmIntentService"

    const-string v5, "Wifi connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmIntentService;->mTimeThread:Lcom/android/providers/drm/TimeThread;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmIntentService;->mTimeThread:Lcom/android/providers/drm/TimeThread;

    invoke-virtual {v4}, Lcom/android/providers/drm/TimeThread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    :cond_f
    new-instance v4, Lcom/android/providers/drm/TimeThread;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/providers/drm/TimeThread;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/drm/DrmIntentService;->mTimeThread:Lcom/android/providers/drm/TimeThread;

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmIntentService;->mTimeThread:Lcom/android/providers/drm/TimeThread;

    invoke-virtual {v4}, Lcom/android/providers/drm/TimeThread;->start()V

    goto/16 :goto_0

    .line 294
    :cond_10
    const-string v4, "DrmIntentService"

    const-string v5, "Wifi disconnected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    .end local v16           #networkInfo:Landroid/net/NetworkInfo;
    :cond_11
    const-string v4, "SYNC_AFTER_BOOT"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->syncDeviceId()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/drm/DrmIntentService;->syncClockAfterBoot(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 313
    :cond_12
    const-string v4, "DrmIntentService"

    const-string v5, "Unrecognized action"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
