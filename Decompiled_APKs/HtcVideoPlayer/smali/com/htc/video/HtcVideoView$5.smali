.class Lcom/htc/video/HtcVideoView$5;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 545
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x0

    .line 548
    const-string v1, "HtcVideoView"

    const-string v2, "[onSeekComplete] Seek completion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    const/16 v2, 0x22d9

    invoke-virtual {v1, v2}, Lcom/htc/video/HtcVideoView;->getProperty(I)I

    move-result v0

    .line 551
    .local v0, retMode:I
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v1

    iget v1, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    if-gez v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 554
    const-string v1, "HtcVideoView"

    const-string v2, "[onSeekComplete] framework status is normal speed, update UI from rewind to normal."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v1

    iput v3, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 556
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1, v3}, Lcom/htc/video/HtcMediaController;->doChangeHighSpeedMode(I)Z

    .line 557
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->show()V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mIsSeeking:Z
    invoke-static {v1, v3}, Lcom/htc/video/HtcVideoView;->access$1702(Lcom/htc/video/HtcVideoView;Z)Z

    .line 562
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1800(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$5;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1800(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
