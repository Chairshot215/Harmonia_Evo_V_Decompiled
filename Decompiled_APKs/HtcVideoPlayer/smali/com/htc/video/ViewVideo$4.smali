.class Lcom/htc/video/ViewVideo$4;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
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
    .line 346
    iput-object p1, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$900(Lcom/htc/video/ViewVideo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mTestEffect:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/video/VideoSoundEffectHelper;->triggerCodec(IZ)V

    .line 351
    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mTestEffect:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/video/VideoSoundEffectHelper;->storeCodec(I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/video/VideoSoundEffectHelper;->triggerCodec(IZ)V

    .line 355
    iget-object v0, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/ViewVideo$4;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/video/VideoSoundEffectHelper;->storeCodec(I)V

    goto :goto_0
.end method
