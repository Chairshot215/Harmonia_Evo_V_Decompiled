.class public Lcom/android/updater/ui/UpdaterAlertActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "UpdaterAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;
    }
.end annotation


# static fields
.field public static final ACTION_ALERT:Ljava/lang/String; = "com.android.updater.FOTA_ALERT"

.field public static final ACTION_APP_RUNCANCEL:Ljava/lang/String; = "android.server.checkin.APP_RUNCANCEL"

.field private static final ACTION_APP_RUNUPDATE:Ljava/lang/String; = "android.server.checkin.APP_RUNUPDATE"

.field private static final ACTION_COTA_CANCEL_EXTRACT:Ljava/lang/String; = "android.server.HTCCOTA.CANCEL_EXTRACT"

.field private static final ACTION_COTA_TRIGGER_DOWNLOAD:Ljava/lang/String; = "android.server.HTCCOTA.TRIGGER_DOWNLOAD"

.field private static final ACTION_COTA_TRIGGER_INSTALL:Ljava/lang/String; = "android.server.HTCCOTA.TRIGGER_INSTALL"

.field private static final ACTION_FOTABLOCK_OMADM:Ljava/lang/String; = "android.server.checkin.FOTABLOCK_OMADM"

.field public static final ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field public static final ALERT_TYPE_ACU_CACHE_FULL:I = 0x1b

.field public static final ALERT_TYPE_ACU_CANCEL_CONFIRM:I = 0x18

.field public static final ALERT_TYPE_ACU_DOWNLOAD_FAILED:I = 0x1c

.field public static final ALERT_TYPE_ACU_DOWNLOAD_WARNING:I = 0x19

.field public static final ALERT_TYPE_ACU_DOWNLOAD_WIFI:I = 0x1a

.field public static final ALERT_TYPE_ACU_FILE_CORRUPTED:I = 0x1d

.field public static final ALERT_TYPE_ACU_INSTALLATION_FAILED:I = 0x1f

.field public static final ALERT_TYPE_ACU_STORAGE_FULL:I = 0x1e

.field public static final ALERT_TYPE_ACU_SUCCESS_FINISH:I = 0x20

.field public static final ALERT_TYPE_AUTHENTICATION_ERROR:I = 0x23

.field public static final ALERT_TYPE_BATTERY_LOW:I = 0x10

.field public static final ALERT_TYPE_CANCEL_DOWNLOAD:I = 0x6

.field public static final ALERT_TYPE_CANCEL_INSTALL:I = 0x8

.field public static final ALERT_TYPE_CID_NOT_MATCH:I = 0x21

.field public static final ALERT_TYPE_CONNECTION_FAILED:I = 0x1

.field private static final ALERT_TYPE_COTA_CANCEL_INSTALL:I = 0x2d

.field public static final ALERT_TYPE_COTA_CONFIRM_INSTALL:I = 0x2a

.field public static final ALERT_TYPE_COTA_DOWNLOAD_WARNING:I = 0x28

.field public static final ALERT_TYPE_COTA_DOWNLOAD_WIFI:I = 0x29

.field public static final ALERT_TYPE_COTA_FILE_CORRUPTED:I = 0x2c

.field public static final ALERT_TYPE_COTA_INSTALLATION_FAILED:I = 0x2b

.field public static final ALERT_TYPE_COTA_STORAGE_FULL:I = 0x27

.field public static final ALERT_TYPE_DOWNLOAD_PROGRESS:I = 0x3

.field public static final ALERT_TYPE_DOWNLOAD_WARNING:I = 0x4

.field public static final ALERT_TYPE_DOWNLOAD_WIFI:I = 0x5

.field public static final ALERT_TYPE_INSTALL_LATER:I = 0x7

.field public static final ALERT_TYPE_INSTALL_NO_FILE:I = 0x17

.field public static final ALERT_TYPE_INSTALL_SD_NO_CARD:I = 0x15

.field public static final ALERT_TYPE_INSTALL_SD_SHARED:I = 0x16

.field public static final ALERT_TYPE_KEY_INVALID:I = 0x24

.field public static final ALERT_TYPE_KEY_SERVER_ERROR:I = 0x22

.field public static final ALERT_TYPE_OUTSIDE_INTRANET_ERROR:I = 0x25

.field public static final ALERT_TYPE_RESTART:I = 0x2e

.field public static final ALERT_TYPE_SD_CARD_READ_ONLY:I = 0x26

.field public static final ALERT_TYPE_SD_ERROR:I = 0xc

.field public static final ALERT_TYPE_SD_NO_CARD:I = 0xa

.field public static final ALERT_TYPE_SD_NO_SPACE:I = 0xb

.field public static final ALERT_TYPE_SD_SHARED:I = 0xd

.field public static final ALERT_TYPE_STORAGE_FULL:I = 0x14

.field public static final ALERT_TYPE_UPDATE_CORRUPT:I = 0x9

.field public static final ALERT_TYPE_UP_TO_DATE:I = 0x2

.field public static final DOWNLOAD_RESTRICTION:Ljava/lang/String; = "downloadRestriction"

.field private static final LOG:Z = false

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "notifyTitle"

.field public static final NULL_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterAlertActivity"

.field private static final VAR_COTA_DATA:Ljava/lang/String; = "Data"

.field private static final VAR_COTA_DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final VAR_STATUS_CODE:Ljava/lang/String; = "statusCode"


# instance fields
.field private final COTA_VAR_NOTI:Ljava/lang/String;

.field private dismissAfterClick:Z

.field private mAlertDrawable:Landroid/graphics/drawable/Drawable;

.field private mAlertType:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private mMessageId:I

.field private mNegativeButtonId:I

.field private mPositiveButtonId:I

.field private mTitleId:I

.field private mUpdateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 100
    const-string v0, "NotifyCaption"

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->COTA_VAR_NOTI:Ljava/lang/String;

    .line 1332
    return-void
.end method

.method private acuConfirmDownload()V
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1037
    .local v0, acuConfirmIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1038
    const-class v1, Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1039
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 1043
    return-void
.end method

.method private acuStartDownload()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1095
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v4, 0x12

    invoke-static {v3, v4, v5}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1108
    const v3, 0x7f06004d

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1109
    invoke-static {p0, v5}, Lcom/android/updater/util/NotificationUtil;->cancelAcuNotification(Landroid/content/Context;Z)V

    .line 1111
    const v3, 0x7f06005e

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, notificationTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "downloadRestriction"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, downloadRestriction:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.server.checkin.APP_RUNUPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v2, startDownloadIntent:Landroid/content/Intent;
    const-string v3, "notifyTitle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    const-string v3, "downloadRestriction"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0, v2}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1119
    return-void
.end method

.method private cancelAcuConfirm()V
    .locals 4

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->insertAcuBlackListData()V

    .line 1231
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1233
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/updater/util/NotificationUtil;->cancelAcuNotification(Landroid/content/Context;Z)V

    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.APP_RUNCANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v0, cancelIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1237
    return-void
.end method

.method private cancelInstallation()V
    .locals 7

    .prologue
    .line 1049
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "updateFile"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1050
    .local v3, updateFilePath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1052
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v2, updateFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v2           #updateFile:Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.server.checkin.FOTA_CANCEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "name"

    const-string v5, "android.server.HTCcheckin.CHECKIN"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1063
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 1064
    return-void

    .line 1054
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1055
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | UpdaterAlertActivity"

    const-string v5, "fail to delete canceled installation file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.DOWNLOAD_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1001
    return-void
.end method

.method private confirmDownload()V
    .locals 4

    .prologue
    .line 1005
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, alertIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v2, "com.android.updater.DOWNLOAD_CHECK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v0       #alertIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1012
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDAUserTrial()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    const-string v2, "wifiOnly"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    :goto_0
    const-string v2, "message"

    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1020
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1032
    .end local v0           #alertIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 1015
    .restart local v0       #alertIntent:Landroid/content/Intent;
    :cond_0
    const-string v2, "wifiOnly"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1024
    .end local v0           #alertIntent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v1, confirmIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/updater/ui/ConfirmActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1027
    iget-object v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1028
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private cotaCancelExtract()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.HTCCOTA.CANCEL_EXTRACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/android/updater/db/COTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1318
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelCotaNotification(Landroid/content/Context;)V

    .line 1319
    return-void
.end method

.method private cotaConfirmDownload()V
    .locals 4

    .prologue
    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.server.HTCCOTA.COTA_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v0, cotaConfirmIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/updater/ui/CotaConfirmActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1272
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1273
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1274
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1275
    const-string v2, "zipFileSize"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    const-string v2, "unZipFileSize"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string v2, "Description"

    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 1281
    return-void
.end method

.method private cotaStartDownload()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1284
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 1286
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.server.HTCCOTA.TRIGGER_DOWNLOAD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v1, startDownloadIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1288
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1289
    const-string v3, "wifiOnly"

    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5, v7}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1290
    const-string v3, "NotifyCaption"

    const v4, 0x7f06008a

    invoke-virtual {p0, v4}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1292
    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1295
    const v3, 0x7f06004d

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1298
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelCotaNotification(Landroid/content/Context;)V

    .line 1299
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6, v6}, Lcom/android/updater/db/COTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1303
    new-instance v0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p0, p0, v3}, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;-><init>(Lcom/android/updater/ui/UpdaterAlertActivity;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 1304
    .local v0, mSetFOTAStatusThread:Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;
    invoke-virtual {v0}, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->start()V

    .line 1308
    return-void
.end method

.method private cotaTriggerInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1322
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/android/updater/db/COTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.HTCCOTA.TRIGGER_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1325
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelCotaNotification(Landroid/content/Context;)V

    .line 1327
    return-void
.end method

.method private getMessage(I)Ljava/lang/String;
    .locals 12
    .parameter "messageId"

    .prologue
    const v11, 0x7f060031

    const/16 v8, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1161
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1163
    .local v0, cr:Landroid/content/ContentResolver;
    if-eq p1, v11, :cond_0

    const v6, 0x7f06007d

    if-ne p1, v6, :cond_5

    .line 1164
    :cond_0
    invoke-static {v0, v8}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v4

    .line 1165
    .local v4, promptSize:F
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, p1, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1171
    .end local v4           #promptSize:F
    .local v3, message:Ljava/lang/String;
    :goto_0
    invoke-static {v0, v9, v9}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1174
    const v6, 0x7f060029

    if-ne p1, v6, :cond_6

    .line 1175
    const p1, 0x7f06002a

    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    :cond_1
    :goto_1
    const v6, 0x7f060050

    if-ne p1, v6, :cond_2

    .line 1190
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->isLargeStorageSize()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1191
    new-array v6, v9, [Ljava/lang/Object;

    const-wide/16 v7, 0x32

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, p1, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1201
    :cond_2
    :goto_2
    const v6, 0x7f06008f

    if-ne p1, v6, :cond_4

    .line 1202
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1203
    .local v4, promptSize:I
    const/16 v6, 0x400

    if-ge v4, v6, :cond_3

    .line 1204
    const/16 v4, 0x400

    .line 1210
    :cond_3
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, mBString:Ljava/lang/String;
    const v6, 0x7f060063

    invoke-virtual {p0, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, kBString:Ljava/lang/String;
    const/high16 v6, 0x10

    if-lt v4, v6, :cond_9

    .line 1213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/updater/util/UpdaterUtil;->byteToMBString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1217
    .local v5, sizeString:Ljava/lang/String;
    :goto_3
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v10

    invoke-virtual {p0, p1, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .end local v1           #kBString:Ljava/lang/String;
    .end local v2           #mBString:Ljava/lang/String;
    .end local v4           #promptSize:I
    .end local v5           #sizeString:Ljava/lang/String;
    :cond_4
    return-object v3

    .line 1167
    .end local v3           #message:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_0

    .line 1177
    :cond_6
    if-ne p1, v11, :cond_7

    .line 1178
    invoke-static {v0, v8}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v4

    .line 1179
    .local v4, promptSize:F
    const p1, 0x7f060032

    .line 1180
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, p1, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1181
    goto :goto_1

    .end local v4           #promptSize:F
    :cond_7
    const v6, 0x7f060034

    if-ne p1, v6, :cond_1

    .line 1182
    const p1, 0x7f060035

    .line 1183
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1193
    :cond_8
    new-array v6, v9, [Ljava/lang/Object;

    const-wide/16 v7, 0x19

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, p1, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1215
    .restart local v1       #kBString:Ljava/lang/String;
    .restart local v2       #mBString:Ljava/lang/String;
    .local v4, promptSize:I
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v7, v4, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #sizeString:Ljava/lang/String;
    goto :goto_3
.end method

.method private insertAcuBlackListData()V
    .locals 5

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/updater/db/FOTADetail;->isOptional(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1264
    :cond_0
    return-void

    .line 1258
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1259
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/updater/db/FOTADetail;->getAllApkUrl(Landroid/content/ContentResolver;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1260
    .local v0, apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1261
    .local v3, tempString:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/updater/db/FOTABlackList;->insertBlackListData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertFOTABlackListData()V
    .locals 4

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1247
    :cond_0
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, blackListUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/updater/db/FOTABlackList;->insertBlackListData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareFOTADownloadIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 1123
    const-string v5, "backup_action_string"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, action:Ljava/lang/String;
    const-string v5, "backup_uri_string"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1125
    .local v4, uri:Ljava/lang/String;
    const-string v5, "download_sdcard"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1127
    .local v2, downloadSDCard:Z
    new-instance v1, Landroid/content/Intent;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1128
    .local v1, downloadIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1131
    const-string v5, "message"

    const v6, 0x7f060005

    invoke-virtual {p0, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1134
    if-nez v2, :cond_1

    .line 1136
    const-string v5, "promptSize"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1146
    :cond_0
    :goto_0
    const/high16 v5, 0x4000

    invoke-static {p0, v7, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    return-object v5

    .line 1138
    :cond_1
    const-string v5, "checkFile"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, updateFile:Ljava/lang/String;
    if-eqz v3, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1142
    const-string v5, "checkFile"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDataFeeWarning(I)V
    .locals 3
    .parameter "alertType"

    .prologue
    .line 133
    const-string v0, "UpdaterAPK | UpdaterAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDataFeeWarning(). This is TMOUS case, the alert type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->startDownload()V

    .line 136
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->dismiss()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->acuStartDownload()V

    .line 139
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->dismiss()V

    goto :goto_0
.end method

.method private setupButtons(Landroid/view/Window;)V
    .locals 10
    .parameter "window"

    .prologue
    .line 223
    iget-object v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 224
    .local v1, buttonPositive:Landroid/widget/Button;
    iget v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 228
    .local v0, buttonNegative:Landroid/widget/Button;
    iget v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 229
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    const v8, 0x20200b7

    invoke-virtual {p1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 231
    .local v3, padding2:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :goto_0
    iget v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/updater/util/UpdaterUtil;->getWeight(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)F

    move-result v7

    .line 243
    .local v7, weight:F
    const v8, 0x20200b1

    invoke-virtual {p1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    .local v4, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    const v8, 0x20200b8

    invoke-virtual {p1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 250
    .local v6, rightSpacer:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 251
    .local v5, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 252
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .end local v4           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #weight:F
    :goto_1
    return-void

    .line 233
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #padding2:Landroid/view/View;
    .end local v6           #rightSpacer:Landroid/view/View;
    :cond_0
    iget v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    const v8, 0x20200b7

    invoke-virtual {p1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 236
    .restart local v3       #padding2:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_1
    const v8, 0x20200b1

    invoke-virtual {p1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 257
    .restart local v2       #leftSpacer:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 259
    const v8, 0x20200b8

    invoke-virtual {p1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 260
    .restart local v6       #rightSpacer:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupContent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const v6, 0x7f06002e

    const v5, 0x7f06001a

    const v2, 0x7f060025

    const/4 v4, -0x1

    const v3, 0x7f060024

    .line 265
    const-string v1, "alert_type"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    .line 268
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    packed-switch v1, :pswitch_data_0

    .line 678
    :goto_0
    :pswitch_0
    return-void

    .line 270
    :pswitch_1
    const v1, 0x20c009e

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 275
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const v1, 0x7f060071

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 285
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto :goto_0

    .line 280
    :cond_0
    const v1, 0x20c009f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_1

    .line 288
    :pswitch_2
    const v1, 0x7f06001b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 289
    const v1, 0x7f06001c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 290
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 292
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto :goto_0

    .line 295
    :pswitch_3
    const v1, 0x7f060006

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 296
    const v1, 0x7f06001e

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 297
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 299
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto :goto_0

    .line 305
    :pswitch_4
    const v1, 0x20c009c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 306
    const v1, 0x7f060026

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 307
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 308
    const v1, 0x7f060016

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 309
    const v1, 0x7f060017

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto :goto_0

    .line 314
    :pswitch_5
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    const v1, 0x7f060082

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 316
    const v1, 0x7f060084

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 322
    :goto_2
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 323
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 324
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto :goto_0

    .line 318
    :cond_1
    const v1, 0x7f060027

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 319
    const v1, 0x7f060028

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_2

    .line 331
    :pswitch_6
    const/4 v0, 0x0

    .line 332
    .local v0, isOptional:Z
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/updater/db/FOTADetail;->isOptional(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 340
    :cond_2
    :goto_3
    if-eqz v0, :cond_4

    .line 341
    const v1, 0x7f060088

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 342
    const v1, 0x7f060089

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 348
    :goto_4
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 349
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 350
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "optional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "optional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 344
    :cond_4
    const v1, 0x7f060004

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 345
    const v1, 0x7f060029

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_4

    .line 353
    .end local v0           #isOptional:Z
    :pswitch_7
    const v1, 0x7f060039

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 354
    const v1, 0x7f06003a

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 355
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 356
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 357
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 361
    :pswitch_8
    const v1, 0x7f06003b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 362
    const v1, 0x7f06003c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 363
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    const v1, 0x7f060016

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 365
    const v1, 0x7f060017

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 370
    :pswitch_9
    const v1, 0x7f06006e

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 371
    const v1, 0x7f06006f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 372
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 373
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 374
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 379
    :pswitch_a
    const v1, 0x7f06002b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 380
    const v1, 0x7f06002c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 381
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    const v1, 0x7f06002d

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 383
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 389
    :pswitch_b
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 390
    const v1, 0x7f06007b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 391
    const v1, 0x7f06007c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 399
    :goto_5
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 401
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 393
    :cond_5
    iput v6, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 394
    const v1, 0x7f06002f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_5

    .line 405
    :pswitch_c
    const v1, 0x7f06004f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 409
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 410
    const v1, 0x7f06007d

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 416
    :goto_6
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 417
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 418
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 412
    :cond_6
    const v1, 0x7f060031

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_6

    .line 421
    :pswitch_d
    const v1, 0x7f060033

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 425
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    const v1, 0x7f06007e

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 432
    :goto_7
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 434
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 428
    :cond_7
    const v1, 0x7f060034

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_7

    .line 440
    :pswitch_e
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 441
    const v1, 0x7f06007b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 442
    const v1, 0x7f06007c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 449
    :goto_8
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 450
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 451
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 444
    :cond_8
    iput v6, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 445
    const v1, 0x7f060053

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_8

    .line 454
    :pswitch_f
    const v1, 0x7f06004e

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 455
    const v1, 0x7f060040

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 456
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 457
    const v1, 0x7f060039

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 462
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/updater/util/UpdaterUtil;->isForceUpdateIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 464
    :cond_9
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 466
    :cond_a
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 472
    :pswitch_10
    const v1, 0x7f06004f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 473
    const v1, 0x7f060050

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 474
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 475
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 479
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/updater/util/UpdaterUtil;->isForceUpdateIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 481
    :cond_b
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 483
    :cond_c
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 490
    :pswitch_11
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 491
    const v1, 0x7f06007b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 492
    const v1, 0x7f06007f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 499
    :goto_9
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 500
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 501
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 494
    :cond_d
    iput v6, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 495
    const v1, 0x7f060051

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_9

    .line 507
    :pswitch_12
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 508
    const v1, 0x7f06007b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 509
    const v1, 0x7f06007f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 516
    :goto_a
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 517
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 518
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 511
    :cond_e
    iput v6, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 512
    const v1, 0x7f060052

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_a

    .line 521
    :pswitch_13
    const v1, 0x7f060054

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 525
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 526
    const v1, 0x7f060080

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 532
    :goto_b
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 533
    const v1, 0x7f06002d

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 534
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 528
    :cond_f
    const v1, 0x7f060055

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_b

    .line 540
    :pswitch_14
    const v1, 0x7f060064

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 541
    const v1, 0x7f060065

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 542
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 544
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 547
    :pswitch_15
    const v1, 0x7f060066

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 548
    const v1, 0x7f060067

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 549
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 550
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 551
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 554
    :pswitch_16
    const v1, 0x7f060068

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 555
    const v1, 0x7f060069

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 556
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 557
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 558
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 561
    :pswitch_17
    const v1, 0x7f06004f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 562
    const v1, 0x7f06006a

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 563
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 565
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 569
    :pswitch_18
    const v1, 0x7f06006b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 570
    const v1, 0x7f06006c

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 571
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 572
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 573
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 576
    :pswitch_19
    const v1, 0x7f06005e

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 577
    const v1, 0x7f06006d

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 578
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 579
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 580
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 587
    :pswitch_1a
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 588
    const v1, 0x7f06007b

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 589
    const v1, 0x7f060081

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 596
    :goto_c
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 597
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 598
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 591
    :cond_10
    iput v6, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 592
    const v1, 0x7f060070

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    goto :goto_c

    .line 605
    :pswitch_1b
    const v1, 0x7f060072

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 606
    const v1, 0x7f060073

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 607
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 608
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 609
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 612
    :pswitch_1c
    const v1, 0x7f060072

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 613
    const v1, 0x7f060074

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 614
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 615
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 616
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 619
    :pswitch_1d
    const v1, 0x7f060072

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 620
    const v1, 0x7f060075

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 621
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 622
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 623
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 626
    :pswitch_1e
    const v1, 0x7f06000f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 627
    const v1, 0x7f060077

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 628
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 629
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 630
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 636
    :pswitch_1f
    const v1, 0x7f06004f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 637
    const v1, 0x7f06008f

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 638
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 639
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 640
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 643
    :pswitch_20
    const v1, 0x7f060027

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 644
    const v1, 0x7f060028

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 645
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 647
    iput v5, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 650
    :pswitch_21
    const v1, 0x7f060068

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 651
    const v1, 0x7f060090

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 652
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 653
    const v1, 0x7f06002d

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 654
    iput v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 657
    :pswitch_22
    const v1, 0x7f060091

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 658
    const v1, 0x7f060092

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 659
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 660
    iput v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 661
    const v1, 0x7f060087

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 667
    :pswitch_23
    const v1, 0x7f060095

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    .line 668
    const v1, 0x7f060096

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    .line 669
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 670
    const v1, 0x20c00c5

    iput v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    .line 671
    iput v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_9
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1a
        :pswitch_1f
        :pswitch_4
        :pswitch_20
        :pswitch_22
        :pswitch_18
        :pswitch_21
        :pswitch_8
        :pswitch_23
    .end packed-switch
.end method

.method private startDownload()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1069
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 1072
    sget-object v2, Lcom/android/updater/util/UpdaterUtil;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {p0, v2, v5}, Lcom/android/updater/util/UpdaterUtil;->removeUpdatePackage(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1074
    iget-object v2, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/updater/ui/UpdaterAlertActivity;->prepareFOTADownloadIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1075
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-direct {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->startFotaDownload(Landroid/app/PendingIntent;)V

    .line 1077
    const v2, 0x7f06004d

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1080
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 1085
    new-instance v0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;-><init>(Lcom/android/updater/ui/UpdaterAlertActivity;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 1086
    .local v0, mSetFOTAStatusThread:Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;
    invoke-virtual {v0}, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->start()V

    .line 1091
    return-void
.end method

.method private startFotaDownload(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "downloadIntent"

    .prologue
    .line 1150
    if-eqz p1, :cond_0

    .line 1152
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :cond_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    if-eqz v0, :cond_0

    .line 765
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->dismiss()V

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x80

    const/4 v9, 0x0

    .line 776
    new-instance v3, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, p0, p0, v7}, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;-><init>(Lcom/android/updater/ui/UpdaterAlertActivity;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 777
    .local v3, mSetFOTAStatusThread:Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;
    invoke-virtual {v3}, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->start()V

    .line 782
    const/4 v4, 0x0

    .line 783
    .local v4, nextAction:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v8, "position"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 786
    .local v2, installOption:I
    if-ne p2, v11, :cond_2

    .line 787
    iget v7, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    packed-switch v7, :pswitch_data_0

    .line 985
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.server.checkin.FOTABLOCK_OMADM"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .local v6, sendOmadmIntent:Landroid/content/Intent;
    const-string v7, "statusCode"

    iget v8, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    invoke-virtual {p0, v6}, Lcom/android/updater/ui/UpdaterAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 990
    if-eqz v4, :cond_1

    .line 992
    invoke-virtual {p0, v4}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 995
    :cond_1
    return-void

    .line 789
    .end local v6           #sendOmadmIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #nextAction:Landroid/content/Intent;
    const-string v7, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .restart local v4       #nextAction:Landroid/content/Intent;
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 795
    :pswitch_2
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->startDownload()V

    goto :goto_0

    .line 798
    :pswitch_3
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->insertFOTABlackListData()V

    .line 800
    :pswitch_4
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cancelInstallation()V

    goto :goto_0

    .line 804
    :pswitch_5
    iget-object v7, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-static {p0, v7}, Lcom/android/updater/util/NotificationUtil;->notifyInstallation(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 808
    :pswitch_6
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->confirmDownload()V

    goto :goto_0

    .line 812
    :pswitch_7
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->checkStorage()V

    goto :goto_0

    .line 815
    :pswitch_8
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 816
    const-string v7, "alert_type"

    const/4 v8, 0x7

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto :goto_0

    .line 824
    :pswitch_9
    new-instance v4, Landroid/content/Intent;

    .end local v4           #nextAction:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 825
    .restart local v4       #nextAction:Landroid/content/Intent;
    const-string v7, "com.htc.lmw"

    const-string v8, "com.htc.lmw.MainActivity"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 841
    :pswitch_a
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cancelAcuConfirm()V

    goto :goto_0

    .line 845
    :pswitch_b
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->acuStartDownload()V

    goto :goto_0

    .line 848
    :pswitch_c
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 855
    :pswitch_d
    new-instance v4, Landroid/content/Intent;

    .end local v4           #nextAction:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 856
    .restart local v4       #nextAction:Landroid/content/Intent;
    const-string v7, "com.htc.sdcardwizard"

    const-string v8, "com.htc.sdcardwizard.SDCardWizardActivity"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 864
    :pswitch_e
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cotaStartDownload()V

    goto :goto_0

    .line 867
    :pswitch_f
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cotaConfirmDownload()V

    goto :goto_0

    .line 870
    :pswitch_10
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cotaCancelExtract()V

    goto :goto_0

    .line 873
    :pswitch_11
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cotaTriggerInstall()V

    goto/16 :goto_0

    .line 879
    :pswitch_12
    const-string v7, "UpdaterAPK | UpdaterAlertActivity"

    const-string v8, "Get intent, try to reboot!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :try_start_0
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/android/updater/ui/UpdaterAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 882
    .local v5, pm:Landroid/os/PowerManager;
    const-string v7, "UpdaterAPK | UpdaterAlertActivity"

    const-string v8, "call pm.reboot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v7, "oem-11"

    invoke-virtual {v5, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 884
    .end local v5           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 885
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "UpdaterAPK | UpdaterAlertActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reboot Failed!  Err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 895
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v7, -0x2

    if-ne p2, v7, :cond_0

    .line 896
    iget v7, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    .line 898
    :sswitch_0
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->confirmDownload()V

    goto/16 :goto_0

    .line 903
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #nextAction:Landroid/content/Intent;
    const-string v7, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .restart local v4       #nextAction:Landroid/content/Intent;
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto/16 :goto_0

    .line 908
    :sswitch_2
    if-nez v2, :cond_4

    .line 909
    iget-object v7, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v8, "install_check_error"

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 910
    .local v1, errorCode:I
    if-nez v1, :cond_3

    .line 912
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 913
    const-string v7, "alert_type"

    const/16 v8, 0x10

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto/16 :goto_0

    .line 915
    :cond_3
    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 917
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 918
    const-string v7, "alert_type"

    const/16 v8, 0x14

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 919
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto/16 :goto_0

    .line 923
    .end local v1           #errorCode:I
    :cond_4
    new-instance v4, Landroid/content/Intent;

    .end local v4           #nextAction:Landroid/content/Intent;
    const-string v7, "android.server.checkin.FOTA_READY"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .restart local v4       #nextAction:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 926
    const-class v7, Lcom/android/updater/ui/PesterActivity;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 927
    const/high16 v7, 0x3000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 932
    :sswitch_3
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 933
    const-string v7, "alert_type"

    const/16 v8, 0x8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto/16 :goto_0

    .line 942
    :sswitch_4
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 952
    :sswitch_5
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 958
    :sswitch_6
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->acuConfirmDownload()V

    goto/16 :goto_0

    .line 964
    :sswitch_7
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cotaConfirmDownload()V

    goto/16 :goto_0

    .line 967
    :sswitch_8
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 968
    const-string v7, "alert_type"

    const/16 v8, 0x2d

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto/16 :goto_0

    .line 972
    :sswitch_9
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 973
    const-string v7, "alert_type"

    const/16 v8, 0x2c

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    iput-boolean v9, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    goto/16 :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 896
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
        0xa -> :sswitch_4
        0x10 -> :sswitch_3
        0x14 -> :sswitch_3
        0x17 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1a -> :sswitch_1
        0x28 -> :sswitch_7
        0x29 -> :sswitch_1
        0x2c -> :sswitch_8
        0x2d -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 175
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mUpdateDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->setupContent(Landroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 181
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 182
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    invoke-direct {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 183
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 184
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 185
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 186
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 187
    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 188
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->setupAlert()V

    .line 192
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 683
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 684
    const/4 v2, 0x0

    .line 685
    .local v2, nextAction:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "position"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 687
    .local v1, installOption:I
    iget v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlertType:I

    sparse-switch v4, :sswitch_data_0

    .line 753
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 754
    invoke-virtual {p0, v2}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->finish()V

    .line 758
    .end local v1           #installOption:I
    .end local v2           #nextAction:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 691
    .restart local v1       #installOption:I
    .restart local v2       #nextAction:Landroid/content/Intent;
    :sswitch_0
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->confirmDownload()V

    goto :goto_0

    .line 695
    :sswitch_1
    if-nez v1, :cond_4

    .line 696
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "install_check_error"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 697
    .local v0, errorCode:I
    if-nez v0, :cond_3

    .line 699
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "alert_type"

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 702
    :cond_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "alert_type"

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/updater/ui/UpdaterAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 710
    .end local v0           #errorCode:I
    :cond_4
    new-instance v2, Landroid/content/Intent;

    .end local v2           #nextAction:Landroid/content/Intent;
    const-string v3, "android.server.checkin.FOTA_READY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .restart local v2       #nextAction:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 713
    const-class v3, Lcom/android/updater/ui/PesterActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 714
    const/high16 v3, 0x3000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 737
    :sswitch_2
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->acuConfirmDownload()V

    goto :goto_0

    .line 744
    :sswitch_3
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->cotaConfirmDownload()V

    goto :goto_0

    .line 687
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 198
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    .line 201
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isTMOUS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "alert_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->removeDataFeeWarning(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->setupContent(Landroid/content/Intent;)V

    .line 208
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mTitleId:I

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    iget-object v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mMessageId:I

    invoke-direct {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mPositiveButtonId:I

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 213
    iget v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    if-eq v0, v3, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    iget v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mNegativeButtonId:I

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterAlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v4, v1, p0, v2}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->setupButtons(Landroid/view/Window;)V

    .line 219
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v4, v2, p0, v2}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity;->dismissAfterClick:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "alert_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, alertType:I
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->startDownload()V

    .line 152
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->dismiss()V

    .line 157
    :cond_0
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDAUserTrial()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->startDownload()V

    .line 159
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterAlertActivity;->dismiss()V

    .line 164
    :cond_1
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isTMOUS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-direct {p0, v0}, Lcom/android/updater/ui/UpdaterAlertActivity;->removeDataFeeWarning(I)V

    .line 169
    :cond_2
    return-void
.end method
