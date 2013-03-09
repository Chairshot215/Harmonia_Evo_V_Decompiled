.class final Lcom/htc/android/qxdm2sd/BootCompleteReceiver$1;
.super Landroid/os/Handler;
.source "BootCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/BootCompleteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 203
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 208
    const-string v3, "QXDM2SD:BootCompleteReceiver"

    const-string v4, "mAtCmdList == null"

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const-string v3, "QXDM2SD:BootCompleteReceiver"

    const-string v4, "no AT command is found"

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 218
    .local v1, atcmd:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/android/qxdm2sd/Device;->sendATCommand(Ljava/lang/String;Landroid/os/Message;)Z

    goto :goto_0

    .line 228
    .end local v1           #atcmd:Ljava/lang/String;
    :pswitch_2
    invoke-static {p1}, Lcom/htc/android/qxdm2sd/Device;->parseATCommandResult(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, at_ret:Ljava/lang/String;
    const/4 v2, 0x0

    .line 231
    .local v2, reason:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    iget v3, p1, Landroid/os/Message;->arg2:I

    packed-switch v3, :pswitch_data_1

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    :goto_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v2}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 236
    :pswitch_3
    const-string v2, "Auto Start"

    .line 237
    goto :goto_1

    .line 239
    :pswitch_4
    const-string v2, "Airplane Mode ON"

    .line 240
    goto :goto_1

    .line 242
    :pswitch_5
    const-string v2, "Airplane Mode OFF"

    .line 243
    goto :goto_1

    .line 245
    :pswitch_6
    const-string v2, "Media Umnouted"

    .line 246
    goto :goto_1

    .line 260
    :cond_2
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
