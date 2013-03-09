.class Lcom/htc/music/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v6, "[MediaPlaybackService]"

    const-string v7, "BroadcastReceiver onReceive"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v6, "forcePlay"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_2

    const-string v6, "[MediaPlaybackService]"

    const-string v7, "TelephonyManager NULL"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    const-string v6, "[MediaPlaybackService]"

    const-string v7, "Phone is not idle && ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v6, "resume"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "pause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "stop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "[MediaPlaybackService]"

    const-string v7, "call state is not idle && !CMDRESUME.equals(cmd) && !CMDPAUSE.equals(cmd) && !CMDSTOP.equals(cmd) => return"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v6, "next"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.android.music.musicservicecommand.next"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_6
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    :cond_7
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto :goto_0

    :cond_8
    const-string v6, "previous"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    if-eqz v2, :cond_a

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    :cond_a
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->prev()V

    goto/16 :goto_0

    :cond_b
    const-string v6, "togglepause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_c
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :cond_e
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    const-string v6, "pause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    :cond_11
    const-string v6, "play"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    :cond_12
    const-string v6, "stop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    :cond_13
    const-string v6, "ffstart"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;I)I

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2402(Lcom/htc/music/MediaPlaybackService;I)I

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x104

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_14
    const-string v6, "rwstart"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;I)I

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2402(Lcom/htc/music/MediaPlaybackService;I)I

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x104

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_15
    const-string v6, "ffstop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "rwstop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_16
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2402(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    :cond_17
    const-string v6, "resume"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    :cond_18
    const-string v6, "android.htc.intent.action.PLAYBACK_RINGTONE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_19
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J
    invoke-static {v6, v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;J)J

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "[MediaPlaybackService]"

    const-string v7, "Phone Idel && ACTION_AUDIO_BECOMING_NOISY && FADEIN"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    :cond_1a
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    :cond_1b
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0
.end method
