.class Lcom/android/smith/SystemLoggersReceiver$BootRunner;
.super Ljava/lang/Thread;
.source "SystemLoggersReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggersReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BootRunner"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field arg1:I

.field arg2:I

.field intent:Landroid/content/Intent;

.field msgDone:I

.field msgTask:I

.field result:Z


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .parameter "msgTask"
    .parameter "msgDone"
    .parameter "timeout"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 111
    iput-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    .line 116
    iput p1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgTask:I

    .line 117
    iput p2, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgDone:I

    .line 118
    iput-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 1
    .parameter "msgTask"
    .parameter "msgDone"
    .parameter "timeout"
    .parameter "action"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    .line 123
    iput p1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgTask:I

    .line 124
    iput p2, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgDone:I

    .line 125
    iput-object p4, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    .line 126
    iput p5, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->arg1:I

    .line 127
    iput p6, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->arg2:I

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    invoke-static {}, Lcom/android/smith/Device;->lock()V

    .line 134
    const-string v1, "SM:SystemLoggersReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BootRunner: begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgTask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgTask:I

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    const-string v1, "SM:SystemLoggersReceiver"

    const-string v2, "BootRunner: end"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/smith/SystemLoggersReceiver;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/SystemLoggersReceiver;->access$100()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->msgDone:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    invoke-static {}, Lcom/android/smith/Device;->unLock()V

    .line 202
    return-void

    .line 139
    :pswitch_0
    const-string v1, "SM:SystemLoggersReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.smith.SystemLoggers.CONTROLLER_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "com.android.smith"

    const-string v3, "com.android.smith.LoggerControllerReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "action"

    iget-object v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->isBootCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Lcom/android/smith/SystemLoggersReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/smith/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 149
    invoke-static {v4}, Lcom/android/smith/BootCompleteReceiver;->setBootCompleted(Z)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "data"

    const-string v3, "not started"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "start"

    iget-object v2, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    invoke-static {}, Lcom/android/smith/SystemLoggers;->createDefaultConfig()V

    .line 158
    const-string v1, "logctl"

    const-string v2, ":syncconf:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    const-string v1, "logctl"

    const-string v2, ":run:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    :cond_1
    iput-boolean v5, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    .line 192
    .end local v0           #data:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "result"

    iget-boolean v3, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/android/smith/SystemLoggersReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v3, "android.permission.READ_LOGS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .restart local v0       #data:Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->updateConfigAutoStart(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iput-boolean v4, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    goto :goto_1

    .line 173
    .end local v0           #data:Ljava/lang/String;
    :cond_4
    const-string v1, "stop"

    iget-object v2, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    const-string v1, "0"

    const-string v2, "logctl"

    const-string v3, ":stop:"

    invoke-static {v2, v3}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    .line 177
    iget-boolean v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    if-eqz v1, :cond_2

    .line 179
    invoke-static {v5}, Lcom/android/smith/SystemLoggers;->updateConfigAutoStart(Z)V

    goto :goto_1

    .line 182
    :cond_5
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "1"

    const-string v2, "logctl"

    const-string v3, ":islogging:"

    invoke-static {v2, v3}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    .line 186
    iget-boolean v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->result:Z

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "data"

    const-string v3, "logctl"

    const-string v4, ":getlogfiles:"

    invoke-static {v3, v4}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
