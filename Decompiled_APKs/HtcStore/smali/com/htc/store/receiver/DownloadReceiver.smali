.class public Lcom/htc/store/receiver/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field private static final ACTION_ADD_ITEM:Ljava/lang/String; = "com.htc.store.action.ADD_ITEM"

.field private static final TAG:Ljava/lang/String;

.field private static sSoundsetQueueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/htc/store/receiver/DownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/store/receiver/DownloadReceiver;->sSoundsetQueueMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/store/receiver/DownloadReceiver;->makeFileReady(Landroid/content/Context;Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/store/receiver/DownloadReceiver;->sSoundsetQueueMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadComplete(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/store/receiver/DownloadReceiver;->handleDownloadFailed(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V

    return-void
.end method

.method private handleDownloadFailed(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "parentOnlineId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    if-nez p2, :cond_0

    .line 273
    sget-object v1, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v2, "item is empty"

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadFailed(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 279
    :cond_1
    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 282
    sget-object v1, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "this is a subitem of "

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    sget-object v1, Lcom/htc/store/receiver/DownloadReceiver;->sSoundsetQueueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    sget-object v1, Lcom/htc/store/receiver/DownloadReceiver;->sSoundsetQueueMap:Ljava/util/HashMap;

    invoke-static {v1, p3}, Lcom/htc/store/util/CommonUtils;->removeRecordFromHashMapByValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, count:I
    sget-object v1, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, " candidate are removed from SoundsetQueue"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .end local v0           #count:I
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeFileReady(Landroid/content/Context;Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "contentUri"
    .parameter "item"
    .parameter "swapFilePath"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 420
    const/4 v2, 0x0

    .line 422
    .local v2, result:Z
    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 426
    :cond_0
    const/4 v2, 0x1

    .line 460
    :cond_1
    :goto_0
    sget-object v5, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v4, "makeFileReady is "

    aput-object v4, v6, v8

    if-eqz v2, :cond_9

    const-string v4, "successful"

    :goto_1
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    return v2

    .line 427
    :cond_2
    invoke-static {v7}, Lcom/htc/store/util/StorageUtils;->isStorageAvailable(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 428
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/store/util/MediaUtils;->isAudioItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/store/util/StorageUtils;->getAudioFolerPath(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, folderPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 434
    .local v1, isFolderReady:Z
    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 435
    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->mkdir(Ljava/lang/String;)Z

    move-result v1

    .line 436
    sget-object v5, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    const-string v4, "create folder "

    aput-object v4, v6, v8

    aput-object v0, v6, v7

    if-eqz v1, :cond_4

    const-string v4, "successfully"

    :goto_2
    aput-object v4, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    :goto_3
    if-eqz v1, :cond_8

    .line 442
    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, targetFilePath:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "move "

    aput-object v6, v5, v8

    aput-object p4, v5, v7

    const-string v6, " to "

    aput-object v6, v5, v9

    aput-object v3, v5, v10

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    if-eqz v3, :cond_7

    .line 445
    invoke-static {v3}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 446
    const/4 v2, 0x1

    goto :goto_0

    .line 436
    .end local v3           #targetFilePath:Ljava/lang/String;
    :cond_4
    const-string v4, "failed"

    goto :goto_2

    .line 438
    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    .line 448
    .restart local v3       #targetFilePath:Ljava/lang/String;
    :cond_6
    invoke-static {p1, p2, p4, v3}, Lcom/htc/store/util/StorageUtils;->moveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 451
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 454
    .end local v3           #targetFilePath:Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .line 455
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "folder "

    aput-object v6, v5, v8

    aput-object v0, v5, v7

    const-string v6, " is not ready"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 460
    .end local v0           #folderPath:Ljava/lang/String;
    .end local v1           #isFolderReady:Z
    :cond_9
    const-string v4, "failed"

    goto/16 :goto_1
.end method

.method private notifyDownloadComplete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 298
    sget-object v0, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "notifyDownloadComplete: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v6, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v6, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 301
    .local v6, accessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-virtual {v6, p2}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v8

    .line 302
    .local v8, item:Lcom/htc/store/module/vo/ItemItem;
    if-nez v8, :cond_1

    .line 304
    const v0, 0x7f0a005c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/store/util/InstallationUtils;->sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;J)V

    .line 337
    .end local v6           #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .end local v8           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local v6       #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .restart local v8       #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_1
    const/4 v7, 0x0

    .line 309
    .local v7, isSentToSDMOk:Z
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_1
    if-eqz v7, :cond_2

    .line 321
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 330
    :goto_2
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :pswitch_0
    invoke-direct {p0, p1, v8}, Lcom/htc/store/receiver/DownloadReceiver;->sendDownloadSoundCompleteIntentToSDM(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)Z

    move-result v7

    .line 314
    goto :goto_1

    .line 316
    :pswitch_1
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/store/receiver/DownloadReceiver;->sendDownloadSoundsetCompleteIntentToSDM(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;)Z

    move-result v7

    goto :goto_1

    .line 326
    :pswitch_2
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/InstallationUtils;->sendInstalledNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2

    .line 333
    :cond_2
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstallFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private notifyDownloadFailed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 342
    sget-object v2, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "notifyDownloadFailed: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-virtual {v0, p2}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 350
    .local v1, item:Lcom/htc/store/module/vo/ItemItem;
    if-nez v1, :cond_1

    .line 352
    const v2, 0x7f0a005c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-static {p1, v2, v3, v4}, Lcom/htc/store/util/InstallationUtils;->sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;J)V

    .line 379
    .end local v0           #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .end local v1           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local v0       #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .restart local v1       #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 376
    :goto_1
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstallFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 361
    :pswitch_0
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v3

    invoke-static {p1, v2, v3, v4}, Lcom/htc/store/util/InstallationUtils;->sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 371
    :pswitch_1
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v3

    invoke-static {p1, v2, v3, v4}, Lcom/htc/store/util/InstallationUtils;->sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendDownloadSoundCompleteIntentToSDM(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)Z
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.store.action.ADD_ITEM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-static {p1, p2, v3, v2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Landroid/os/Bundle;

    move-result-object v0

    .line 402
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 403
    const-string v4, "SOUNDSET_EXTRA"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "sendDownloadSoundCompleteIntentToSDM is sent"

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :goto_0
    return v2

    .line 408
    :cond_0
    sget-object v2, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v4, "sendDownloadSoundCompleteIntentToSDM is cancelled"

    invoke-static {v2, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 409
    goto :goto_0
.end method

.method private sendDownloadSoundsetCompleteIntentToSDM(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;)Z
    .locals 9
    .parameter "context"
    .parameter "soundsetItem"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 382
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.store.action.ADD_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-static {p1, p2, v6}, Lcom/htc/store/util/MediaUtils;->getSoundsetParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 385
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SOUNDSET_EXTRA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    sget-object v2, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "sendDownloadSoundCompleteIntentToSDM is sent"

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v2, "Alarm of soundset is "

    aput-object v2, v5, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v2, "Calendar of soundset is "

    aput-object v2, v5, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v2, "Email of soundset is "

    aput-object v2, v5, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v2, "Message of soundset is "

    aput-object v2, v5, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v2, "Notification of soundset is "

    aput-object v2, v5, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    sget-object v4, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v2, "Ringtone of soundset is "

    aput-object v2, v5, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    :goto_5
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    sget-object v2, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Task of soundset is "

    aput-object v5, v4, v7

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    :cond_0
    aput-object v3, v4, v6

    invoke-static {v2, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return v6

    :cond_1
    move-object v2, v3

    .line 388
    goto/16 :goto_0

    :cond_2
    move-object v2, v3

    .line 389
    goto/16 :goto_1

    :cond_3
    move-object v2, v3

    .line 390
    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 391
    goto :goto_3

    :cond_5
    move-object v2, v3

    .line 392
    goto :goto_4

    :cond_6
    move-object v2, v3

    .line 393
    goto :goto_5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/store/receiver/DownloadReceiver$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/htc/store/receiver/DownloadReceiver$1;-><init>(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 269
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v1, "com.htc.store.action.INITIALIZE_DOWNLOAD_SOUNDSET_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/store/receiver/DownloadReceiver$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/htc/store/receiver/DownloadReceiver$2;-><init>(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 267
    :cond_1
    sget-object v1, Lcom/htc/store/receiver/DownloadReceiver;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "unknown action "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
