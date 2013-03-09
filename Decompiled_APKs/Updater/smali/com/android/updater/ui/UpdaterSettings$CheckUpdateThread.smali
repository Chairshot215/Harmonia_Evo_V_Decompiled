.class Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;
.super Ljava/lang/Thread;
.source "UpdaterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/UpdaterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckUpdateThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStopCheck:Z

.field final synthetic this$0:Lcom/android/updater/ui/UpdaterSettings;


# direct methods
.method public constructor <init>(Lcom/android/updater/ui/UpdaterSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 499
    iput-object p2, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mStopCheck:Z

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 510
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v9}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/updater/db/FOTABlackList;->removeAllData(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 512
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 513
    const/4 v2, 0x0

    .line 515
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v7

    .line 516
    .local v7, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    iget-boolean v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mStopCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_0

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    .line 615
    .end local v7           #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :goto_0
    return-void

    .line 518
    .restart local v7       #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v0

    .line 519
    .local v0, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    iget-boolean v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mStopCheck:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_1

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 522
    :cond_1
    const/4 v6, 0x0

    .line 524
    .local v6, network:Landroid/net/NetworkInfo;
    :try_start_2
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 529
    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_4

    .line 538
    .local v5, isConnectionFail:Z
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-static {v9}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 539
    const/4 v5, 0x0

    .line 544
    :cond_3
    iget-boolean v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mStopCheck:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v9, :cond_5

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 525
    .end local v5           #isConnectionFail:Z
    :catch_0
    move-exception v1

    .line 526
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "UpdaterAPK | UpdaterSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t get network status! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v6, 0x0

    goto :goto_1

    .line 529
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 546
    .restart local v5       #isConnectionFail:Z
    :cond_5
    const/4 v8, 0x0

    .line 547
    .local v8, updateFile:Ljava/io/File;
    if-eqz v0, :cond_9

    .line 548
    iget v9, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v9}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 549
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 550
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.updater.FOTA_ALERT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 551
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_5
    const-string v9, "alert_type"

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 554
    :cond_6
    :try_start_6
    iget v9, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v9}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 555
    new-instance v8, Ljava/io/File;

    .end local v8           #updateFile:Ljava/io/File;
    iget-object v9, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v8       #updateFile:Ljava/io/File;
    iget-object v9, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    const-string v10, "/cache/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 557
    .local v4, isCacheFile:Z
    if-nez v4, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 559
    :cond_7
    if-nez v5, :cond_8

    iget v9, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadVisibility:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    .line 560
    :cond_8
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-static {v9, v7, v0, v4}, Lcom/android/updater/util/UpdaterUtil;->verifyExistFOTAPackage(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;Lcom/android/updater/util/UpdaterUtil$DownloadInfo;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 568
    .end local v4           #isCacheFile:Z
    :cond_9
    :try_start_7
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-static {v9}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-static {v9}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 569
    const/4 v5, 0x1

    .line 573
    :cond_a
    if-eqz v5, :cond_b

    .line 574
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 575
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.updater.FOTA_ALERT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 576
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :try_start_8
    const-string v9, "alert_type"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v9, v3}, Lcom/android/updater/ui/UpdaterSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 582
    :cond_b
    :try_start_9
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #calls: Lcom/android/updater/ui/UpdaterSettings;->acuIsDownloading()Z
    invoke-static {v9}, Lcom/android/updater/ui/UpdaterSettings;->access$1000(Lcom/android/updater/ui/UpdaterSettings;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 583
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 584
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.updater.FOTA_ALERT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 585
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :try_start_a
    const-string v9, "alert_type"

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 592
    :cond_c
    :try_start_b
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.server.HTCcheckin.CHECKIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 596
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :try_start_c
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/updater/ui/UpdaterSettings;->access$1100(Lcom/android/updater/ui/UpdaterSettings;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    .line 597
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const-string v10, "updater"

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/updater/ui/UpdaterSettings;->access$1102(Lcom/android/updater/ui/UpdaterSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    :cond_d
    const-string v9, "whoami"

    iget-object v10, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/updater/ui/UpdaterSettings;->access$1100(Lcom/android/updater/ui/UpdaterSettings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 606
    const-string v9, "checkFile"

    iget-object v10, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    :cond_e
    iget-object v9, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    move-object v2, v3

    .line 614
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 609
    .end local v0           #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v5           #isConnectionFail:Z
    .end local v6           #network:Landroid/net/NetworkInfo;
    .end local v7           #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    .end local v8           #updateFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 610
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_d
    const-string v9, "UpdaterAPK | UpdaterSettings"

    const-string v10, "CheckUpdateThread fail: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 613
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 612
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 613
    :goto_4
    iput-object v12, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mContext:Landroid/content/Context;

    throw v9

    .line 612
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v0       #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v5       #isConnectionFail:Z
    .restart local v6       #network:Landroid/net/NetworkInfo;
    .restart local v7       #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    .restart local v8       #updateFile:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 609
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_3
.end method

.method public stopCheck()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->mStopCheck:Z

    .line 505
    return-void
.end method
