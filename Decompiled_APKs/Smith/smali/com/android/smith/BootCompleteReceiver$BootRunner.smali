.class Lcom/android/smith/BootCompleteReceiver$BootRunner;
.super Ljava/lang/Thread;
.source "BootCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/BootCompleteReceiver;
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

    .line 117
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->result:Z

    .line 118
    iput p1, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgTask:I

    .line 119
    iput p2, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgDone:I

    .line 120
    iput-object v1, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->action:Ljava/lang/String;

    .line 121
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
    .line 124
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->intent:Landroid/content/Intent;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->result:Z

    .line 125
    iput p1, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgTask:I

    .line 126
    iput p2, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgDone:I

    .line 127
    iput-object p4, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->action:Ljava/lang/String;

    .line 128
    iput p5, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->arg1:I

    .line 129
    iput p6, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->arg2:I

    .line 130
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 134
    const-string v3, "SM:BootCompleteReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BootRunner: begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgTask:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget v3, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgTask:I

    packed-switch v3, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    const-string v3, "SM:BootCompleteReceiver"

    const-string v4, "BootRunner: end"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->access$200()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->access$200()Landroid/os/Handler;

    move-result-object v4

    iget v5, p0, Lcom/android/smith/BootCompleteReceiver$BootRunner;->msgDone:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void

    .line 139
    :pswitch_0
    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/smith/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 141
    invoke-static {}, Lcom/android/smith/LoggerController;->clearAllRandom()V

    .line 146
    const-string v3, "logctl"

    const-string v4, ":islogging:"

    invoke-static {v3, v4}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, logging:Ljava/lang/String;
    const-string v3, "logctl"

    const-string v4, ":getpath:"

    invoke-static {v3, v4}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, path:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.smith.SYSTEMLOGGERS_STATUS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, notificaionIntent:Landroid/content/Intent;
    const-string v3, "status"

    const-string v4, "enabled"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
