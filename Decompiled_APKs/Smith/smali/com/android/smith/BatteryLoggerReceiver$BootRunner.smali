.class Lcom/android/smith/BatteryLoggerReceiver$BootRunner;
.super Ljava/lang/Thread;
.source "BatteryLoggerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/BatteryLoggerReceiver;
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

    .line 116
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    .line 117
    iput p1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgTask:I

    .line 118
    iput p2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgDone:I

    .line 119
    iput-object v1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    .line 120
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
    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    .line 124
    iput p1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgTask:I

    .line 125
    iput p2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgDone:I

    .line 126
    iput-object p4, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    .line 127
    iput p5, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->arg1:I

    .line 128
    iput p6, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->arg2:I

    .line 129
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    invoke-static {}, Lcom/android/smith/Device;->lock()V

    .line 135
    const-string v0, "SM:BatteryLoggerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BootRunner: begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgTask:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    const-string v0, "SM:BatteryLoggerReceiver"

    const-string v1, "BootRunner: end"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/android/smith/BatteryLoggerReceiver;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/smith/BatteryLoggerReceiver;->access$200()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->msgDone:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    invoke-static {}, Lcom/android/smith/Device;->unLock()V

    .line 197
    return-void

    .line 140
    :pswitch_0
    const-string v0, "SM:BatteryLoggerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.smith.BatteryLogger.CONTROLLER_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "com.android.smith"

    const-string v2, "com.android.smith.LoggerControllerReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "action"

    iget-object v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/android/smith/BatteryLoggerReceiver;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/android/smith/BatteryLoggerReceiver;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/smith/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 150
    invoke-static {v3}, Lcom/android/smith/BatteryLoggerReceiver;->access$002(Z)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "data"

    const-string v2, "not started"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v0, "start"

    iget-object v1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 159
    const-string v0, "logbattery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":setpath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "htclog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    :goto_1
    const-string v0, "0"

    const-string v1, "logbattery"

    const-string v2, ":run:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    .line 168
    iget-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "data"

    const-string v2, "logbattery"

    const-string v3, ":getpath:"

    invoke-static {v2, v3}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "result"

    iget-boolean v2, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/android/smith/BatteryLoggerReceiver;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_2
    const-string v0, "logbattery"

    const-string v1, ":setpath:/data/data/com.android.smith/htclog/"

    invoke-static {v0, v1}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_3
    const-string v0, "stop"

    iget-object v1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    const-string v0, "0"

    const-string v1, "logbattery"

    const-string v2, ":stop:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    goto :goto_2

    .line 177
    :cond_4
    const-string v0, "query"

    iget-object v1, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "1"

    const-string v1, "logbattery"

    const-string v2, ":islogging:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    .line 181
    iget-boolean v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->result:Z

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/smith/BatteryLoggerReceiver$BootRunner;->intent:Landroid/content/Intent;

    const-string v1, "data"

    const-string v2, "logbattery"

    const-string v3, ":getpath:"

    invoke-static {v2, v3}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
