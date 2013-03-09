.class Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WimaxHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/net/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxStateTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_WXCM_STATE_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;

    iget-object v5, v6, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;->state:Lcom/sqn/dcc/swmSsState;

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleStateChange(Lcom/sqn/dcc/swmSsState;)V
    invoke-static {v7, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->access$000(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/sqn/dcc/swmSsState;)V

    goto :goto_0

    :pswitch_2
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_BS_FOUND"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sqn/dcc/ScanResultExtBand;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleBsFoundNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    invoke-static {v8, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$100(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/sqn/dcc/ScanResultExtBand;)V

    goto :goto_0

    :pswitch_3
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_SCAN_RESULTS_AVAILABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleScanRoundComplete()V
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$200(Lcom/htc/net/wimax/WimaxStateTracker;)V

    goto :goto_0

    :pswitch_4
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_ENTRY_CRITERIA"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sqn/dcc/ScanResultExtBand;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleEnterCriteriaNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    invoke-static {v8, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$300(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/sqn/dcc/ScanResultExtBand;)V

    goto :goto_0

    :pswitch_5
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_EXIT_CRITERIA"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleExitCriteriaNotification()V
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$400(Lcom/htc/net/wimax/WimaxStateTracker;)V

    goto :goto_0

    :pswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v7, :cond_1

    move v4, v7

    :goto_1
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v7, :cond_2

    move v0, v7

    :goto_2
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_BACKOFF_STATE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleBackoffStarted(Z)V
    invoke-static {v7, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->access$500(Lcom/htc/net/wimax/WimaxStateTracker;Z)V

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2

    :pswitch_7
    invoke-static {}, Lcom/htc/net/wimax/WimaxStateTracker;->access$600()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "WimaxStateTracker"

    const-string v8, "handleMessage EVENT_POLL_INTERVAL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_POLL_INTERVAL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handlePollingMessage()V
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$700(Lcom/htc/net/wimax/WimaxStateTracker;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/htc/net/wimax/WimaxStateTracker;->access$600()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "WimaxStateTracker"

    const-string v10, "handleMessage EVENT_DRIVER_STATE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v9, "WimaxStateTracker"

    const-string v10, "wimax handler - EVENT_POLL_INTERVAL"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_5

    move v2, v7

    :goto_3
    if-eqz v2, :cond_6

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->setSsState(I)V
    invoke-static {v7, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->access$800(Lcom/htc/net/wimax/WimaxStateTracker;I)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxStateTracker;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Driver started: set state to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;
    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->access$900(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/WimaxInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v2, v8

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    const/16 v8, 0x10

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->setSsState(I)V
    invoke-static {v7, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->access$800(Lcom/htc/net/wimax/WimaxStateTracker;I)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxStateTracker;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Driver stoped:set state to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;
    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->access$900(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/WimaxInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_9
    const-string v7, "WimaxStateTracker"

    const-string v8, "wimax handler - EVENT_INTERFACE_CONFIGURATION_SUCCEEDED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleInterfaceConfigurationSuccess()V
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1000(Lcom/htc/net/wimax/WimaxStateTracker;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v8, "WimaxStateTracker"

    const-string v9, "wimax handler - EVENT_HANDOVER_STARTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->updateHandoverInfo()V
    invoke-static {v8}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1100(Lcom/htc/net/wimax/WimaxStateTracker;)V

    const-string v8, "WimaxStateTracker"

    const-string v9, "handover started"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #setter for: Lcom/htc/net/wimax/WimaxStateTracker;->bHandoverStart:Z
    invoke-static {v8, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1202(Lcom/htc/net/wimax/WimaxStateTracker;Z)Z

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    #setter for: Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    invoke-static {v8, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1302(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    new-instance v9, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1500(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v7

    check-cast v7, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v9, v7}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)V

    #setter for: Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    invoke-static {v8, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1402(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    goto/16 :goto_0

    :pswitch_b
    const-string v9, "WimaxStateTracker"

    const-string v10, "wimax handler - EVENT_HANDOVER_SUCCESSED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v7, :cond_7

    move v1, v7

    :goto_4
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->handleHandoverSucceeded(Z)V
    invoke-static {v7, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1600(Lcom/htc/net/wimax/WimaxStateTracker;Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v8

    goto :goto_4

    :pswitch_c
    const-string v7, "WimaxStateTracker"

    const-string v9, "wimax handler - EVENT_HANDOVER_FAILED"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WimaxStateTracker"

    const-string v9, "handover failed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->updateHandoverInfo()V
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1100(Lcom/htc/net/wimax/WimaxStateTracker;)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.net.FourG.NET_4G_HANDOVER_FAILED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "4g_previous_serving_bs"

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1300(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v7, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1700(Lcom/htc/net/wimax/WimaxStateTracker;Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #setter for: Lcom/htc/net/wimax/WimaxStateTracker;->bHandoverStart:Z
    invoke-static {v7, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1202(Lcom/htc/net/wimax/WimaxStateTracker;Z)Z

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #setter for: Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    invoke-static {v7, v10}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1302(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #setter for: Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    invoke-static {v7, v10}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1402(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    goto/16 :goto_0

    :pswitch_d
    const-string v7, "WimaxStateTracker"

    const-string v9, "wimax handler - EVENT_DISABLE_WIMAX"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WimaxStateTracker"

    const-string v9, "disableWimaxAndDhcp"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iput-boolean v8, v7, Lcom/htc/net/wimax/WimaxStateTracker;->bPollingThreadAlive:Z

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z

    goto/16 :goto_0

    :pswitch_e
    const-string v9, "WimaxStateTracker"

    const-string v10, "wimax handler - EVENT_MS_READY_TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WimaxStateTracker"

    const-string v10, "Could not get MS ready notification"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z
    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1800(Lcom/htc/net/wimax/WimaxStateTracker;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "WimaxStateTracker"

    const-string v10, "BUG: MS ready timeout!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpKmsg()Z

    :cond_8
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->access$1900(Lcom/htc/net/wimax/WimaxStateTracker;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iget-boolean v10, v10, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-ne v10, v7, :cond_9

    const-string v7, "WimaxStateTracker"

    const-string v10, "enableWimax timeout=>wl.release"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iget-object v7, v7, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    iput-boolean v8, v7, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->disableWimax()Z
    invoke-static {v7}, Lcom/htc/net/wimax/WimaxStateTracker;->access$2000(Lcom/htc/net/wimax/WimaxStateTracker;)Z

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #calls: Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V
    invoke-static {v7, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->access$2100(Lcom/htc/net/wimax/WimaxStateTracker;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
