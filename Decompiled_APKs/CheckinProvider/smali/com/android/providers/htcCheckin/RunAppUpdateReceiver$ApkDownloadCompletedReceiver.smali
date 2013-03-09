.class public Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkDownloadCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunAppUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkDownloadCompletedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 651
    const/16 v19, 0x0

    .line 652
    .local v19, downloadUri:Ljava/lang/String;
    const-string v14, ""

    .line 654
    .local v14, EMPTY_STR:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 655
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 656
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApkDownloadCompletedReceiver(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$2400(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    .line 659
    invoke-static/range {p1 .. p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1902(Landroid/content/Context;)Landroid/content/Context;

    .line 661
    :cond_0
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1000()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$700()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 662
    :cond_1
    const-string v4, "FOTA.AppUpdate.Run"

    const-string v5, "The title or Installable APK No are not valid. Restore them from download manager DB"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->restoreDatafromDownloadMgr(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2500(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 666
    :cond_2
    const/16 v18, 0x0

    .line 668
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2600()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 669
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_5

    .line 670
    :cond_3
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    if-eqz v18, :cond_4

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_4
    const/16 v18, 0x0

    .line 832
    :goto_0
    return-void

    .line 673
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 674
    .local v15, Id:I
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 675
    .local v32, url:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 676
    .local v31, status:I
    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 677
    .local v16, apkPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    .line 680
    .local v29, realtime:J
    invoke-static/range {v31 .. v31}, Landroid/provider/Downloads$Impl;->isStatusInformational(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 683
    :cond_6
    invoke-static/range {v31 .. v31}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static/range {v31 .. v31}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 684
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed (code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_7
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APK Download information (code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v22, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APP_NOTIFY_DLPROGRESS"

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v22, infoIntent:Landroid/content/Intent;
    const-string v4, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v4, "_ID"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const-string v4, "URL"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v4, "Status"

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string v4, "Update"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 828
    .end local v22           #infoIntent:Landroid/content/Intent;
    :goto_1
    if-eqz v18, :cond_8

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_8
    const/16 v18, 0x0

    .line 831
    goto/16 :goto_0

    .line 700
    :cond_9
    :try_start_2
    invoke-static/range {v31 .. v31}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 701
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APK Download failed (code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. Remove the record in Download Manager DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeDLMgrRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2000()V

    .line 704
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->deleteDownloadedFile(Ljava/lang/String;)V
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2700(Ljava/lang/String;)V

    .line 706
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1500()V

    .line 708
    new-instance v21, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APPUPDATE_FAIL"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v21, failIntent:Landroid/content/Intent;
    const-string v4, "ErrCode"

    const/16 v5, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v4, "ErrType"

    const-string v5, "download"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v4, "ErrMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed. ErrCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". URL:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v4, "ErrCode"

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ErrMessage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 714
    .local v28, objAPStatus:Lorg/json/JSONObject;
    const-string v4, "apkinfo"

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 716
    const-string v4, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    :cond_a
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 719
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 828
    if-eqz v18, :cond_b

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 728
    .end local v21           #failIntent:Landroid/content/Intent;
    .end local v28           #objAPStatus:Lorg/json/JSONObject;
    :cond_c
    if-nez v16, :cond_e

    .line 729
    :try_start_3
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No file for download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 825
    .end local v15           #Id:I
    .end local v16           #apkPath:Ljava/lang/String;
    .end local v29           #realtime:J
    .end local v31           #status:I
    .end local v32           #url:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 826
    .local v20, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when query APK download provider. error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 828
    if-eqz v18, :cond_d

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_d
    const/16 v18, 0x0

    .line 831
    goto/16 :goto_0

    .line 732
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v15       #Id:I
    .restart local v16       #apkPath:Ljava/lang/String;
    .restart local v29       #realtime:J
    .restart local v31       #status:I
    .restart local v32       #url:Ljava/lang/String;
    :cond_e
    :try_start_5
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->getAPKSizeBySource(Ljava/lang/String;)J
    invoke-static/range {v32 .. v32}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2800(Ljava/lang/String;)J

    move-result-wide v10

    .line 734
    .local v10, APKSize:J
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v4, "data"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->checkPartitionFreeSize(Ljava/lang/String;)J
    invoke-static {v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2900(Ljava/lang/String;)J

    move-result-wide v25

    .line 738
    .local v25, nFreeUserDataSize:J
    long-to-float v4, v10

    const/high16 v5, 0x3fc0

    mul-float/2addr v4, v5

    float-to-long v0, v4

    move-wide/from16 v23, v0

    .line 739
    .local v23, nDesireFreeSize:J
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FreeCacheSize:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]bytes. Needed Data partition Size:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    cmp-long v4, v23, v25

    if-lez v4, :cond_11

    .line 741
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No enough free user data space for installation. Cancel the procedure. Available user data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$2400(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1500()V

    .line 745
    new-instance v21, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APPUPDATE_FAIL"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .restart local v21       #failIntent:Landroid/content/Intent;
    const-string v4, "ErrCode"

    const/16 v5, 0x1e

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    const-string v4, "ErrType"

    const-string v5, "file"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v4, "ErrMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(In ApkDownloadCompletedReceiver) ApkSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Free Data partition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string v4, "ErrCode"

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ErrMessage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 751
    .restart local v28       #objAPStatus:Lorg/json/JSONObject;
    const-string v4, "apkinfo"

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 753
    const-string v4, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :cond_f
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 756
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeDLMgrRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2000()V

    .line 757
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->deleteDownloadedFile(Ljava/lang/String;)V
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2700(Ljava/lang/String;)V

    .line 759
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 828
    if-eqz v18, :cond_10

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 764
    .end local v21           #failIntent:Landroid/content/Intent;
    .end local v28           #objAPStatus:Lorg/json/JSONObject;
    :cond_11
    const/16 v17, 0x1

    .line 765
    .local v17, bFileCorrupt:Z
    const/4 v8, 0x0

    .line 766
    .local v8, APKFile:Ljava/io/File;
    const/4 v12, 0x0

    .line 768
    .local v12, APKZipFile:Ljava/util/zip/ZipFile;
    :try_start_6
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to check APK corrupt status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 770
    .end local v8           #APKFile:Ljava/io/File;
    .local v9, APKFile:Ljava/io/File;
    :try_start_7
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 771
    .end local v12           #APKZipFile:Ljava/util/zip/ZipFile;
    .local v13, APKZipFile:Ljava/util/zip/ZipFile;
    const/16 v17, 0x0

    .line 776
    const/4 v8, 0x0

    .line 777
    .end local v9           #APKFile:Ljava/io/File;
    .restart local v8       #APKFile:Ljava/io/File;
    if-eqz v13, :cond_12

    .line 778
    :try_start_8
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 779
    :cond_12
    const/4 v12, 0x0

    .line 782
    .end local v13           #APKZipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #APKZipFile:Ljava/util/zip/ZipFile;
    :goto_2
    if-eqz v17, :cond_18

    .line 783
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apk file is corrupted!! Apk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1500()V

    .line 787
    new-instance v21, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APPUPDATE_FAIL"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .restart local v21       #failIntent:Landroid/content/Intent;
    const-string v4, "ErrCode"

    const/16 v5, 0x14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    const-string v4, "ErrType"

    const-string v5, "install"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v4, "ErrMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apk file is corrupted. apk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string v4, "ErrCode"

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ErrMessage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 793
    .restart local v28       #objAPStatus:Lorg/json/JSONObject;
    const-string v4, "apkinfo"

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 795
    const-string v4, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    :cond_13
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 798
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeDLMgrRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2000()V

    .line 799
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->deleteDownloadedFile(Ljava/lang/String;)V
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2700(Ljava/lang/String;)V

    .line 801
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 828
    if-eqz v18, :cond_14

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 772
    .end local v21           #failIntent:Landroid/content/Intent;
    .end local v28           #objAPStatus:Lorg/json/JSONObject;
    :catch_1
    move-exception v20

    .line 773
    .restart local v20       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_9
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apk file is corrupted !! reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 774
    const/16 v17, 0x1

    .line 776
    const/4 v8, 0x0

    .line 777
    if-eqz v12, :cond_15

    .line 778
    :try_start_a
    throw v12

    .line 779
    :cond_15
    const/4 v12, 0x0

    .line 780
    goto/16 :goto_2

    .line 776
    .end local v20           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_4
    const/4 v8, 0x0

    .line 777
    if-eqz v12, :cond_16

    .line 778
    throw v12

    .line 779
    :cond_16
    const/4 v12, 0x0

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 828
    .end local v8           #APKFile:Ljava/io/File;
    .end local v10           #APKSize:J
    .end local v12           #APKZipFile:Ljava/util/zip/ZipFile;
    .end local v15           #Id:I
    .end local v16           #apkPath:Ljava/lang/String;
    .end local v17           #bFileCorrupt:Z
    .end local v23           #nDesireFreeSize:J
    .end local v25           #nFreeUserDataSize:J
    .end local v29           #realtime:J
    .end local v31           #status:I
    .end local v32           #url:Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v18, :cond_17

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_17
    const/16 v18, 0x0

    throw v4

    .line 804
    .restart local v8       #APKFile:Ljava/io/File;
    .restart local v10       #APKSize:J
    .restart local v12       #APKZipFile:Ljava/util/zip/ZipFile;
    .restart local v15       #Id:I
    .restart local v16       #apkPath:Ljava/lang/String;
    .restart local v17       #bFileCorrupt:Z
    .restart local v23       #nDesireFreeSize:J
    .restart local v25       #nFreeUserDataSize:J
    .restart local v29       #realtime:J
    .restart local v31       #status:I
    .restart local v32       #url:Ljava/lang/String;
    :cond_18
    :try_start_b
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check file corrupt status Pass:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to install APK ! File:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v27, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APP_NOTIFY"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v27, notifyIntent:Landroid/content/Intent;
    const-string v4, "NotifyType"

    const-string v5, "show"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v4, "Progress"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3000()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->getInstallType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "new"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 816
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install type:New APK:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v4, 0x0

    move-object/from16 v0, v16

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->installAPK(Ljava/lang/String;I)V
    invoke-static {v0, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3200(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 828
    :goto_5
    if-eqz v18, :cond_19

    .line 829
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 819
    :cond_1a
    :try_start_c
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install type:Update APK:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v4, 0x2

    move-object/from16 v0, v16

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->installAPK(Ljava/lang/String;I)V
    invoke-static {v0, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$3200(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    .line 776
    .end local v8           #APKFile:Ljava/io/File;
    .end local v27           #notifyIntent:Landroid/content/Intent;
    .restart local v9       #APKFile:Ljava/io/File;
    :catchall_2
    move-exception v4

    move-object v8, v9

    .end local v9           #APKFile:Ljava/io/File;
    .restart local v8       #APKFile:Ljava/io/File;
    goto/16 :goto_4

    .line 772
    .end local v8           #APKFile:Ljava/io/File;
    .restart local v9       #APKFile:Ljava/io/File;
    :catch_2
    move-exception v20

    move-object v8, v9

    .end local v9           #APKFile:Ljava/io/File;
    .restart local v8       #APKFile:Ljava/io/File;
    goto/16 :goto_3
.end method
