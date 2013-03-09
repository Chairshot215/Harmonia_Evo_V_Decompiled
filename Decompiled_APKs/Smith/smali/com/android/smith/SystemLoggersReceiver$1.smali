.class final Lcom/android/smith/SystemLoggersReceiver$1;
.super Landroid/os/Handler;
.source "SystemLoggersReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggersReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 83
    invoke-static {}, Lcom/android/smith/MediaMountReceiver;->isInMediaMountReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "SM:SystemLoggersReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reschedule message ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while media mount receiver running ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggersReceiver$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/smith/SystemLoggersReceiver$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    const-string v0, "SM:SystemLoggersReceiver"

    const-string v1, "MSG_CONTROLLER_SYSTEMLOGGERS"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/android/smith/SystemLoggersReceiver$BootRunner;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/16 v3, 0x64

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct/range {v0 .. v6}, Lcom/android/smith/SystemLoggersReceiver$BootRunner;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v0}, Lcom/android/smith/SystemLoggersReceiver$BootRunner;->start()V

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "SM:SystemLoggersReceiver"

    const-string v1, "MSG_CONTROLLER_SYSTEMLOGGERS_END"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
