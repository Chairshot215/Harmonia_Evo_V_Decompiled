.class Lcom/htc/music/DMPMusicPlaybackService$1;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "Unknown audio focus change code"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$002(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMPMusicPlaybackService;->pause()V

    goto :goto_0

    :pswitch_2
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v4}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$002(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMPMusicPlaybackService;->pause()V

    goto :goto_0

    :pswitch_3
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v4}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$002(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setVolume(F)V

    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "Mute since received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v2

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$100(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    goto/16 :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$000(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$002(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$1;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setVolume(F)V

    :cond_4
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "Unmute since received AUDIOFOCUS_GAIN"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
