.class Lcom/htc/video/HtcVideoView$4;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 529
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 531
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$502(Lcom/htc/video/HtcVideoView;I)I

    .line 532
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mTargetState:I
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$1502(Lcom/htc/video/HtcVideoView;I)I

    .line 533
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    iget v0, v0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    if-ltz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1600(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$1600(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$4;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 539
    :cond_1
    return-void
.end method
