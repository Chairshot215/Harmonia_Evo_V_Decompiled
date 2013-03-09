.class public Lcom/android/updater/UpdaterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdaterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;,
        Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;,
        Lcom/android/updater/UpdaterReceiver$CheckinFailureType;,
        Lcom/android/updater/UpdaterReceiver$AcuErrorCode;
    }
.end annotation


# static fields
.field public static final ACTION_ACU_APP_CANCEL:Ljava/lang/String; = "android.server.checkin.APP_CANCEL"

.field public static final ACTION_ACU_BEFORE_PARSER:Ljava/lang/String; = "android.server.checkin.APP_UPDATE"

.field public static final ACTION_ACU_CONFIRM_DOWNLOAD:Ljava/lang/String; = "com.android.updater.ACU_CONFIRM_DOWNLOAD"

.field public static final ACTION_ACU_DOWNLOAD_PROGRESS:Ljava/lang/String; = "android.server.checkin.APP_NOTIFY_DLPROGRESS"

.field public static final ACTION_ACU_INDIVIDUAL_NO_NETWORK:Ljava/lang/String; = "com.android.updater.INDIVIDUAL_NO_NETWORK"

.field public static final ACTION_ACU_INSTALLING_NOTIFY:Ljava/lang/String; = "android.server.checkin.APP_NOTIFY"

.field public static final ACTION_ACU_NEXT_DOWNLOADING:Ljava/lang/String; = "android.server.checkin.APP_DOWNLOAD_TRIGGERED"

.field public static final ACTION_ACU_TRIGGER_INDIVIDUAL:Ljava/lang/String; = "com.android.updater.FOTA_SETTING_INDIVIDUAL"

.field public static final ACTION_ACU_UPDATE_FAIL:Ljava/lang/String; = "android.server.checkin.APPUPDATE_FAIL"

.field public static final ACTION_CONFIRM_DOWNLOAD:Ljava/lang/String; = "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

.field private static final ACTION_CONFIRM_INSTALL:Ljava/lang/String; = "android.server.checkin.FOTA_READY"

.field public static final ACTION_COTA_CANCEL:Ljava/lang/String; = "android.server.HTCCOTA.COTA_CANCEL"

.field public static final ACTION_COTA_CONFIRM_INSTALL:Ljava/lang/String; = "android.server.HTCCOTA.CONFIRM_INSTALL"

.field public static final ACTION_COTA_DOWNLOAD_FAIL:Ljava/lang/String; = "android.server.HTCCOTA.DOWNLOAD_FAIL"

.field public static final ACTION_COTA_DOWNLOAD_PROGRESS:Ljava/lang/String; = "android.server.HTCCOTA.SHOW_DOWNLOAD_PROGRESS"

.field public static final ACTION_COTA_EXTRACT_FAIL:Ljava/lang/String; = "android.server.HTCCOTA.EXTRACT_FAIL"

.field public static final ACTION_COTA_UPDATE:Ljava/lang/String; = "android.server.HTCCOTA.COTA_UPDATE"

.field public static final ACTION_DOWNLOAD_CHECK:Ljava/lang/String; = "com.android.updater.DOWNLOAD_CHECK"

.field public static final ACTION_DOWNLOAD_PROGRESS:Ljava/lang/String; = "com.android.updater.FOTA_DOWNLOAD_PROGRESS"

.field private static final ACTION_FOTA_EVENT:Ljava/lang/String; = "android.server.checkin.FOTA_EVENT"

.field public static final ACU_VAR_CANCEL:Ljava/lang/String; = "cancel"

.field public static final ACU_VAR_ERROR:Ljava/lang/String; = "ErrCode"

.field public static final ACU_VAR_JSON_OBJECT:Ljava/lang/String; = "jsonObject"

.field public static final ACU_VAR_SHOW:Ljava/lang/String; = "show"

.field public static final ACU_VAR_SUCCESS:Ljava/lang/String; = "success"

.field public static final ACU_VAR_TYPE:Ljava/lang/String; = "NotifyType"

.field public static final COTA_VAR_DATA:Ljava/lang/String; = "Data"

.field public static final COTA_VAR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COTA_VAR_ERROR:Ljava/lang/String; = "ErrCode"

.field public static final COTA_VAR_UNZIP_FILE_SIZE:Ljava/lang/String; = "unZipFileSize"

.field public static final COTA_VAR_ZIP_FILE_SIZE:Ljava/lang/String; = "zipFileSize"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterReceiver"

.field public static final VAR_IS_FOTA:Ljava/lang/String; = "isFOTA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 850
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/UpdaterReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->checkCheckinStatus(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private acuJsonParser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v0, parserIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 637
    const-class v1, Lcom/android/updater/service/AcuParserService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 639
    return-void
.end method

.method private acuNotifyInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 657
    const-string v1, "NotifyType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, typeString:Ljava/lang/String;
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    .line 662
    invoke-static {p1, p2}, Lcom/android/updater/util/NotificationUtil;->notifyAcuInstall(Landroid/content/Context;Landroid/content/Intent;)V

    .line 700
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-static {p1, v2}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    .line 666
    invoke-static {p1, v2}, Lcom/android/updater/util/NotificationUtil;->cancelAcuNotification(Landroid/content/Context;Z)V

    .line 668
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->notifyAcuSuccess(Landroid/content/Context;)V

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private acuUpdateFail(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 706
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->getTriggerFromIndividualFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    const-string v2, ""

    invoke-static {p1, v3, v2}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {p1, v3}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    .line 713
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v0, alertIntent:Landroid/content/Intent;
    const-string v2, "ErrCode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 717
    .local v1, errorCode:I
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 719
    sparse-switch v1, :sswitch_data_0

    .line 736
    :goto_1
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 721
    :sswitch_0
    const-string v2, "alert_type"

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 724
    :sswitch_1
    const-string v2, "alert_type"

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 727
    :sswitch_2
    const-string v2, "alert_type"

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 730
    :sswitch_3
    const-string v2, "alert_type"

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 733
    :sswitch_4
    const-string v2, "alert_type"

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 719
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_4
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method private checkAcuConfirmStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/service/UpdaterCheckIntranetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 646
    .local v0, checkIntranetServiceIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 647
    const-string v1, "isFOTA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 648
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 650
    return-void
.end method

.method private checkCheckinStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 349
    const-string v7, "errno"

    const/16 v8, 0x3e7

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 350
    .local v1, checkinErrorCode:I
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v2

    .line 354
    .local v2, checkinStatus:I
    if-ne v2, v9, :cond_3

    .line 355
    if-eq v1, v10, :cond_0

    if-eq v1, v11, :cond_0

    if-eq v1, v9, :cond_0

    const/4 v7, 0x4

    if-eq v1, v7, :cond_0

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    const/16 v7, 0x8

    if-ne v1, v7, :cond_3

    .line 358
    :cond_0
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v5

    .line 359
    .local v5, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    invoke-static {p1, v5}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v3

    .line 360
    .local v3, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-eqz v3, :cond_3

    iget v7, v3, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    new-instance v6, Ljava/io/File;

    iget-object v7, v3, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v6, updateFile:Ljava/io/File;
    iget-object v7, v3, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    const-string v8, "/cache/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 363
    .local v4, isCacheFile:Z
    if-nez v4, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 364
    :cond_1
    invoke-static {p1, v5, v3, v4}, Lcom/android/updater/util/UpdaterUtil;->verifyExistFOTAPackage(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;Lcom/android/updater/util/UpdaterUtil$DownloadInfo;Z)V

    .line 433
    .end local v3           #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v4           #isCacheFile:Z
    .end local v5           #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    .end local v6           #updateFile:Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 371
    :cond_3
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 372
    if-eqz v1, :cond_2

    .line 376
    if-eq v2, v10, :cond_2

    .line 379
    if-eq v2, v9, :cond_4

    .line 381
    const/4 v7, 0x7

    if-ne v1, v7, :cond_2

    .line 386
    :cond_4
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, alertIntent:Landroid/content/Intent;
    packed-switch v1, :pswitch_data_0

    .line 429
    :goto_1
    if-eqz v0, :cond_2

    .line 430
    const/high16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v7, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v0       #alertIntent:Landroid/content/Intent;
    const-string v7, "alert_type"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 400
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v7, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v0       #alertIntent:Landroid/content/Intent;
    const-string v7, "alert_type"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 405
    :pswitch_2
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->hideDownloadTask(Landroid/content/Context;)V

    .line 407
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v7, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v0       #alertIntent:Landroid/content/Intent;
    const-string v7, "error"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v7, "error"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CID not match"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 412
    const-string v7, "alert_type"

    const/16 v8, 0x21

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    :goto_2
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->prepareDownloadExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 414
    :cond_5
    const-string v7, "alert_type"

    const/16 v8, 0x9

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 421
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v7, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v0       #alertIntent:Landroid/content/Intent;
    const-string v7, "alert_type"

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkConfirmStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/android/updater/db/COTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/service/UpdaterCheckIntranetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, checkIntranetServiceIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 443
    const-string v1, "isFOTA"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 446
    return-void
.end method

.method private checkCotaConfirmStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 757
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v0

    .line 758
    .local v0, checkinStatus:I
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 761
    if-ne v0, v9, :cond_0

    .line 802
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelCotaNotification(Landroid/content/Context;)V

    .line 766
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->isInPhoneCall(Landroid/content/Context;)Z

    move-result v4

    .line 769
    .local v4, isInPhoneCall:Z
    const-string v5, "android.server.HTCCOTA.COTA_UPDATE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.android.updater"

    const-string v8, "com.android.updater.UpdaterReceiver"

    invoke-direct {v1, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .local v1, comp:Landroid/content/ComponentName;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 773
    const-string v5, "from_notify"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 776
    .local v3, isFromNotify:Z
    if-eq v0, v6, :cond_2

    if-nez v3, :cond_2

    .line 777
    if-eqz v4, :cond_1

    .line 778
    invoke-static {p1, p2, v7}, Lcom/android/updater/util/NotificationUtil;->notifyCotaDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 791
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 792
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {v2, v7, v6}, Lcom/android/updater/db/COTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 793
    invoke-static {v2, v6, v7}, Lcom/android/updater/db/COTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 794
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v9, v5}, Lcom/android/updater/db/COTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 795
    const/4 v5, 0x5

    const-string v6, "description"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/android/updater/db/COTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 796
    const/4 v5, 0x3

    const-string v6, "zipFileSize"

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/android/updater/db/COTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 797
    const/4 v5, 0x4

    const-string v6, "unZipFileSize"

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/android/updater/db/COTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    goto :goto_0

    .line 780
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_1
    invoke-static {p1, p2, v6}, Lcom/android/updater/util/NotificationUtil;->notifyCotaDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_1

    .line 784
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    move v5, v6

    :goto_2
    invoke-static {p1, p2, v5}, Lcom/android/updater/util/NotificationUtil;->notifyCotaDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 785
    const-class v5, Lcom/android/updater/ui/CotaConfirmActivity;

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 786
    const-string v5, "from_notify"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 787
    const/high16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    move v5, v7

    .line 784
    goto :goto_2
.end method

.method private checkDownloadStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 502
    new-instance v0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;-><init>(Lcom/android/updater/UpdaterReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 503
    .local v0, DownloadStatusCheckThread:Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;
    invoke-virtual {v0}, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->start()V

    .line 505
    return-void
.end method

.method private checkInstallStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 254
    const-string v17, "generic_error"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 255
    .local v9, genericError:Z
    const-string v17, "storage_error"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 256
    .local v15, storageError:Z
    const-string v17, "apn_error"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 257
    .local v4, apnError:Z
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v5

    .line 258
    .local v5, checkinStatus:I
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 260
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/updater/util/UpdaterUtil;->hideDownloadTask(Landroid/content/Context;)V

    .line 266
    invoke-static/range {p1 .. p1}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/android/updater/util/UpdaterUtil;->isInPhoneCall(Landroid/content/Context;)Z

    move-result v11

    .line 269
    .local v11, isInPhoneCall:Z
    const-string v17, "from_notify"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 274
    .local v10, isFromNotify:Z
    const/4 v3, 0x0

    .line 275
    .local v3, alertIntent:Landroid/content/Intent;
    if-nez v9, :cond_2

    if-nez v15, :cond_2

    if-eqz v4, :cond_9

    .line 277
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/updater/util/UpdaterUtil;->prepareDownloadExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    .line 278
    .local v7, downloadExtras:Landroid/os/Bundle;
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v8, downloadIntent:Landroid/content/Intent;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v8, v1}, Lcom/android/updater/util/NotificationUtil;->notifyDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 288
    new-instance v3, Landroid/content/Intent;

    .end local v3           #alertIntent:Landroid/content/Intent;
    const-string v17, "com.android.updater.FOTA_ALERT"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v3       #alertIntent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    if-eqz v9, :cond_4

    .line 292
    const-string v17, "alert_type"

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    .end local v7           #downloadExtras:Landroid/os/Bundle;
    .end local v8           #downloadIntent:Landroid/content/Intent;
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 342
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    .restart local v7       #downloadExtras:Landroid/os/Bundle;
    .restart local v8       #downloadIntent:Landroid/content/Intent;
    :cond_4
    if-eqz v15, :cond_8

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 301
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v14

    .line 302
    .local v14, sizeMB:F
    const/high16 v17, 0x4480

    mul-float v17, v17, v14

    const/high16 v18, 0x4480

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v12, v0

    .line 303
    .local v12, promptSize:J
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v12, v13, v0}, Lcom/android/updater/util/UpdaterUtil;->checkStorageStatus(JI)I

    move-result v16

    .line 306
    .local v16, storageStatus:I
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 307
    const-string v17, "alert_type"

    const/16 v18, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 308
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 309
    const-string v17, "alert_type"

    const/16 v18, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 312
    :cond_6
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 313
    const-string v17, "alert_type"

    const/16 v18, 0x26

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 317
    :cond_7
    const-string v17, "alert_type"

    const/16 v18, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 321
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v12           #promptSize:J
    .end local v14           #sizeMB:F
    .end local v16           #storageStatus:I
    :cond_8
    const-string v17, "alert_type"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 327
    .end local v7           #downloadExtras:Landroid/os/Bundle;
    .end local v8           #downloadIntent:Landroid/content/Intent;
    :cond_9
    if-nez v11, :cond_a

    if-eqz v10, :cond_c

    .line 328
    :cond_a
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/updater/util/NotificationUtil;->notifyUpdate(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 333
    :goto_2
    if-nez v10, :cond_b

    if-nez v11, :cond_3

    .line 335
    :cond_b
    const-string v17, "from_notify"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 336
    const-class v17, Lcom/android/updater/service/InstallCheckService;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 330
    :cond_c
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/updater/util/NotificationUtil;->notifyUpdate(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2
.end method

.method private cotaDownloadFail(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 812
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, alertIntent:Landroid/content/Intent;
    const-string v2, "ErrCode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 816
    .local v1, errorCode:I
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelCotaNotification(Landroid/content/Context;)V

    .line 818
    const-string v2, "alert_type"

    const/16 v3, 0x2b

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 821
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 822
    return-void
.end method

.method private cotaExtractFail(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 827
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, alertIntent:Landroid/content/Intent;
    const-string v2, "ErrCode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 831
    .local v1, errorCode:I
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelCotaNotification(Landroid/content/Context;)V

    .line 833
    const-string v2, "alert_type"

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 836
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 837
    return-void
.end method

.method private displayAcuProgressActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 742
    const-class v0, Lcom/android/updater/ui/AcuProgressActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 743
    const/high16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 745
    return-void
.end method

.method private displayCotaInstallDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v0, alertIntent:Landroid/content/Intent;
    const-string v1, "alert_type"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 843
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/updater/util/NotificationUtil;->notifyCotaInstall(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 844
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 845
    return-void
.end method

.method private displayCotaProgressActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 805
    const-class v0, Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 806
    const/high16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 807
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 808
    return-void
.end method

.method private displayUpdaterProgressActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 572
    const-class v0, Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 573
    const/high16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    return-void
.end method

.method private removeDetailTable(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 749
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Lcom/android/updater/db/FOTADetail;->removeAllApkDetail(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 750
    return-void
.end method

.method private showUpToDate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 588
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {v2, v7, v7}, Lcom/android/updater/db/COTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/cwtemp/cwpkg.zip"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/cwtemp/cw.prop"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/cwtemp/cw.crc"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 592
    new-instance v4, Lcom/android/updater/util/CotaVerifier;

    invoke-direct {v4}, Lcom/android/updater/util/CotaVerifier;-><init>()V

    .line 593
    .local v4, verifier:Lcom/android/updater/util/CotaVerifier;
    invoke-virtual {v4}, Lcom/android/updater/util/CotaVerifier;->isChecksumSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.server.HTCCOTA.CONFIRM_INSTALL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 629
    .end local v4           #verifier:Lcom/android/updater/util/CotaVerifier;
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->getTriggerFromIndividualFlag(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 605
    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {p1, v5, v6}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v1

    .line 611
    .local v1, checkinStatus:I
    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_4

    .line 617
    :cond_3
    const-string v5, "TriggerType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, triggerType:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "TriggerType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 624
    .end local v3           #triggerType:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, alertIntent:Landroid/content/Intent;
    const-string v5, "alert_type"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 628
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private triggerACUIndividualCheck(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 204
    const-string v7, "package_name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "update_type"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, updateType:Ljava/lang/String;
    const-string v7, "show_download_dialog"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 212
    .local v3, needShowDownload:Z
    if-eqz v6, :cond_3

    const-string v7, "individual_appupdate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    invoke-static {p1, v1, v5}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    .line 215
    invoke-static {p1, v3}, Lcom/android/updater/util/UpdaterUtil;->setShowDownloadDialogFlag(Landroid/content/Context;Z)V

    .line 218
    const/4 v4, 0x0

    .line 220
    .local v4, network:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 225
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_4

    .line 227
    .local v1, isConnectionFail:Z
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    const/4 v1, 0x0

    .line 231
    :cond_1
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p1}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p1}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 232
    const/4 v1, 0x1

    .line 235
    :cond_2
    if-nez v1, :cond_5

    .line 236
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.server.HTCcheckin.CHECKIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, it:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    .end local v1           #isConnectionFail:Z
    .end local v2           #it:Landroid/content/Intent;
    .end local v4           #network:Landroid/net/NetworkInfo;
    :cond_3
    :goto_2
    return-void

    .line 221
    .restart local v4       #network:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "UpdaterAPK | UpdaterReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t get network status! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v4, 0x0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    move v1, v8

    .line 225
    goto :goto_1

    .line 241
    .restart local v1       #isConnectionFail:Z
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.updater.INDIVIDUAL_NO_NETWORK"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v2       #it:Landroid/content/Intent;
    const-string v7, "package_name"

    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->getIndividualPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    const-string v7, ""

    invoke-static {p1, v8, v7}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v3, startInitIntent:Landroid/content/Intent;
    const-class v4, Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    .end local v3           #startInitIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v1

    .line 137
    .local v1, isFOTAEnabled:Z
    if-eqz v1, :cond_0

    .line 138
    const-string v4, "com.android.updater.DOWNLOAD_CHECK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->checkDownloadStatus(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_2
    const-string v4, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterReceiver;->removeDetailTable(Landroid/content/Context;)V

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->checkConfirmStatus(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v4, "android.server.checkin.FOTA_READY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->checkInstallStatus(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_4
    const-string v4, "android.server.checkin.FOTA_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    new-instance v2, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;-><init>(Lcom/android/updater/UpdaterReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    .local v2, mGetCheckinStatusThread:Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;
    invoke-virtual {v2}, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->start()V

    goto :goto_0

    .line 152
    .end local v2           #mGetCheckinStatusThread:Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;
    :cond_5
    const-string v4, "com.android.updater.FOTA_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->displayUpdaterProgressActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_6
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v5}, Lcom/android/updater/util/UpdaterUtil;->removeUpdatePackage(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 160
    :cond_7
    const-string v4, "android.server.checkin.APP_CANCEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->showUpToDate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    :cond_8
    const-string v4, "android.server.checkin.APP_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->acuJsonParser(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_9
    const-string v4, "com.android.updater.ACU_CONFIRM_DOWNLOAD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->checkAcuConfirmStatus(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 166
    :cond_a
    const-string v4, "android.server.checkin.APP_NOTIFY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->acuNotifyInstall(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 168
    :cond_b
    const-string v4, "android.server.checkin.APP_DOWNLOAD_TRIGGERED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 169
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 170
    :cond_c
    const-string v4, "android.server.checkin.APP_NOTIFY_DLPROGRESS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->displayAcuProgressActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 172
    :cond_d
    const-string v4, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->acuUpdateFail(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 177
    :cond_e
    const-string v4, "android.server.HTCCOTA.COTA_CANCEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->showUpToDate(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    :cond_f
    const-string v4, "android.server.HTCCOTA.COTA_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 180
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterReceiver;->removeDetailTable(Landroid/content/Context;)V

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->checkCotaConfirmStatus(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 182
    :cond_10
    const-string v4, "android.server.HTCCOTA.SHOW_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->displayCotaProgressActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :cond_11
    const-string v4, "android.server.HTCCOTA.DOWNLOAD_FAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->cotaDownloadFail(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    :cond_12
    const-string v4, "android.server.HTCCOTA.EXTRACT_FAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->cotaExtractFail(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 188
    :cond_13
    const-string v4, "android.server.HTCCOTA.CONFIRM_INSTALL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 189
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterReceiver;->displayCotaInstallDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 193
    :cond_14
    const-string v4, "com.android.updater.FOTA_SETTING_INDIVIDUAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterReceiver;->triggerACUIndividualCheck(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
