.class Lcom/htc/android/qxdm2sd/QXDM2SD$5;
.super Landroid/os/Handler;
.source "QXDM2SD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/QXDM2SD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;


# direct methods
.method constructor <init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V
    .locals 0
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 1135
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1210
    :pswitch_0
    const-string v2, "QXDM2SD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler: unknow MSG ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :goto_0
    return-void

    .line 1138
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->showVersionDialog()V
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$900(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    goto :goto_0

    .line 1142
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->updateStatus()V
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1000(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    goto :goto_0

    .line 1146
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1148
    const-string v2, "QXDM2SD"

    const-string v3, "mHandler: mAtCmdList == null"

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    const-string v2, "QXDM2SD"

    const-string v3, "mHandler: no AT command is found"

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1158
    :cond_1
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1160
    .local v1, atcmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1165
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device;->sendATCommand(Ljava/lang/String;Landroid/os/Message;)Z

    goto :goto_0

    .line 1170
    .end local v1           #atcmd:Ljava/lang/String;
    :pswitch_4
    invoke-static {p1}, Lcom/htc/android/qxdm2sd/Device;->parseATCommandResult(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, at_ret:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1182
    :cond_2
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1187
    .end local v0           #at_ret:Ljava/lang/String;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 1189
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->showProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v4, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1300(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1193
    :cond_3
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->showProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1300(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1198
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1200
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    const-string v3, ""

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->showSingleChoiceItemDialog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1400(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;)V

    .line 1206
    :goto_1
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1204
    :cond_4
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->showSingleChoiceItemDialog(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1400(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;)V

    goto :goto_1

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
