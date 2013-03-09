.class Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    const v2, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$6302(Landroid/net/wifi/WifiStateMachine;Z)Z

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v2, v0

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanIntervalCommand(I)V

    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x1

    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    :goto_0
    return v8

    :sswitch_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    const v6, 0xc366

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_1
    move v8, v7

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Connection lost, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Z)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v6

    const v8, 0x2006f

    invoke-virtual {v6, v8}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v6

    const v8, 0x2007a

    invoke-virtual {v6, v8}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2000b

    const-wide/16 v9, 0x1388

    invoke-virtual {v6, v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$7202(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1

    :sswitch_3
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v8, 0x20034

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    invoke-virtual {v6, p1, v8, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Landroid/net/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-ne v10, v7, :cond_4

    move v8, v7

    :cond_4
    invoke-static {v9, v8}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v6, v8, v10

    if-lez v6, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v6, v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$7302(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    :sswitch_8
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v9, v7}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(IIZ)Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z

    goto/16 :goto_1

    :sswitch_a
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z

    goto/16 :goto_1

    :sswitch_b
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v9, 0x2003b

    if-eqz v3, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    const-string v6, "backup"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v6, "com.android.providers.settings"

    invoke-interface {v2, v6}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_1

    :sswitch_c
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Failed to start soft AP with a running supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v8, 0xe

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    :sswitch_d
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    move v8, v7

    :cond_8
    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$6302(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto/16 :goto_1

    :sswitch_f
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)V

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "WifiStateMachine"

    const-string v9, "Wifi Driver reports LOW_RSSI_IND - disableNetwork."

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-static {v6, v8}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(IZ)Z

    goto/16 :goto_1

    :sswitch_11
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v6, v6, Landroid/net/wifi/WifiStateMachine;->mHtcConReqByKT:Z

    if-eqz v6, :cond_9

    const-string v6, "KT"

    invoke-static {v6}, Landroid/net/wifi/WifiNative;->setProjectToDriver(Ljava/lang/String;)Z

    const/16 v6, -0x58

    const/4 v8, 0x5

    invoke-static {v6, v8}, Landroid/net/wifi/WifiNative;->setLowRssiInd(II)Z

    goto/16 :goto_1

    :cond_9
    const-string v6, "DEFAULT"

    invoke-static {v6}, Landroid/net/wifi/WifiNative;->setProjectToDriver(Ljava/lang/String;)Z

    invoke-static {v8, v8}, Landroid/net/wifi/WifiNative;->setLowRssiInd(II)Z

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_c
        0x20033 -> :sswitch_3
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_5
        0x20036 -> :sswitch_6
        0x20037 -> :sswitch_7
        0x20038 -> :sswitch_8
        0x20039 -> :sswitch_9
        0x2003a -> :sswitch_a
        0x2003b -> :sswitch_b
        0x20048 -> :sswitch_d
        0x20057 -> :sswitch_e
        0x20058 -> :sswitch_f
        0x2007f -> :sswitch_11
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_10
    .end sparse-switch
.end method
