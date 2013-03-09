.class Lcom/htc/music/MediaPlaybackService$4;
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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x13

    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver.onReceive(): a2dpOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v3, "[MediaPlaybackService]"

    const-string v4, "mA2DPReceiver.onReceive(): mPlayer.isPlaying() == true"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "mA2DPReceiver.onReceive(): mPlayer.isPlaying() == false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "mA2DPReceiver.onReceive(): mPlayer.isInitialized() == false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "mA2DPReceiver.onReceive(), mNonUiHandler is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_1

    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver, a2dpOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPlaying is true!, BT headset is disconnected, pause it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto :goto_1
.end method
