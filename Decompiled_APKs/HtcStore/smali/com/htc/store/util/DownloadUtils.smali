.class public Lcom/htc/store/util/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final DOWNLOAD:I = 0x0

.field private static final DOWNLOAD_FOR_UPDATE:I = 0x1

.field public static final RESULT_ERROR:I = 0x0

.field public static final RESULT_EXISTS:I = 0x1

.field public static final RESULT_NONE:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/store/util/DownloadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortDownloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "onlineParentId"
    .parameter "contentType"
    .parameter "isForUpdate"

    .prologue
    .line 405
    const/4 v1, -0x1

    .line 406
    .local v1, result:I
    invoke-static {p1, p3, p5}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, compositedId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationextras=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 409
    if-lez v1, :cond_0

    .line 410
    sget-object v3, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delete "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, " records with composited id "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {p0, p1, p2, p4}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsUnInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    :cond_0
    return v1
.end method

.method private static abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .parameter "context"
    .parameter "onlineId"
    .parameter "parentOnlineId"
    .parameter "isForUpdate"

    .prologue
    .line 519
    const/4 v1, -0x1

    .line 520
    .local v1, result:I
    invoke-static {p1, p2, p3}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, compositedId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationextras=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 523
    if-lez v1, :cond_0

    .line 524
    sget-object v3, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delete "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, " records with composited id "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    :cond_0
    return v1
.end method

.method public static abortDownloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)I
    .locals 8
    .parameter "context"
    .parameter "soundsetItem"
    .parameter "isForUpdate"

    .prologue
    const/4 v7, 0x1

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, result:I
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, soundsetOnlineId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 483
    .local v0, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 490
    :cond_1
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 494
    :cond_2
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 498
    :cond_3
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_4

    .line 500
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 502
    :cond_4
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_5

    .line 504
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 506
    :cond_5
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_6

    .line 508
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, p2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 511
    :cond_6
    if-lez v1, :cond_7

    .line 512
    sget-object v3, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delete "

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, " records with online id "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v7}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsUnInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    :cond_7
    return v1
.end method

.method public static downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "onlineId"
    .parameter "version"
    .parameter "parentOnlineId"
    .parameter "contentType"
    .parameter "src"
    .parameter "isForUpdate"

    .prologue
    .line 297
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZ)Z

    move-result v0

    return v0
.end method

.method private static downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZ)Z
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "onlineId"
    .parameter "version"
    .parameter "parentOnlineId"
    .parameter "contentType"
    .parameter "src"
    .parameter "isVisible"
    .parameter "isMakingNoise"
    .parameter "isForUpdate"

    .prologue
    .line 319
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "download "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p6, v3, v4

    const/4 v4, 0x2

    const-string v5, ", and visibility is "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const-string v2, "uri"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "visibility"

    if-eqz p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "notificationpackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "notificationclass"

    const-class v3, Lcom/htc/store/receiver/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "destination"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v2, "notificationextras"

    invoke-static {p2, p4, p9}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-static {p2, p4}, Lcom/htc/store/util/DownloadUtils;->isSoundsetCompositedId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    if-eqz p9, :cond_2

    .line 335
    invoke-static {p0, p2, p3, p5}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsDownloadingForUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    :goto_1
    if-eqz p8, :cond_0

    .line 340
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->notifySendToPhone(Landroid/content/Context;)V

    .line 344
    :cond_0
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 324
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 337
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {p0, p2, p3, p5}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 344
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "onlineId"
    .parameter "version"
    .parameter "parentOnlineId"
    .parameter "contentType"
    .parameter "src"
    .parameter "isForUpdate"

    .prologue
    .line 305
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZ)Z

    move-result v0

    return v0
.end method

.method public static downloadItemMakeNoise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "onlineId"
    .parameter "version"
    .parameter "parentOnlineId"
    .parameter "contentType"
    .parameter "src"
    .parameter "isForUpdate"

    .prologue
    .line 301
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZ)Z

    move-result v0

    return v0
.end method

.method public static downloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)V
    .locals 1
    .parameter "context"
    .parameter "soundsetItem"
    .parameter "isForUpdate"

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/htc/store/util/DownloadUtils;->downloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;ZZ)V

    .line 418
    return-void
.end method

.method private static downloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;ZZ)V
    .locals 11
    .parameter "context"
    .parameter "soundsetItem"
    .parameter "isMakingNoise"
    .parameter "isForUpdate"

    .prologue
    const/4 v10, 0x3

    .line 431
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v6

    .line 432
    .local v6, ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 433
    .local v0, alarmItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 434
    .local v5, notificationItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v4

    .line 435
    .local v4, messageItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    .line 436
    .local v2, emailItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 437
    .local v1, calendarItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v7

    .line 439
    .local v7, taskItem:Lcom/htc/store/module/vo/ItemItem;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "com.htc.store.action.INITIALIZE_DOWNLOAD_SOUNDSET_TASK"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v8, "soundset_online_id"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v8, "soundset_online_title"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v8, "soundset_is_download_for_updateonline_title"

    invoke-virtual {v3, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 447
    const-string v8, "soundset_ringtone"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 450
    const-string v8, "soundset_alarm"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 452
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 453
    const-string v8, "soundset_notification"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 455
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 456
    const-string v8, "soundset_message"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 458
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 459
    const-string v8, "soundset_email"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 461
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 462
    const-string v8, "soundset_calendar"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 464
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 465
    const-string v8, "soundset_task"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 468
    :cond_6
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getContentType()I

    move-result v10

    invoke-static {p0, v8, v9, v10}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 472
    if-eqz p2, :cond_7

    .line 473
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->notifySendToPhone(Landroid/content/Context;)V

    .line 475
    :cond_7
    return-void
.end method

.method public static downloadSoundsetMakeNoise(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)V
    .locals 1
    .parameter "context"
    .parameter "soundsetItem"
    .parameter "isForUpdate"

    .prologue
    .line 421
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/htc/store/util/DownloadUtils;->downloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;ZZ)V

    .line 422
    return-void
.end method

.method public static getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "itemId"
    .parameter "parentId"
    .parameter "isForUpdate"

    .prologue
    .line 358
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, isForUpdateString:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 358
    .end local v0           #isForUpdateString:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompositedId(Ljava/lang/String;)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    const-string v2, ";"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, swap:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 391
    .end local v1           #swap:[Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static isSoundsetCompositedId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "onlineId"
    .parameter "parentOnlineId"

    .prologue
    .line 401
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseCompositedId(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 10
    .parameter "compositedId"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, result:[Ljava/lang/Object;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 368
    const-string v7, ";"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, swap:[Ljava/lang/String;
    array-length v7, v4

    if-ne v7, v9, :cond_0

    .line 370
    new-array v3, v9, [Ljava/lang/Object;

    .line 371
    new-instance v1, Ljava/lang/String;

    aget-object v7, v4, v6

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, itemId:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    aget-object v7, v4, v5

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, parentId:Ljava/lang/String;
    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v0, v5

    .line 374
    .local v0, isToUpdate:Z
    :goto_0
    aput-object v1, v3, v6

    .line 375
    aput-object v2, v3, v5

    .line 376
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v8

    .line 379
    .end local v0           #isToUpdate:Z
    .end local v1           #itemId:Ljava/lang/String;
    .end local v2           #parentId:Ljava/lang/String;
    .end local v4           #swap:[Ljava/lang/String;
    :cond_0
    return-object v3

    .restart local v1       #itemId:Ljava/lang/String;
    .restart local v2       #parentId:Ljava/lang/String;
    .restart local v4       #swap:[Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 373
    goto :goto_0
.end method

.method public static retrieveDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .parameter "imageUrl"

    .prologue
    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    .local v7, result:Landroid/graphics/drawable/Drawable;
    sget-object v10, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imageUrl: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 89
    .local v1, begin:J
    const-wide/16 v4, 0x0

    .line 91
    .local v4, end:J
    const/4 v6, 0x0

    .line 93
    .local v6, istream:Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 95
    .local v9, urlcon:Ljava/net/HttpURLConnection;
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 96
    const-string v10, "Content-type"

    const-string v11, "image/png"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 100
    sget-object v10, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Download Image Cost: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sub-long v13, v4, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    move-wide v1, v4

    .line 102
    const-string v10, "promo drawable"

    invoke-static {v6, v10}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 104
    sget-object v10, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Create Drawable Cost: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sub-long v13, v4, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    if-eqz v6, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlcon:Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-object v7

    .line 112
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlcon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 113
    .local v0, ae:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 105
    .end local v0           #ae:Ljava/lang/Exception;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlcon:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v3

    .line 106
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v10, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v6, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 112
    :catch_2
    move-exception v0

    .line 113
    .restart local v0       #ae:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 108
    .end local v0           #ae:Ljava/lang/Exception;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 109
    if-eqz v6, :cond_1

    .line 110
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 114
    :cond_1
    :goto_1
    throw v10

    .line 112
    :catch_3
    move-exception v0

    .line 113
    .restart local v0       #ae:Ljava/lang/Exception;
    sget-object v11, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "imageUrl"
    .parameter "localPath"

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, v0, v0}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 22
    .parameter "imageUrl"
    .parameter "localPath"
    .parameter "preferredWidth"
    .parameter "preferredHeight"

    .prologue
    .line 125
    const/4 v13, 0x0

    .line 126
    .local v13, success:Z
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "imageUrl: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object p0, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    .local v4, begin:J
    const-wide/16 v8, 0x0

    .line 129
    .local v8, end:J
    if-eqz p1, :cond_0

    .line 130
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v10, file:Ljava/io/File;
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "filepath = "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 133
    const/4 v11, 0x0

    .line 135
    .local v11, istream:Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    .local v15, url:Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    check-cast v16, Ljava/net/HttpURLConnection;

    .line 137
    .local v16, urlcon:Ljava/net/HttpURLConnection;
    const-string v17, "GET"

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    const-string v17, "Content-type"

    const-string v18, "image/png"

    invoke-virtual/range {v16 .. v18}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 142
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Download Image Cost: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sub-long v20, v8, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, " --- "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    move-wide v4, v8

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 146
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 147
    .local v14, temp:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 148
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Decode Image Cost: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sub-long v20, v8, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    move-wide v4, v8

    .line 150
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v12

    .line 151
    .local v12, organizedSize:[I
    const/16 v17, 0x0

    aget v17, v12, v17

    const/16 v18, 0x1

    aget v18, v12, v18

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 152
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    invoke-static {v6, v10, v0}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v13

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 154
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Write Files Cost: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sub-long v20, v8, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    move-wide v4, v8

    .line 156
    invoke-static {v14}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-static {v6}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v12           #organizedSize:[I
    .end local v14           #temp:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v11, :cond_0

    .line 181
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 189
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #istream:Ljava/io/InputStream;
    .end local v15           #url:Ljava/net/URL;
    .end local v16           #urlcon:Ljava/net/HttpURLConnection;
    :cond_0
    :goto_1
    return v13

    .line 159
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #istream:Ljava/io/InputStream;
    .restart local v15       #url:Ljava/net/URL;
    .restart local v16       #urlcon:Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_2
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 161
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Decode Image Cost: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sub-long v20, v8, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    move-wide v4, v8

    .line 163
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    invoke-static {v6, v10, v0}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v13

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 165
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Write Files Cost: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sub-long v20, v8, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    move-wide v4, v8

    .line 167
    invoke-static {v6}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v15           #url:Ljava/net/URL;
    .end local v16           #urlcon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v7

    .line 170
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 171
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v17

    if-eqz v17, :cond_2

    .line 173
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 180
    :cond_2
    :goto_2
    if-eqz v11, :cond_0

    .line 181
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 183
    :catch_1
    move-exception v3

    .line 184
    .local v3, ae:Ljava/lang/Exception;
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 183
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v15       #url:Ljava/net/URL;
    .restart local v16       #urlcon:Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v3

    .line 184
    .restart local v3       #ae:Ljava/lang/Exception;
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 174
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v15           #url:Ljava/net/URL;
    .end local v16           #urlcon:Ljava/net/HttpURLConnection;
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 175
    .restart local v3       #ae:Ljava/lang/Exception;
    :try_start_6
    sget-object v17, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 179
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 180
    if-eqz v11, :cond_3

    .line 181
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 185
    :cond_3
    :goto_3
    throw v17

    .line 183
    :catch_4
    move-exception v3

    .line 184
    .restart local v3       #ae:Ljava/lang/Exception;
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static retrieveImageWithBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "imageUrl"
    .parameter "localPath"

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 195
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, file:Ljava/io/File;
    sget-object v8, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "filepath = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 v4, 0x0

    .line 199
    .local v4, istream:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 200
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 201
    .local v7, urlcon:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 202
    const-string v8, "Content-type"

    const-string v9, "image/png"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 205
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v3, v8}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v5

    .line 207
    .local v5, success:Z
    if-nez v5, :cond_2

    .line 208
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v5           #success:Z
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlcon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 211
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 213
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 221
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 228
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #istream:Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 220
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #istream:Ljava/io/InputStream;
    .restart local v5       #success:Z
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlcon:Ljava/net/HttpURLConnection;
    :cond_2
    if-eqz v4, :cond_1

    .line 221
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, ae:Ljava/lang/Exception;
    sget-object v8, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 214
    .end local v0           #ae:Ljava/lang/Exception;
    .end local v5           #success:Z
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlcon:Ljava/net/HttpURLConnection;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 215
    .restart local v0       #ae:Ljava/lang/Exception;
    :try_start_5
    sget-object v8, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 219
    .end local v0           #ae:Ljava/lang/Exception;
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 220
    if-eqz v4, :cond_3

    .line 221
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 225
    :cond_3
    :goto_2
    throw v8

    .line 223
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 224
    .restart local v0       #ae:Ljava/lang/Exception;
    sget-object v8, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 223
    .end local v0           #ae:Ljava/lang/Exception;
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 224
    .restart local v0       #ae:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "imageUrl"
    .parameter "localPath"

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-static {p0, p1, v0, v0}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 16
    .parameter "imageUrl"
    .parameter "localPath"
    .parameter "preferredWidth"
    .parameter "preferredHeight"

    .prologue
    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, result:I
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "imageUrl: "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p0, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 244
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, file:Ljava/io/File;
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "filepath = "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 247
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "Retrieve image from server"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const/4 v5, 0x0

    .line 250
    .local v5, istream:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 251
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 252
    .local v11, urlcon:Ljava/net/HttpURLConnection;
    const-string v12, "GET"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 253
    const-string v12, "Content-type"

    const-string v13, "image/png"

    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, bmp:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 258
    .local v8, success:Z
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 259
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 260
    .local v9, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    move/from16 v0, p2

    int-to-float v14, v0

    move/from16 v0, p3

    int-to-float v15, v0

    invoke-static {v12, v13, v14, v15}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v6

    .line 261
    .local v6, organizedSize:[I
    const/4 v12, 0x0

    aget v12, v6, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    const/4 v14, 0x1

    invoke-static {v9, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 262
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2, v4, v12}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v8

    .line 263
    invoke-static {v9}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V

    .line 264
    invoke-static {v2}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v6           #organizedSize:[I
    .end local v9           #temp:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v8, :cond_3

    const/4 v7, 0x2

    .line 282
    :goto_1
    if-eqz v5, :cond_0

    .line 283
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 293
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #istream:Ljava/io/InputStream;
    .end local v8           #success:Z
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlcon:Ljava/net/HttpURLConnection;
    :cond_0
    :goto_2
    return v7

    .line 266
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #istream:Ljava/io/InputStream;
    .restart local v8       #success:Z
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #urlcon:Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 267
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2, v4, v12}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v8

    .line 268
    invoke-static {v2}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #success:Z
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlcon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v3

    .line 272
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 273
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    if-eqz v12, :cond_2

    .line 275
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 282
    :cond_2
    :goto_3
    if-eqz v5, :cond_0

    .line 283
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 285
    :catch_1
    move-exception v1

    .line 286
    .local v1, ae:Ljava/lang/Exception;
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 270
    .end local v1           #ae:Ljava/lang/Exception;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v8       #success:Z
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #urlcon:Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 285
    :catch_2
    move-exception v1

    .line 286
    .restart local v1       #ae:Ljava/lang/Exception;
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 276
    .end local v1           #ae:Ljava/lang/Exception;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #success:Z
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlcon:Ljava/net/HttpURLConnection;
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 277
    .restart local v1       #ae:Ljava/lang/Exception;
    :try_start_6
    sget-object v12, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 281
    .end local v1           #ae:Ljava/lang/Exception;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 282
    if-eqz v5, :cond_4

    .line 283
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 287
    :cond_4
    :goto_4
    throw v12

    .line 285
    :catch_4
    move-exception v1

    .line 286
    .restart local v1       #ae:Ljava/lang/Exception;
    sget-object v13, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 290
    .end local v1           #ae:Ljava/lang/Exception;
    .end local v5           #istream:Ljava/io/InputStream;
    :cond_5
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public static retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 24
    .parameter "imageUrl"
    .parameter "status"
    .parameter "order"
    .parameter "onlineId"
    .parameter "preferredWidth"
    .parameter "preferredHeight"

    .prologue
    .line 27
    const/4 v12, 0x0

    .line 28
    .local v12, result:I
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "imageUrl: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object p0, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 30
    .local v4, begin:J
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 32
    new-instance v14, Ljava/io/File;

    invoke-static/range {p1 .. p3}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v14, tabImage:Ljava/io/File;
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "filepath: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {p1 .. p3}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    .line 35
    const/4 v10, 0x0

    .line 37
    .local v10, istream:Ljava/io/InputStream;
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v16, url:Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljava/net/HttpURLConnection;

    .line 39
    .local v17, urlcon:Ljava/net/HttpURLConnection;
    const-string v18, "GET"

    invoke-virtual/range {v17 .. v18}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 40
    const-string v18, "Content-type"

    const-string v19, "image/png"

    invoke-virtual/range {v17 .. v19}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 44
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 45
    .local v15, temp:Landroid/graphics/Bitmap;
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Original Size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " x "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " (H x W)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v11

    .line 47
    .local v11, organizedSize:[I
    const/16 v18, 0x0

    aget v18, v11, v18

    const/16 v19, 0x1

    aget v19, v11, v19

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 48
    .local v6, bmp:Landroid/graphics/Bitmap;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v18

    invoke-static {v6, v14, v0}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v13

    .line 49
    .local v13, success:Z
    invoke-static {v15}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V

    .line 50
    invoke-static {v6}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V

    .line 51
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "success: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz v13, :cond_2

    .line 53
    const/4 v12, 0x2

    .line 68
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 69
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #istream:Ljava/io/InputStream;
    .end local v11           #organizedSize:[I
    .end local v13           #success:Z
    .end local v14           #tabImage:Ljava/io/File;
    .end local v15           #temp:Landroid/graphics/Bitmap;
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #urlcon:Ljava/net/HttpURLConnection;
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 80
    .local v8, end:J
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Download Tab Image Cost: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v4

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "result: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v12

    .line 54
    .end local v8           #end:J
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v10       #istream:Ljava/io/InputStream;
    .restart local v11       #organizedSize:[I
    .restart local v13       #success:Z
    .restart local v14       #tabImage:Ljava/io/File;
    .restart local v15       #temp:Landroid/graphics/Bitmap;
    .restart local v16       #url:Ljava/net/URL;
    .restart local v17       #urlcon:Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 55
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 57
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #organizedSize:[I
    .end local v13           #success:Z
    .end local v15           #temp:Landroid/graphics/Bitmap;
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #urlcon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v7

    .line 58
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    invoke-virtual {v14}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    if-eqz v18, :cond_3

    .line 61
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 68
    :cond_3
    :goto_2
    if-eqz v10, :cond_1

    .line 69
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 71
    :catch_1
    move-exception v3

    .line 72
    .local v3, ae:Ljava/lang/Exception;
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 71
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v11       #organizedSize:[I
    .restart local v13       #success:Z
    .restart local v15       #temp:Landroid/graphics/Bitmap;
    .restart local v16       #url:Ljava/net/URL;
    .restart local v17       #urlcon:Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v3

    .line 72
    .restart local v3       #ae:Ljava/lang/Exception;
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 62
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #organizedSize:[I
    .end local v13           #success:Z
    .end local v15           #temp:Landroid/graphics/Bitmap;
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #urlcon:Ljava/net/HttpURLConnection;
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 63
    .restart local v3       #ae:Ljava/lang/Exception;
    :try_start_6
    sget-object v18, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 67
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 68
    if-eqz v10, :cond_4

    .line 69
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 73
    :cond_4
    :goto_3
    throw v18

    .line 71
    :catch_4
    move-exception v3

    .line 72
    .restart local v3       #ae:Ljava/lang/Exception;
    sget-object v19, Lcom/htc/store/util/DownloadUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 76
    .end local v3           #ae:Ljava/lang/Exception;
    .end local v10           #istream:Ljava/io/InputStream;
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method public static sendDownloadFailedIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "onlineLabel"
    .parameter "contentType"

    .prologue
    .line 530
    invoke-static {p0, p1, p2, p4}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstallFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    return-void
.end method
