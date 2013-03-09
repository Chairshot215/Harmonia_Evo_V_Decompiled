.class final Lcom/htc/music/MediaButtonIntentReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[MediaButtonIntentReceiver]"

    const-string v2, "Handler:MSG_LONGPRESS_TIMEOUT_FF"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$200()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v3}, Lcom/htc/music/MediaButtonIntentReceiver;->access$302(Z)Z

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "ffstart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[MediaButtonIntentReceiver]"

    const-string v2, "Handler:MSG_LONGPRESS_TIMEOUT_RW"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$200()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v3}, Lcom/htc/music/MediaButtonIntentReceiver;->access$302(Z)Z

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "rwstart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "[MediaButtonIntentReceiver]"

    const-string v2, "Handler:MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$200()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[MediaButtonIntentReceiver]"

    const-string v2, "Handler:MSG_HEADSETHOOK_LONGPRESS_TIMEOUT"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v3}, Lcom/htc/music/MediaButtonIntentReceiver;->access$402(Z)Z

    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$200()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "[MediaButtonIntentReceiver]"

    const-string v2, "Handler:MSG_RELEASE_WAKELOCK"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/music/MediaButtonIntentReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
