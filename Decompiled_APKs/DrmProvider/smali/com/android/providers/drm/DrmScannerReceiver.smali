.class public Lcom/android/providers/drm/DrmScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmScannerReceiver.java"


# static fields
.field public static final ACTION_CUSTOMIZATION_CHANGE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field public static final ACTION_DRM_GET_TIME:Ljava/lang/String; = "com.android.provider.drm.action.ACTION_DRM_GET_TIME"

.field public static final ACTION_INSTALL_SINGLE_FILE:Ljava/lang/String; = "com.android.provider.drm.intent.action.ACTION_INSTALL_SINGLE_FILE"

.field public static final ACTION_INTERNET_SET_TIME:Ljava/lang/String; = "com.android.provider.drm.intent.action.ACTION_INTERNET_SET_TIME"

.field public static final ACTION_INTERNET_SET_TIMEZONE:Ljava/lang/String; = "com.android.provider.drm.intent.action.ACTION_INTERNET_SET_TIMEZONE"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmScannerReceiver"


# instance fields
.field private mTimeThread:Lcom/android/providers/drm/TimeThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/drm/DrmScannerReceiver;->mTimeThread:Lcom/android/providers/drm/TimeThread;

    return-void
.end method

.method private checkNetworkSyncTimeFlagFile()Z
    .locals 5

    .prologue
    .line 1122
    const/4 v2, 0x0

    .line 1123
    .local v2, result:Z
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.providers.drm/rights/NetworkSyncTimeFlagFile"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v1, flagFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1133
    const/4 v2, 0x1

    .line 1153
    :goto_0
    return v2

    .line 1140
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v0

    .line 1147
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DrmScannerReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1150
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTimeDifferential(Landroid/content/Context;)J
    .locals 20
    .parameter "context"

    .prologue
    .line 981
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 982
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v18, 0x0

    .line 983
    .local v18, time_differential:J
    if-nez v1, :cond_0

    .line 987
    const-wide/16 v2, 0x0

    .line 1016
    :goto_0
    return-wide v2

    .line 990
    :cond_0
    const/4 v7, 0x0

    .line 992
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 993
    if-eqz v7, :cond_1

    .line 994
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 995
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 996
    const-string v2, "time_stamp"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 997
    .local v17, timeColumnIndex:I
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 998
    .local v15, rtc:J
    const-string v2, "clock_stamp"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 999
    .local v8, clockColumnIndex:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1000
    .local v13, elapsed:J
    const-string v2, "time_differential"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1001
    .local v11, differentialColumnIndex:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1002
    .local v9, differential:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    add-long/2addr v2, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v4, v13

    sub-long v18, v2, v4

    .line 1012
    .end local v8           #clockColumnIndex:I
    .end local v9           #differential:J
    .end local v11           #differentialColumnIndex:I
    .end local v13           #elapsed:J
    .end local v15           #rtc:J
    .end local v17           #timeColumnIndex:I
    :cond_1
    if-eqz v7, :cond_2

    .line 1013
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide/from16 v2, v18

    .line 1016
    goto :goto_0

    .line 1006
    :catch_0
    move-exception v12

    .line 1010
    .local v12, e:Ljava/lang/Exception;
    const-wide/16 v18, 0x0

    .line 1012
    if-eqz v7, :cond_2

    goto :goto_1

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 1013
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1012
    :cond_3
    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    new-instance v23, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v23, sycnClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_AFTER_BOOT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, external_state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, internal_state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    :cond_0
    new-instance v21, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v21, scanIntent:Landroid/content/Intent;
    const-string v3, "SCAN_STORAGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 765
    .end local v14           #external_state:Ljava/lang/String;
    .end local v15           #internal_state:Ljava/lang/String;
    .end local v21           #scanIntent:Landroid/content/Intent;
    .end local v23           #sycnClockIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    .line 275
    .local v32, uri:Landroid/net/Uri;
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    const-string v22, "nofs"

    .line 280
    .local v22, storage_state:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 281
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v22

    .line 285
    :cond_3
    :goto_1
    const-string v3, "mounted"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "mounted_ro"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    :cond_4
    new-instance v21, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v21       #scanIntent:Landroid/content/Intent;
    const-string v3, "SCAN_STORAGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 282
    .end local v21           #scanIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    goto :goto_1

    .line 344
    .end local v22           #storage_state:Ljava/lang/String;
    .end local v32           #uri:Landroid/net/Uri;
    :cond_6
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    .line 346
    .restart local v32       #uri:Landroid/net/Uri;
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    const-string v22, "nofs"

    .line 348
    .restart local v22       #storage_state:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 349
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v22

    .line 356
    :cond_7
    :goto_2
    const-string v3, "unmounted"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "bad_removal"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "shared"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    :cond_8
    new-instance v21, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .restart local v21       #scanIntent:Landroid/content/Intent;
    const-string v3, "SCAN_STORAGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 350
    .end local v21           #scanIntent:Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 371
    .end local v22           #storage_state:Ljava/lang/String;
    .end local v32           #uri:Landroid/net/Uri;
    :cond_a
    const-string v3, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 388
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v29

    .line 392
    .local v29, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 393
    .local v30, tzOffset:J
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x5

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 397
    .local v33, values:Landroid/content/ContentValues;
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v3, "timezone_stamp"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v3, "network_sync"

    const-string v5, "TRUE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v3, "time_differential"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v24, sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 424
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v29           #tz:Ljava/util/TimeZone;
    .end local v30           #tzOffset:J
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_b
    const-string v3, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 439
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x4

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 440
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "time-zone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, TimeZoneId:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 445
    .restart local v29       #tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 446
    .restart local v30       #tzOffset:J
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    const-string v3, "timezone_stamp"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 449
    const-string v3, "time_differential"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 463
    .end local v9           #TimeZoneId:Ljava/lang/String;
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v29           #tz:Ljava/util/TimeZone;
    .end local v30           #tzOffset:J
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_c
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 475
    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 477
    .local v11, date:Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    const/16 v5, 0x7bc

    if-le v3, v5, :cond_1

    .line 484
    const-wide/16 v27, 0x270f

    .line 492
    .local v27, time_differential:J
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 493
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    const-string v3, "time_differential"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 501
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 507
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 511
    .end local v11           #date:Ljava/util/Date;
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v27           #time_differential:J
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_d
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 526
    const-wide/16 v27, 0x270f

    .line 534
    .restart local v27       #time_differential:J
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x4

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 535
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    const-string v3, "time-zone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 538
    .restart local v9       #TimeZoneId:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 542
    .restart local v29       #tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 543
    .restart local v30       #tzOffset:J
    const-string v3, "time_differential"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    const-string v3, "timezone_stamp"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 555
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 558
    .end local v9           #TimeZoneId:Ljava/lang/String;
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v27           #time_differential:J
    .end local v29           #tz:Ljava/util/TimeZone;
    .end local v30           #tzOffset:J
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_e
    const-string v3, "com.android.provider.drm.intent.action.ACTION_INTERNET_SET_TIME"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 562
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v29

    .line 566
    .restart local v29       #tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 567
    .restart local v30       #tzOffset:J
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x5

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 571
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    const-string v3, "timezone_stamp"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    const-string v3, "network_sync"

    const-string v5, "TRUE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v3, "time_differential"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 597
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v29           #tz:Ljava/util/TimeZone;
    .end local v30           #tzOffset:J
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_f
    const-string v3, "com.android.provider.drm.intent.action.ACTION_INTERNET_SET_TIMEZONE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 598
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x4

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 599
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "time-zone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 600
    .restart local v9       #TimeZoneId:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 604
    .restart local v29       #tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 605
    .restart local v30       #tzOffset:J
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 607
    const-string v3, "timezone_stamp"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string v3, "time_differential"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 615
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 619
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 623
    .end local v9           #TimeZoneId:Ljava/lang/String;
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    .end local v29           #tz:Ljava/util/TimeZone;
    .end local v30           #tzOffset:J
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_10
    const-string v3, "com.android.provider.drm.intent.action.ACTION_INSTALL_SINGLE_FILE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 624
    const-string v3, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 625
    .local v18, path:Ljava/lang/String;
    const-string v3, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, url:Ljava/lang/String;
    const-string v3, "mimetype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 627
    .local v6, mediaType:Ljava/lang/String;
    const-string v3, "rightsOption"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 630
    .local v20, rightsOption:Ljava/lang/Boolean;
    const-string v3, "destination"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 632
    .local v8, destination:I
    if-eqz v8, :cond_11

    const/4 v3, 0x7

    if-eq v8, v3, :cond_11

    .line 634
    const-string v3, "DrmScannerReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Incorrect destination value (use EXTERNAL): "

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v8, 0x0

    .line 640
    :cond_11
    if-eqz v18, :cond_1

    if-eqz v7, :cond_1

    .line 641
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 642
    .local v4, file:Ljava/io/File;
    if-nez v6, :cond_12

    .line 643
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v16

    .line 644
    .local v16, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-static/range {v18 .. v18}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 645
    .local v13, extension:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 654
    .end local v13           #extension:Ljava/lang/String;
    .end local v16           #mimeTypeMap:Landroid/webkit/MimeTypeMap;
    :cond_12
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 655
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    .line 659
    .local v19, result:Landroid/content/Intent;
    :goto_3
    if-nez v19, :cond_13

    .line 660
    const-string v3, "DrmScannerReceiver"

    const-string v5, "Install single DRM content failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_13
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    .end local v19           #result:Landroid/content/Intent;
    :goto_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 657
    :cond_14
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Landroid/provider/DrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .restart local v19       #result:Landroid/content/Intent;
    goto :goto_3

    .line 662
    .end local v19           #result:Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 663
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "DrmScannerReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Add single DRM file."

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 668
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 667
    :cond_15
    throw v3

    .line 676
    .end local v4           #file:Ljava/io/File;
    .end local v6           #mediaType:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    .end local v8           #destination:I
    .end local v18           #path:Ljava/lang/String;
    .end local v20           #rightsOption:Ljava/lang/Boolean;
    :cond_16
    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/android/providers/drm/DrmCustomization;->onHandleCutomization(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 685
    :cond_17
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 686
    const-string v3, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkInfo;

    .line 687
    .local v17, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v17, :cond_18

    .line 691
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "TIME_THREAD"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v3, "networkInfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 719
    .end local v24           #sycnDrmClockIntent:Landroid/content/Intent;
    :cond_18
    const-string v3, "DrmScannerReceiver"

    const-string v5, "NetworkInfo is null."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 723
    .end local v17           #networkInfo:Landroid/net/NetworkInfo;
    :cond_19
    const-string v3, "com.android.provider.drm.action.ACTION_DRM_GET_TIME"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    const-string v3, "time"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v34

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    .line 729
    .local v25, timeMillis:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v29

    .line 733
    .restart local v29       #tz:Ljava/util/TimeZone;
    move-object/from16 v0, v29

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 734
    .restart local v30       #tzOffset:J
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x5

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 736
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "time_stamp"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    const-string v3, "clock_stamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 741
    const-string v3, "timezone_stamp"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 742
    const-string v3, "network_sync"

    const-string v5, "TRUE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v3, "time_differential"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v25

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 751
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    .restart local v24       #sycnDrmClockIntent:Landroid/content/Intent;
    const-string v3, "SYNC_CLOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v3, "EXTRA_CLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
