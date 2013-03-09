.class Lcom/htc/video/HtcVideoView$1;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/HtcVideoView;->stopPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcVideoView;

.field final synthetic val$releaseMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcVideoView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$1;->this$0:Lcom/htc/video/HtcVideoView;

    iput-object p2, p0, Lcom/htc/video/HtcVideoView$1;->val$releaseMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 329
    const-string v0, "HtcVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopPlayback] Start thread to stop http: releaseMediaPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$1;->val$releaseMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$1;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$100(Lcom/htc/video/HtcVideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$1;->val$releaseMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$1;->val$releaseMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$1;->val$releaseMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 333
    const-string v0, "HtcVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopPlayback] End: releaseMediaPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$1;->val$releaseMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method
