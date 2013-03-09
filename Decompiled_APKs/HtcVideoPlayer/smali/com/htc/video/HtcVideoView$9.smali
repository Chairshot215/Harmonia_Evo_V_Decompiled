.class Lcom/htc/video/HtcVideoView$9;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 760
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 764
    const-string v4, "HtcVideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "surfaceChanged is called! w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v4, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lcom/htc/video/HtcVideoView;->access$1302(Lcom/htc/video/HtcVideoView;I)I

    .line 766
    iget-object v4, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lcom/htc/video/HtcVideoView;->access$1402(Lcom/htc/video/HtcVideoView;I)I

    .line 767
    iget-object v4, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mTargetState:I
    invoke-static {v4}, Lcom/htc/video/HtcVideoView;->access$1500(Lcom/htc/video/HtcVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 768
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v4}, Lcom/htc/video/HtcVideoView;->access$200(Lcom/htc/video/HtcVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_2

    iget-object v4, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/htc/video/HtcVideoView;->access$300(Lcom/htc/video/HtcVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_2

    move v0, v2

    .line 769
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 770
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1200(Lcom/htc/video/HtcVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    iget-object v3, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/htc/video/HtcVideoView;->access$1200(Lcom/htc/video/HtcVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/video/HtcVideoView;->seekTo(I)V

    .line 778
    :cond_0
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_1
    move v1, v3

    .line 767
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_2
    move v0, v3

    .line 768
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/htc/video/HtcVideoView;->access$2802(Lcom/htc/video/HtcVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 783
    const-string v0, "HtcVideoView"

    const-string v1, "surfaceCreated is called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$2900(Lcom/htc/video/HtcVideoView;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$3000(Lcom/htc/video/HtcVideoView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$3000(Lcom/htc/video/HtcVideoView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 787
    monitor-exit v1

    .line 790
    :cond_0
    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 794
    const-string v0, "HtcVideoView"

    const-string v1, "surfaceDestroyed is called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$2802(Lcom/htc/video/HtcVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 797
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$9;->this$0:Lcom/htc/video/HtcVideoView;

    const/4 v1, 0x1

    #calls: Lcom/htc/video/HtcVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$3100(Lcom/htc/video/HtcVideoView;Z)V

    .line 799
    return-void
.end method
