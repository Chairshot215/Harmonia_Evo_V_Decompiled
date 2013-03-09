.class Lcom/htc/net/wimax/WimaxService$2;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/net/wimax/WimaxService;


# direct methods
.method constructor <init>(Lcom/htc/net/wimax/WimaxService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldStayAwake(II)Z
    .locals 2

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "shouldStayAwake +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int v0, p1, p2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "WimaxService"

    const-string v15, "BroadcastReceiver::onReceive+"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x2710

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$200(Lcom/htc/net/wimax/WimaxService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "stay_on_while_plugged_in"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive ACTION_AIRPLANE_MODE_CHANGED state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/htc/net/wimax/WimaxStateTracker;->handleAirplaneChanged(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "WimaxService"

    const-string v15, "BroadcastReceiver::onReceive-"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v14, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "phoneinECMState"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive ACTION_EMERGENCY_CALLBACK_MODE_CHANGED bIsEmerState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->handleEmergencyCall(Z)V

    goto :goto_0

    :cond_4
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive ACTION_SIM_STATE_CHANGED, state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reason="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "IMSI"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    const/4 v15, 0x1

    #setter for: Lcom/htc/net/wimax/WimaxService;->bIsDmCmdReady:Z
    invoke-static {v14, v15}, Lcom/htc/net/wimax/WimaxService;->access$302(Lcom/htc/net/wimax/WimaxService;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->bPostponeLaunch:Z
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$400(Lcom/htc/net/wimax/WimaxService;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    const/4 v15, 0x0

    #setter for: Lcom/htc/net/wimax/WimaxService;->bPostponeLaunch:Z
    invoke-static {v14, v15}, Lcom/htc/net/wimax/WimaxService;->access$402(Lcom/htc/net/wimax/WimaxService;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimax()Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->updateLock()V

    goto/16 :goto_0

    :cond_6
    const-string v14, "com.android.server.WimaxController.action.DEVICE_DHCPRENEW"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "WimaxService"

    const-string v15, "onReceive DEVICE_DEVICE_DHCPRENEW"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleDhcpRenew()V

    goto/16 :goto_0

    :cond_7
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "WimaxService"

    const-string v15, "onReceive SCREEN_ON"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleScreenOn()V

    goto/16 :goto_0

    :cond_8
    const-string v14, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "WimaxService"

    const-string v15, "onReceive SHUTDOWN"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleShutdown()V

    goto/16 :goto_0

    :cond_9
    const-string v14, "android.intent.action.REBOOT"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "WimaxService"

    const-string v15, "onReceive REBOOT"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleReboot()V

    goto/16 :goto_0

    :cond_a
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "WimaxService"

    const-string v15, "onReceive SCREEN_OFF"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleScreenOff()V

    goto/16 :goto_0

    :cond_c
    const-string v14, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive ACTION_PHONE_STATE_CHANGED state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handlePhoneRinging()V

    goto/16 :goto_0

    :cond_d
    sget-object v14, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handlePhoneOffHook()V

    goto/16 :goto_0

    :cond_e
    sget-object v14, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handlePhoneIdle()V

    goto/16 :goto_0

    :cond_f
    const-string v14, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "android.bluetooth.adapter.extra.STATE"

    const/16 v15, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive BT ACTION_STATE_CHANGED state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xc

    if-ne v11, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleBtOn()V

    goto/16 :goto_0

    :cond_10
    const/16 v14, 0xa

    if-ne v11, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleBtOff()V

    goto/16 :goto_0

    :cond_11
    const-string v14, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "wifi_state"

    const/16 v15, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive WIFI ACTION_STATE_CHANGED state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xd

    if-ne v11, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleWifiOn()V

    goto/16 :goto_0

    :cond_12
    const/16 v14, 0xb

    if-ne v11, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleWifiOff()V

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive ACTION_MOBILEDATA_MODE_CHANGED enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "sender"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleMobileOn()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleMobileOff()V

    goto/16 :goto_0

    :cond_15
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    const-string v14, "WimaxService"

    const-string v15, "onReceive Intent.ACTION_BOOT_COMPLETED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleBroadcastPendingState()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleDumpLastKmsg()V

    goto/16 :goto_0

    :cond_16
    const-string v14, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    const-string v14, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "WimaxService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive ConnectivityService CONNECTIVITY_ACTION type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->handleOtherNetworkDisconnect()V

    goto/16 :goto_0

    :cond_17
    const-string v14, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    const-string v14, "WimaxService"

    const-string v15, "onReceive HTCWimax4GManager.WIMAX_4G_AVAILABLE_ACTION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v14}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/net/wimax/WimaxStateTracker;->getPersistWimaxEnabled()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Lcom/htc/net/wimax/WimaxService;->setWimaxEnabledPersist(ZZ)Z

    goto/16 :goto_0

    :cond_18
    const-string v14, "com.htc.net.wimax.WIMAX_4G_NOT_AVAILABLE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "WimaxService"

    const-string v15, "onReceive HTCWimax4GManager.WIMAX_4G_NOT_AVAILABLE_ACTION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxService$2;->this$0:Lcom/htc/net/wimax/WimaxService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/net/wimax/WimaxService;->setWimaxEnabledPersist(ZZ)Z

    goto/16 :goto_0
.end method
