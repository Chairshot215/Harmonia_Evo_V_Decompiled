.class Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    const/16 v6, 0xd8

    const/16 v5, 0x3d

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x3

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;I)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$4602(Landroid/net/wifi/WifiStateMachine;I)I

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v5, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v5, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v6, :cond_1

    :cond_0
    const-string v3, "WifiStateMachine"

    const-string v4, "EVENT_SUPPLICANT_CONNECTION setPreConfigAPHigherPriority"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)V

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v3

    const v4, 0x2006f

    invoke-virtual {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v3

    const v4, 0x2007a

    invoke-virtual {v3, v4}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "HTC CW Handler Thread"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Landroid/net/wifi/WifiStateMachine$CwHandler;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/net/wifi/WifiStateMachine$CwHandler;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$5002(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$CwHandler;)Landroid/net/wifi/WifiStateMachine$CwHandler;

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$5102(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3, v7}, Landroid/net/wifi/WifiStateMachine;->access$5202(Landroid/net/wifi/WifiStateMachine;I)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v3, v7}, Landroid/net/wifi/WifiStateMachine;->access$5302(Landroid/net/wifi/WifiStateMachine;I)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mNoSignalCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$5402(Landroid/net/wifi/WifiStateMachine;I)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v4, -0xc8

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$5502(Landroid/net/wifi/WifiStateMachine;I)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->notifyGetAirPlaneMode()V

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->initialize(Landroid/content/Context;)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_connection_policy_enabled"

    sget v6, Landroid/provider/Settings$Secure;->WIFI_CONNECTION_POLICY_ENABLED_DEFAULT:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, v3, Landroid/net/wifi/WifiStateMachine;->mHtcConReqByKT:Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v1, v1, Landroid/net/wifi/WifiStateMachine;->mHtcConReqByKT:Z

    if-eqz v1, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-ne v1, v3, :cond_5

    const-string v1, "KT"

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setProjectToDriver(Ljava/lang/String;)Z

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Z)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    const v1, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    move v1, v2

    goto/16 :goto_0

    :sswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4604(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_6

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Failed to setup control channel, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2000b

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times to start supplicant, unload driver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$4602(Landroid/net/wifi/WifiStateMachine;I)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x20002

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_2
        0x20002 -> :sswitch_2
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004d -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x20065 -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
