.class final Lcom/htc/android/qxdm2sd/QXDM2SDReceiver$1;
.super Landroid/os/Handler;
.source "QXDM2SDReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/QXDM2SDReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->isInBootCompleteReceiver()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const-string v4, "QXDM2SD:QXDM2SDReceiver"

    const-string v5, "reschedule message MSG_CONTROLLER due to booting ..."

    invoke-static {v4, v5}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SDReceiver$1;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/android/qxdm2sd/QXDM2SDReceiver$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v6, "QXDM2SD:QXDM2SDReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_CONTROLLER: action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", arg1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", arg2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v3, 0x0

    .line 101
    .local v3, result:Z
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.android.qxdm2sd.QXDM2SD.CONTROLLER_RESULT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.android.smith"

    const-string v7, "com.android.smith.LoggerControllerReceiver"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v6, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v6, "action"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v6, "data"

    const-string v7, "not started"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SDReceiver;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/qxdm2sd/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 113
    :cond_1
    const-string v6, "start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 115
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->createDefaultConfig()Z

    move-result v6

    if-nez v6, :cond_5

    .line 117
    const/4 v3, 0x0

    .line 124
    :goto_1
    if-eqz v3, :cond_4

    .line 126
    invoke-static {v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->updateConfigAutoStart(Z)V

    .line 128
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonStatus()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 131
    :cond_2
    const-string v1, "failed to read status!"

    .line 133
    :cond_3
    const-string v4, "data"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .end local v1           #data:Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v4, "result"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SDReceiver;->access$000()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_LOGS"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 163
    const-string v4, "QXDM2SD:QXDM2SDReceiver"

    const-string v5, "MSG_CONTROLLER: end"

    invoke-static {v4, v5}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_5
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->startDaemon()I

    move-result v6

    if-nez v6, :cond_6

    move v3, v4

    :goto_3
    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_3

    .line 136
    :cond_7
    const-string v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 138
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->stopDaemon()I

    move-result v6

    if-nez v6, :cond_8

    move v3, v4

    .line 140
    :goto_4
    if-eqz v3, :cond_4

    .line 142
    invoke-static {v5}, Lcom/htc/android/qxdm2sd/QXDM2SD;->updateConfigAutoStart(Z)V

    goto :goto_2

    :cond_8
    move v3, v5

    .line 138
    goto :goto_4

    .line 145
    :cond_9
    const-string v6, "query"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->getDaemonPID()I

    move-result v6

    if-eqz v6, :cond_c

    move v3, v4

    .line 149
    :goto_5
    if-eqz v3, :cond_4

    .line 151
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonStatus()Ljava/lang/String;

    move-result-object v1

    .line 153
    .restart local v1       #data:Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    .line 154
    :cond_a
    const-string v1, "failed to read status!"

    .line 156
    :cond_b
    const-string v4, "data"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .end local v1           #data:Ljava/lang/String;
    :cond_c
    move v3, v5

    .line 147
    goto :goto_5

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
