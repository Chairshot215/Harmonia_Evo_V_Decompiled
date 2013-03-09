.class Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PendingMsgSendReceiverRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingMsgSendReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;->this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 92
    .local v0, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 93
    .local v1, state:I
    const-string v2, "PendingMsgSendReceiverRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez v1, :cond_0

    .line 96
    const-string v2, "PendingMsgSendReceiverRegister"

    const-string v3, "state in service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->access$000()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v2

    if-nez v2, :cond_1

    .line 98
    const-string v2, "PendingMsgSendReceiverRegister"

    const-string v3, "onReceive mRegister is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;->this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    #getter for: Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->access$100(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 106
    const-string v2, "PendingMsgSendReceiverRegister"

    const-string v3, "send HANDLER_SEND_QUEUED_MSG to mWorkingHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;->this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    #getter for: Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->access$100(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 110
    :cond_2
    const-string v2, "PendingMsgSendReceiverRegister"

    const-string v3, "mWorkingHandler null, set mbNeedtoSendQueueImmediatelly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;->this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    #setter for: Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mbNeedtoSendQueueImmediatelly:Z
    invoke-static {v2, v5}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->access$202(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;Z)Z

    goto :goto_0
.end method
