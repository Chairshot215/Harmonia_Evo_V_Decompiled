.class Lcom/htc/music/MediaPlaybackService$5;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 8

    const/high16 v7, 0x3f80

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Unknown audio focus change code"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    :pswitch_2
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v4

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v3

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->printATSStopMusicByPhoneCallLog()V

    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v4

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v2}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Mute since received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move v0, v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    :cond_6
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Unmute since received AUDIOFOCUS_GAIN"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
