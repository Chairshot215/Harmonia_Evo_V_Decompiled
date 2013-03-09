.class Lcom/htc/video/HtcVideoView$2;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 434
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$202(Lcom/htc/video/HtcVideoView;I)I

    .line 437
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$302(Lcom/htc/video/HtcVideoView;I)I

    .line 438
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$400(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$400(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$200(Lcom/htc/video/HtcVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$300(Lcom/htc/video/HtcVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$200(Lcom/htc/video/HtcVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$300(Lcom/htc/video/HtcVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 443
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$2;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->requestLayout()V

    .line 445
    :cond_1
    return-void
.end method
