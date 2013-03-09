.class Lcom/htc/video/HtcVideoView$3;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 448
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "mp"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 450
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mCurrentState:I
    invoke-static {v2, v6}, Lcom/htc/video/HtcVideoView;->access$502(Lcom/htc/video/HtcVideoView;I)I

    .line 453
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 456
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_b

    .line 457
    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    move v2, v4

    :goto_0
    #setter for: Lcom/htc/video/HtcVideoView;->mCanPause:Z
    invoke-static {v5, v2}, Lcom/htc/video/HtcVideoView;->access$602(Lcom/htc/video/HtcVideoView;Z)Z

    .line 459
    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1
    move v2, v4

    :goto_1
    #setter for: Lcom/htc/video/HtcVideoView;->mCanSeekBack:Z
    invoke-static {v5, v2}, Lcom/htc/video/HtcVideoView;->access$702(Lcom/htc/video/HtcVideoView;Z)Z

    .line 461
    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    move v2, v4

    :goto_2
    #setter for: Lcom/htc/video/HtcVideoView;->mCanSeekForward:Z
    invoke-static {v5, v2}, Lcom/htc/video/HtcVideoView;->access$802(Lcom/htc/video/HtcVideoView;Z)Z

    .line 467
    :goto_3
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$900(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$900(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/video/HtcMediaController;->setEnabled(Z)V

    .line 473
    :cond_4
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    #setter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v2, v4}, Lcom/htc/video/HtcVideoView;->access$202(Lcom/htc/video/HtcVideoView;I)I

    .line 474
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    #setter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v2, v4}, Lcom/htc/video/HtcVideoView;->access$302(Lcom/htc/video/HtcVideoView;I)I

    .line 476
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1200(Lcom/htc/video/HtcVideoView;)I

    move-result v1

    .line 477
    .local v1, seekToPosition:I
    if-eqz v1, :cond_5

    .line 478
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v2, v1}, Lcom/htc/video/HtcVideoView;->seekTo(I)V

    .line 480
    :cond_5
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$200(Lcom/htc/video/HtcVideoView;)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$300(Lcom/htc/video/HtcVideoView;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 481
    const-string v2, "HtcVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onPrepared] Video size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v5}, Lcom/htc/video/HtcVideoView;->access$200(Lcom/htc/video/HtcVideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v5}, Lcom/htc/video/HtcVideoView;->access$300(Lcom/htc/video/HtcVideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v2}, Lcom/htc/video/HtcVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v4}, Lcom/htc/video/HtcVideoView;->access$200(Lcom/htc/video/HtcVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v5}, Lcom/htc/video/HtcVideoView;->access$300(Lcom/htc/video/HtcVideoView;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 483
    const-string v2, "HtcVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onPrepared] Surface size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mSurfaceWidth:I
    invoke-static {v5}, Lcom/htc/video/HtcVideoView;->access$1300(Lcom/htc/video/HtcVideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mSurfaceHeight:I
    invoke-static {v5}, Lcom/htc/video/HtcVideoView;->access$1400(Lcom/htc/video/HtcVideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_6
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mTargetState:I
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1500(Lcom/htc/video/HtcVideoView;)I

    move-result v2

    if-ne v2, v7, :cond_c

    .line 490
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v2}, Lcom/htc/video/HtcVideoView;->start()V

    .line 525
    :cond_7
    :goto_4
    return-void

    .end local v1           #seekToPosition:I
    :cond_8
    move v2, v3

    .line 457
    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 459
    goto/16 :goto_1

    :cond_a
    move v2, v3

    .line 461
    goto/16 :goto_2

    .line 464
    :cond_b
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    iget-object v5, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    iget-object v6, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mCanSeekForward:Z
    invoke-static {v6, v4}, Lcom/htc/video/HtcVideoView;->access$802(Lcom/htc/video/HtcVideoView;Z)Z

    move-result v6

    #setter for: Lcom/htc/video/HtcVideoView;->mCanSeekForward:Z
    invoke-static {v5, v6}, Lcom/htc/video/HtcVideoView;->access$802(Lcom/htc/video/HtcVideoView;Z)Z

    move-result v5

    #setter for: Lcom/htc/video/HtcVideoView;->mCanPause:Z
    invoke-static {v2, v5}, Lcom/htc/video/HtcVideoView;->access$602(Lcom/htc/video/HtcVideoView;Z)Z

    goto/16 :goto_3

    .line 494
    .restart local v1       #seekToPosition:I
    :cond_c
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v2}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_d

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v2}, Lcom/htc/video/HtcVideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_7

    .line 496
    :cond_d
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/video/HtcMediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 497
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$3;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_4
.end method
