.class Lcom/htc/video/HtcVideoView$10;
.super Landroid/os/Handler;
.source "HtcVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcVideoView;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 866
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$3200(Lcom/htc/video/HtcVideoView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->pause()V

    .line 870
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcMediaController;->show(I)V

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->start()V

    .line 873
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$10;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    goto :goto_0
.end method
