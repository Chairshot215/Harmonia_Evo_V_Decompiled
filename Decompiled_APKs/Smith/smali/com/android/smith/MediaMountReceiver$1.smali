.class final Lcom/android/smith/MediaMountReceiver$1;
.super Landroid/os/Handler;
.source "MediaMountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/MediaMountReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {}, Lcom/android/smith/MediaMountReceiver;->access$008()I

    .line 113
    invoke-static {}, Lcom/android/smith/MediaMountReceiver;->access$000()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 115
    const-string v0, "SM:MediaMountReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reschedule message ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") before boot completed ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/smith/MediaMountReceiver$1;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/smith/MediaMountReceiver$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "SM:MediaMountReceiver"

    const-string v1, "force enable boot completed ..."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {v5}, Lcom/android/smith/BootCompleteReceiver;->setBootCompleted(Z)V

    .line 124
    :cond_1
    invoke-static {v4}, Lcom/android/smith/MediaMountReceiver;->access$002(I)I

    .line 125
    invoke-static {v5}, Lcom/android/smith/MediaMountReceiver;->access$102(Z)Z

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_1
    invoke-static {v4}, Lcom/android/smith/MediaMountReceiver;->access$102(Z)Z

    goto :goto_0

    .line 130
    :pswitch_0
    const-string v0, "SM:MediaMountReceiver"

    const-string v1, "MSG_MOUNTED"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/android/smith/MediaMountReceiver$CommandRunner;

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "logctl"

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":mount:1:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {v1, v6, v2}, Lcom/android/smith/MediaMountReceiver$CommandRunner;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/smith/MediaMountReceiver$CommandRunner;->start()V

    goto :goto_1

    .line 135
    :pswitch_1
    const-string v0, "SM:MediaMountReceiver"

    const-string v1, "MSG_REMOVED"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/android/smith/MediaMountReceiver$CommandRunner;

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "logctl"

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":mount:0:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {v1, v6, v2}, Lcom/android/smith/MediaMountReceiver$CommandRunner;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/smith/MediaMountReceiver$CommandRunner;->start()V

    goto :goto_1

    .line 140
    :pswitch_2
    const-string v0, "SM:MediaMountReceiver"

    const-string v1, "MSG_DONE"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
