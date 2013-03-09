.class Lcom/htc/video/ViewVideo$11;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 1079
    const-string v0, "ViewVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreate] OnVideoSizeChangedListener hight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->videoOriAdj(II)V
    invoke-static {v0, p2, p3}, Lcom/htc/video/ViewVideo;->access$3400(Lcom/htc/video/ViewVideo;II)V

    .line 1085
    iget-object v0, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mPausePlayReason:I
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$3500(Lcom/htc/video/ViewVideo;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo$11;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1093
    :cond_1
    return-void
.end method
