.class Lcom/htc/video/ViewVideo$5;
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
    .line 360
    iput-object p1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1300(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v0

    .line 371
    .local v0, t:Landroid/widget/Toast;
    if-nez v0, :cond_4

    .line 372
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$900(Lcom/htc/video/ViewVideo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v2, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mTestEffect:I
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$1000(Lcom/htc/video/ViewVideo;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/video/VideoSoundEffectHelper;->getSettingStringResource(I)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 376
    :goto_1
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;
    invoke-static {v1, v0}, Lcom/htc/video/ViewVideo;->access$1302(Lcom/htc/video/ViewVideo;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 384
    :goto_2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mEffectUse:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1400(Lcom/htc/video/ViewVideo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v2, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/video/VideoSoundEffectHelper;->getSettingStringResource(I)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_1

    .line 379
    :cond_4
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$900(Lcom/htc/video/ViewVideo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mTestEffect:I
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$1000(Lcom/htc/video/ViewVideo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/video/VideoSoundEffectHelper;->getSettingStringResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .line 382
    :cond_5
    iget-object v1, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$5;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/video/VideoSoundEffectHelper;->getSettingStringResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
