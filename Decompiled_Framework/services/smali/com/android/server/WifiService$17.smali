.class Lcom/android/server/WifiService$17;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$17;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_idle_ms"

    const-wide/32 v15, 0xdbba0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "stay_on_while_plugged_in"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "WifiService"

    const-string v14, "ACTION_SCREEN_ON"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4302(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;Z)V

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xd8

    if-ne v13, v14, :cond_1

    const-string v13, "WifiService"

    const-string v14, "[C+W] send MESSAGE_CHECK_CW_STATUS"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v13

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v13

    const/16 v14, 0x64

    const-wide/16 v15, 0x1388

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v13

    const/16 v14, 0x64

    const-wide/16 v15, 0x2710

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v13

    const/16 v14, 0x64

    const-wide/16 v15, 0x3a98

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "WifiService"

    const-string v14, "ACTION_SCREEN_OFF"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4302(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    :cond_3
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xd8

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v13

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/android/server/WifiService$WifiHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v14

    #setter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4602(Lcom/android/server/WifiService;Z)Z

    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[C+W] screen off with mCWRegisteredWhenScreenOff = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v15}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4700(Lcom/android/server/WifiService;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/android/server/WifiService$17;->shouldWifiStayAwake(II)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    iget-object v13, v13, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_5

    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    add-long/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_5
    const-string v13, "WifiService"

    const-string v14, "setting ACTION_DEVICE_IDLE: 120000 ms"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x1d4c0

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_6
    const-string v13, "android.net.wifi.UNREGISTER_RECEIVER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)Landroid/content/BroadcastReceiver;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    #setter for: Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4902(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    #calls: Lcom/android/server/WifiService;->persistWifiState(Z)V
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v13, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "WifiService"

    const-string v14, "got ACTION_DEVICE_IDLE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    :cond_8
    const-string v13, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "WifiService"

    const-string v14, "[C+W] got ACTION_CW_EXPIRED_REREGISTER"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->tryToTriggerCWReregister()V

    goto/16 :goto_0

    :cond_9
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4700(Lcom/android/server/WifiService;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/android/server/WifiService$17;->shouldWifiStayAwake(II)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/android/server/WifiService$17;->shouldWifiStayAwake(II)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long v10, v13, v2

    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v13, v14, v10, v11, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v13, v5}, Lcom/android/server/WifiService;->access$4702(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    :cond_b
    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->getWifiApClients()I

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_saved_state"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    :goto_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_saved_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v13, "WifiService"

    const-string v14, "Restore wifi when hotspot is off"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v13, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "WifiService"

    const-string v14, "Got ACTION_WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v13, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "WifiService"

    const-string v14, "Got HOTSPOT_CONNECTION_REQUEST"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    const-string v13, "hotspot_block_mac"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "hotspot_lastest_time_of_request"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13, v4, v8, v9}, Landroid/net/wifi/WifiStateMachine;->updateConnectionList(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_e
    const-string v13, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    :cond_f
    const-string v13, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const-string v14, "phoneinECMState"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$5002(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    :cond_10
    const-string v13, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    const-string v14, "EMERGENCY_AND_CALLBACK_STATUS"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    #setter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$5102(Lcom/android/server/WifiService;Z)Z

    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTC_EMERGENCY_MODE_CHANGED:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v15}, Lcom/android/server/WifiService;->access$5100(Lcom/android/server/WifiService;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Previous:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static {v15}, Lcom/android/server/WifiService;->access$5200(Lcom/android/server/WifiService;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v13}, Lcom/android/server/WifiService;->access$5100(Lcom/android/server/WifiService;)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static {v13}, Lcom/android/server/WifiService;->access$5200(Lcom/android/server/WifiService;)Z

    move-result v13

    if-nez v13, :cond_11

    const-string v13, "WifiService"

    const-string v14, "Don\'t have emergency call"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v14}, Lcom/android/server/WifiService;->access$5100(Lcom/android/server/WifiService;)Z

    move-result v14

    #setter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$5202(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    goto :goto_2

    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method
