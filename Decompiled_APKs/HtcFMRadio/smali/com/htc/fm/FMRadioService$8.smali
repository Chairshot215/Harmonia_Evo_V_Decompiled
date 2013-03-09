.class Lcom/htc/fm/FMRadioService$8;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1772
    packed-switch p1, :pswitch_data_0

    .line 1830
    :pswitch_0
    const-string v0, "FMRadioService"

    const-string v1, "[onAudioFocusChange] Unknown audio focus change code"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1774
    :pswitch_1
    const-string v0, "FMRadioService"

    const-string v1, "[onAudioFocusChange] received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/htc/fm/FMRadioService;->access$2102(Lcom/htc/fm/FMRadioService;Z)Z

    .line 1783
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v0, v2}, Lcom/htc/fm/FMRadioService;->access$2202(Lcom/htc/fm/FMRadioService;Z)Z

    .line 1785
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto :goto_0

    .line 1789
    :pswitch_2
    const-string v0, "FMRadioService"

    const-string v1, "[onAudioFocusChange] received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/htc/fm/FMRadioService;->access$2102(Lcom/htc/fm/FMRadioService;Z)Z

    .line 1798
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v0, v2}, Lcom/htc/fm/FMRadioService;->access$2202(Lcom/htc/fm/FMRadioService;Z)Z

    .line 1799
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->mute()V
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$2300(Lcom/htc/fm/FMRadioService;)V

    goto :goto_0

    .line 1805
    :pswitch_3
    const-string v0, "FMRadioService"

    const-string v1, "[onAudioFocusChange] received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/htc/fm/FMRadioService;->access$2102(Lcom/htc/fm/FMRadioService;Z)Z

    .line 1809
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v0, v3}, Lcom/htc/fm/FMRadioService;->access$2202(Lcom/htc/fm/FMRadioService;Z)Z

    .line 1810
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->mute()V
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$2300(Lcom/htc/fm/FMRadioService;)V

    goto :goto_0

    .line 1816
    :pswitch_4
    const-string v0, "FMRadioService"

    const-string v1, "[onAudioFocusChange] received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LossOfFocus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$2100(Lcom/htc/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),LossOfFocusCanDuck("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$2200(Lcom/htc/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$2100(Lcom/htc/fm/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$2200(Lcom/htc/fm/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "[onAudioFocusChange] set unmute"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$200(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1824
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$8;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$200(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1772
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
