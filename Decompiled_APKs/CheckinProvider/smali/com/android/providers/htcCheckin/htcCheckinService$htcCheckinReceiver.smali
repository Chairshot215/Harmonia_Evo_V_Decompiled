.class Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;
.super Landroid/content/BroadcastReceiver;
.source "htcCheckinService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "htcCheckinReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;


# direct methods
.method private constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/htcCheckinService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2445
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 2450
    const/4 v6, 0x1

    .line 2452
    .local v6, bSetupFinished:Z
    :try_start_0
    new-instance v13, Landroid/content/ComponentName;

    const-string v17, "com.htc.android.htcsetupwizard"

    const-string v18, "com.htc.android.htcsetupwizard.PostSetup"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    .local v13, mainComponent:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2454
    const/4 v6, 0x1

    .line 2463
    .end local v13           #mainComponent:Landroid/content/ComponentName;
    :goto_0
    if-nez v6, :cond_2

    .line 2464
    const-string v17, "htcCheckinService"

    const-string v18, "Pending OTA due to setup not ready"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_0
    :goto_1
    return-void

    .line 2456
    .restart local v13       #mainComponent:Landroid/content/ComponentName;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2458
    .end local v13           #mainComponent:Landroid/content/ComponentName;
    :catch_0
    move-exception v10

    .line 2459
    .local v10, e:Ljava/lang/Exception;
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in get OOBE status:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    const/4 v6, 0x1

    goto :goto_0

    .line 2469
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2471
    const-string v17, "htcCheckinService"

    const-string v18, "In ATT sku, just perform check-in in WiFi or IPT network environment."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    const-string v17, "ro.aa.mainsku"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2476
    .local v15, strSku:Ljava/lang/String;
    const-string v17, "502"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 2477
    .local v3, bATT502:Z
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "strSku: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", bATT502:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$800(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->isIPTOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$900(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 2480
    const-string v17, "htcCheckinService"

    const-string v18, "It\'s AT&T SKU, only perform check-in when the connection media is WiFi or IPT"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2483
    .local v11, intentFOTA_CANCEL:Landroid/content/Intent;
    const-string v17, "name"

    const-string v18, "android.server.HTCcheckin.CHECKIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2491
    .end local v3           #bATT502:Z
    .end local v11           #intentFOTA_CANCEL:Landroid/content/Intent;
    .end local v15           #strSku:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 2492
    .local v7, bWiFiIPTOnly:Z
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2493
    const/4 v7, 0x1

    .line 2494
    const-string v17, "htcCheckinService"

    const-string v18, "It\'s SKT sku, set WiFi/IPT only flag."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    :cond_4
    const-string v17, "ro.cid"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2498
    .local v8, cid:Ljava/lang/String;
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x72

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const-string v17, "O2___001"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2501
    const/4 v7, 0x1

    .line 2502
    const-string v17, "htcCheckinService"

    const-string v18, "It\'s Bliss O2UK, set WiFi/IPT only flag."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    :cond_5
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x7e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x72

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const-string v17, "O2___001"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2508
    const/4 v7, 0x1

    .line 2509
    const-string v17, "htcCheckinService"

    const-string v18, "It\'s Pico O2UK, set WiFi/IPT only flag."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$800(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->isIPTOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$900(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2512
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "This project is Wifi/IPT only. Htc_DEVICE_flag:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Htc_PROJECT_flag:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2517
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->isRoaming()Z
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1000(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$800(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 2518
    const-string v17, "htcCheckinService"

    const-string v18, "Pending OTA due to roaming."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2521
    .local v9, confirmIntent_cancelFota:Landroid/content/Intent;
    const-string v17, "backup_action_string"

    const-string v18, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    goto/16 :goto_1

    .line 2529
    .end local v9           #confirmIntent_cancelFota:Landroid/content/Intent;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.GTALK_DATA_MESSAGE_RECEIVED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1202(Lcom/android/providers/htcCheckin/htcCheckinService;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, "intentSource"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1302(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1300(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1300(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "secretcode"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xa8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2540
    :cond_9
    const-string v17, "htcCheckinService"

    const-string v18, "It\'s ATT or VZW project, ignore checkin intent from secretcode"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2545
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    sget-object v18, Landroid/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Landroid/provider/Checkin$Properties$Tag;

    invoke-virtual/range {v18 .. v18}, Landroid/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->strDesireBuild:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1402(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2546
    const-string v17, "TriggerType"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, "TriggerType"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1502(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2550
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1500(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1502(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2551
    :cond_b
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TriggerType: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1500(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1602(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2555
    const-string v17, "whoami"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, "whoami"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1602(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1600(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1602(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2558
    :cond_c
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get whoami:["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1600(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    :cond_d
    const/4 v5, 0x0

    .line 2564
    .local v5, bForceFOTACheckin:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1600(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "watch"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2565
    const/4 v5, 0x1

    .line 2570
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1702(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2571
    const-string v17, "package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, "package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1702(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1700(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1702(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2574
    :cond_f
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get package_name:["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1700(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1802(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2578
    const-string v17, "update_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, "update_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1802(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1800(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1802(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    .line 2581
    :cond_11
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get update_type:["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1800(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1800(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "individual_appupdate"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 2585
    const/4 v5, 0x1

    .line 2587
    :cond_13
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Disable FOTA:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ro.config.htc.nocheckin"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", bForceFOTACheckin:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "FOTA_periodic_checkin"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 2591
    .local v14, scheCheckin:I
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 2592
    const/4 v14, 0x1

    .line 2593
    const-string v17, "htcCheckinService"

    const-string v18, "In ATT DA mode FOTA, set schedule = 1"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    :cond_14
    const-string v17, "ro.config.htc.nocheckin"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_16

    if-nez v5, :cond_16

    .line 2599
    const-string v17, "htcCheckinService"

    const-string v18, "Checkin disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    goto/16 :goto_1

    .line 2549
    .end local v5           #bForceFOTACheckin:Z
    .end local v14           #scheCheckin:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    const-string v18, ""

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1502(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 2601
    .restart local v5       #bForceFOTACheckin:Z
    .restart local v14       #scheCheckin:I
    :cond_16
    const-string v17, "schedule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1300(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    if-nez v14, :cond_17

    .line 2602
    const-string v17, "htcCheckinService"

    const-string v18, "Checkin disabled since no background data."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static/range {v17 .. v17}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2605
    const-string v17, "htcCheckinService"

    const-string v18, "It\'s schedule check-in and schedule check-in disabled. Trigger COTA!"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string v17, "ro.config.htc.enableCOTA"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2607
    .local v4, bEnableCOTA:Z
    const-string v17, "htcCheckinService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "COTA is enabled:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Trigger Type:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1300(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    if-eqz v4, :cond_0

    .line 2609
    const-string v16, "Schedule"

    .line 2611
    .local v16, strTriggerType:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v17, "android.server.HTCCOTA.CHECKIN"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2612
    .local v12, intentPerformCOTA:Landroid/content/Intent;
    const-string v17, "TriggerType"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2614
    const-string v17, "htcCheckinService"

    const-string v18, "Schedule check-in is disable but COTA is enabled. Sending intent to trigger COTA."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2617
    .end local v4           #bEnableCOTA:Z
    .end local v12           #intentPerformCOTA:Landroid/content/Intent;
    .end local v16           #strTriggerType:Ljava/lang/String;
    :cond_17
    const-string v17, "htcCheckinService"

    const-string v18, "== Checkin triggered == A3.5(GB)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    new-instance v17, Ljava/lang/Thread;

    const-string v18, "com.android.providers.htcCheckin.htcCheckinReceiver"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 2623
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2624
    :try_start_0
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2000()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2626
    const-string v7, "htcCheckinService"

    const-string v9, "Another thread is running for OTA Package."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    monitor-exit v8

    .line 2718
    :goto_0
    return-void

    .line 2630
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2631
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2632
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2634
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 2635
    .local v4, pm:Landroid/os/PowerManager;
    const-string v7, "htcCheckinService"

    invoke-virtual {v4, v9, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 2637
    .local v6, wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2640
    const/4 v0, 0x0

    .line 2641
    .local v0, bNeedCancel:Z
    const/4 v2, 0x0

    .line 2644
    .local v2, extras:Landroid/os/Bundle;
    :try_start_1
    invoke-static {}, Landroid/provider/htcCheckin;->isEnableCheckin()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2645
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->doCheckin()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2646
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Landroid/provider/htcCheckin$Events$Tag;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/htcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 2649
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    iget-boolean v7, v7, Lcom/android/providers/htcCheckin/htcCheckinService;->mbReSchedule:Z

    if-eqz v7, :cond_1

    .line 2650
    const-string v7, "htcCheckinService"

    const-string v8, "Re-schedule AlarmManager because the settings are not consist in db and server."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->scheduleCheckin()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2200(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2652
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/providers/htcCheckin/htcCheckinService;->mbReSchedule:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7
    .catch Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2689
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 2691
    :try_start_2
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    throw v2

    move-result v8

    const-string v9, "error"

    throw v2

    move-result-object v9

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2711
    throw v6

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_3
    throw p0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 2631
    .end local v0           #bNeedCancel:Z
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #pm:Landroid/os/PowerManager;
    .end local v6           #wakelock:Landroid/os/PowerManager$WakeLock;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 2656
    .restart local v0       #bNeedCancel:Z
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #pm:Landroid/os/PowerManager;
    .restart local v6       #wakelock:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :try_start_5
    const-string v7, "htcCheckinService"

    const-string v8, "Checkin disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7
    .catch Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 2658
    :catch_0
    move-exception v1

    .line 2659
    .local v1, e:Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    :try_start_6
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V
    invoke-static {v7, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2300(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/Throwable;)V

    .line 2660
    const/4 v0, 0x1

    .line 2661
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 2662
    .end local v2           #extras:Landroid/os/Bundle;
    .local v3, extras:Landroid/os/Bundle;
    :try_start_7
    const-string v7, "errno"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2663
    const-string v7, "error"

    invoke-virtual {v1}, Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    .line 2689
    if-eqz v0, :cond_4

    .line 2691
    :try_start_8
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 2711
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_9
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v7

    .line 2664
    .end local v1           #e:Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 2665
    .local v1, e:Ljava/net/SocketTimeoutException;
    :try_start_a
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V
    invoke-static {v7, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2300(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/Throwable;)V

    .line 2666
    const/4 v0, 0x1

    .line 2667
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 2668
    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :try_start_b
    const-string v7, "errno"

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2669
    const-string v7, "error"

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    .line 2689
    if-eqz v0, :cond_4

    .line 2691
    :try_start_c
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 2711
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_d
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v7

    .line 2670
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    :catch_2
    move-exception v1

    .line 2671
    .local v1, e:Ljava/net/SocketException;
    :try_start_e
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V
    invoke-static {v7, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2300(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/Throwable;)V

    .line 2672
    const/4 v0, 0x1

    .line 2673
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 2674
    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :try_start_f
    const-string v7, "errno"

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2675
    const-string v7, "error"

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    .line 2689
    if-eqz v0, :cond_4

    .line 2691
    :try_start_10
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 2711
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_11
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v7

    .line 2676
    .end local v1           #e:Ljava/net/SocketException;
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    :catch_3
    move-exception v1

    .line 2677
    .local v1, e:Ljava/io/IOException;
    :try_start_12
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V
    invoke-static {v7, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2300(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/Throwable;)V

    .line 2678
    const/4 v0, 0x1

    .line 2679
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 2680
    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :try_start_13
    const-string v7, "errno"

    const/4 v8, 0x4

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2681
    const-string v7, "error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 2689
    if-eqz v0, :cond_4

    .line 2691
    :try_start_14
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 2711
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_15
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v7

    .line 2682
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    :catch_4
    move-exception v1

    .line 2683
    .local v1, e:Ljava/lang/Exception;
    :try_start_16
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V
    invoke-static {v7, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2300(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/Throwable;)V

    .line 2684
    const/4 v0, 0x1

    .line 2685
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 2686
    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :try_start_17
    const-string v7, "errno"

    const/16 v8, 0x3e7

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2687
    const-string v7, "error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 2689
    if-eqz v0, :cond_4

    .line 2691
    :try_start_18
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 2711
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_19
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw v7

    .line 2689
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    :catchall_7
    move-exception v7

    :goto_2
    if-eqz v0, :cond_3

    .line 2691
    :try_start_1a
    const-string v7, "htcCheckinService"

    const-string v8, "Exception occurs, send cancel intent, and crash report skipped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const-string v8, "errno"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 2711
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_1b
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_8
    move-exception v7

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    throw v7

    :cond_3
    :try_start_1c
    throw v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 2711
    :catchall_9
    move-exception v7

    :goto_3
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_1d
    iget-object v9, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v9, "htcCheckinService"

    const-string v10, "== Checkin finished =="

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    throw v7

    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_4
    move-object v2, v3

    .line 2699
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_5
    :try_start_1e
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "upload_crash"

    invoke-static {v7, v8}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2701
    .local v5, strUploadCtash:Ljava/lang/String;
    invoke-static {}, Landroid/provider/htcCheckin;->isEnableReport()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v5, :cond_7

    const-string v7, "block"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2702
    :cond_6
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->uploadCrashes()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2400(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9
    .catch Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException; {:try_start_1e .. :try_end_1e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    .line 2711
    .end local v5           #strUploadCtash:Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2712
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2713
    :try_start_1f
    iget-object v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2714
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2715
    const-string v7, "htcCheckinService"

    const-string v9, "== Checkin finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v8

    goto/16 :goto_0

    :catchall_a
    move-exception v7

    monitor-exit v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    throw v7

    .line 2705
    :catch_5
    move-exception v1

    .line 2706
    .local v1, e:Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    :try_start_20
    const-string v7, "htcCheckinService"

    const-string v8, "Crash report blocked"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2707
    .end local v1           #e:Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    :catch_6
    move-exception v1

    .line 2708
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Crash upload failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    goto :goto_4

    .line 2716
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_b
    move-exception v7

    :try_start_21
    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    throw v7

    .line 2711
    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :catchall_c
    move-exception v7

    move-object v2, v3

    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    goto/16 :goto_3

    .line 2689
    .end local v2           #extras:Landroid/os/Bundle;
    .restart local v3       #extras:Landroid/os/Bundle;
    :catchall_d
    move-exception v7

    move-object v2, v3

    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v2       #extras:Landroid/os/Bundle;
    goto/16 :goto_2
.end method
