.class Landroid/net/wifi/WpsStateMachine$ActiveState;
.super Lcom/android/internal/util/State;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WpsStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WpsStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const v6, 0x20079

    const/4 v1, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/StateChangeResult;

    iget-object v3, v2, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v4, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "WpsStateMachine"

    const-string v5, "WPS set up successful"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    iget v4, v2, Landroid/net/wifi/StateChangeResult;->networkId:I

    iget-object v5, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v5}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiConfigStore;->updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$600(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WpsStateMachine;->access$700(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_1
    const-string v4, "WpsStateMachine"

    const-string v5, "WPS set up failed, enabling other networks"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$600(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WpsStateMachine;->access$800(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_1
    iget-object v5, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WpsInfo;

    #setter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v5, v4}, Landroid/net/wifi/WpsStateMachine;->access$002(Landroid/net/wifi/WpsStateMachine;Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsInfo;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v4, :pswitch_data_1

    new-instance v0, Landroid/net/wifi/WpsResult;

    sget-object v4, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v0, v4}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    const-string v4, "WpsStateMachine"

    const-string v5, "Invalid setup for WPS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, v4, Landroid/net/wifi/WpsStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/16 v5, 0xb

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    iget-object v4, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    sget-object v5, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    if-eq v4, v5, :cond_0

    const-string v4, "WpsStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start WPS with config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v6}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string v4, "WpsStateMachine"

    const-string v5, "CMD_STOP_WPS in ActiveState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->stopWps()Landroid/net/wifi/WpsResult;

    move-result-object v0

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$600(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WpsStateMachine;->access$900(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_1
        0x2005d -> :sswitch_2
        0x24006 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
