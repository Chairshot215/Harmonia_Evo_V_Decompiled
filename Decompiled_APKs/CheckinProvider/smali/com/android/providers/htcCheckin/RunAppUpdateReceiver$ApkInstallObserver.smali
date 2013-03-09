.class Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "RunAppUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkInstallObserver"
.end annotation


# instance fields
.field private doneFlag:Z

.field mApkPath:Ljava/lang/String;

.field mDownloadUri:Ljava/lang/String;

.field nStart:J

.field public returnCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "pPath"

    .prologue
    const/4 v2, 0x0

    .line 1253
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->doneFlag:Z

    .line 1249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->nStart:J

    .line 1250
    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->mDownloadUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->mApkPath:Ljava/lang/String;

    .line 1254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->nStart:J

    .line 1255
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->mApkPath:Ljava/lang/String;

    .line 1256
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 13
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1266
    iput p2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->returnCode:I

    .line 1267
    iput-boolean v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->doneFlag:Z

    .line 1268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->nStart:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float v1, v7, v8

    .line 1270
    .local v1, fTime:F
    const-string v7, "FOTA.AppUpdate.Run"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is installed. returnCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Time consumed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$2400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeDLMgrRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2000()V

    .line 1273
    iget-object v7, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->mApkPath:Ljava/lang/String;

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->deleteDownloadedFile(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2700(Ljava/lang/String;)V

    .line 1276
    if-eq p2, v11, :cond_1

    .line 1277
    const-string v7, "FOTA.AppUpdate.Run"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] installation failed. returnCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1500()V

    .line 1281
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.server.checkin.APPUPDATE_FAIL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v2, failIntent:Landroid/content/Intent;
    const-string v7, "ErrCode"

    const/16 v8, 0x15

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    const-string v7, "ErrType"

    const-string v8, "install"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    const-string v7, "ErrMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". returnCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    const-string v7, "ErrCode"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ErrMessage"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1288
    .local v4, objAPStatus:Lorg/json/JSONObject;
    const-string v7, "apkinfo"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1289
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1290
    const-string v7, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    :cond_0
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1293
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V

    .line 1342
    .end local v2           #failIntent:Landroid/content/Intent;
    .end local v4           #objAPStatus:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1298
    :cond_1
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->getSourceByPackagName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1299
    .local v5, source:Ljava/lang/String;
    const-string v7, "FOTA.AppUpdate.Run"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to mark a record in table appupdate is finished. packageName:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], source:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->markTaskAsFinished(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3400(Ljava/lang/String;)V

    .line 1304
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1500()V

    .line 1307
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->findNextProperAPK()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1200()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;

    move-result-object v0

    .line 1309
    .local v0, DLInfo:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.server.checkin.APP_NOTIFY"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v3, notifyIntent:Landroid/content/Intent;
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getSource()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->access$2200(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NoAppUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1311
    const-string v7, "FOTA.AppUpdate.Run"

    const-string v8, "Done!!  No APK to install!!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveBiggestTimestampOfInstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3500()V

    .line 1314
    const-string v7, "NotifyType"

    const-string v8, "success"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const-string v7, "Progress"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1317
    const-string v7, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    :cond_2
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1321
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v12, v12}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1322
    .restart local v4       #objAPStatus:Lorg/json/JSONObject;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.server.checkin.APPUPDATE_SUCCESS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v6, successIntent:Landroid/content/Intent;
    const-string v7, "apkinfo"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1325
    const-string v7, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    :cond_3
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1327
    const-string v7, "FOTA.AppUpdate.Run"

    const-string v8, "Appupdate completed successfully. Send intent: [android.server.checkin.APPUPDATE_SUCCESS]"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V

    goto/16 :goto_0

    .line 1333
    .end local v4           #objAPStatus:Lorg/json/JSONObject;
    .end local v6           #successIntent:Landroid/content/Intent;
    :cond_4
    const-string v7, "NotifyType"

    const-string v8, "cancel"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const-string v7, "Progress"

    const-string v8, "10/10"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1336
    const-string v7, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    :cond_5
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1341
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->downloadApk(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1300(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V

    goto/16 :goto_0
.end method

.method public setDownloadUri(Ljava/lang/String;)V
    .locals 0
    .parameter "pDU"

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->mDownloadUri:Ljava/lang/String;

    .line 1346
    return-void
.end method
