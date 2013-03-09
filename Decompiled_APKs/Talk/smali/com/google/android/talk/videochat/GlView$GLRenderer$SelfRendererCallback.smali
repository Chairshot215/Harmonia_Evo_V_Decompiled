.class Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlView$GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelfRendererCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlView$GLRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdealCaptureSize()Lcom/google/android/videochat/Size;
    .locals 3

    .prologue
    .line 604
    invoke-static {}, Lcom/google/android/talk/videochat/EffectsController;->anyAvailableEffectsCanClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Lcom/google/android/videochat/Size;

    const/16 v1, 0x280

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/Size;-><init>(II)V

    .line 608
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/videochat/Size;

    const/16 v1, 0x140

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/Size;-><init>(II)V

    goto :goto_0
.end method

.method public onCameraOpened(Z)V
    .locals 1
    .parameter "isFrontCamera"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/GlView$GLRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->onCameraOpened(Z)V

    .line 600
    return-void
.end method

.method public onFrameGeometryChanged(FFF)V
    .locals 3
    .parameter "displayAspectRatio"
    .parameter "xClip"
    .parameter "yClip"

    .prologue
    .line 588
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "Talk:GlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameGeometryChanged AR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #setter for: Lcom/google/android/talk/videochat/GlView;->mSelfBaseXClip:F
    invoke-static {v0, p2}, Lcom/google/android/talk/videochat/GlView;->access$802(Lcom/google/android/talk/videochat/GlView;F)F

    .line 593
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #setter for: Lcom/google/android/talk/videochat/GlView;->mSelfBaseYClip:F
    invoke-static {v0, p3}, Lcom/google/android/talk/videochat/GlView;->access$902(Lcom/google/android/talk/videochat/GlView;F)F

    .line 594
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameAspectRatio(F)V

    .line 595
    return-void
.end method

.method public onInitialFrame()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialSelfFrame:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1502(Lcom/google/android/talk/videochat/GlView$GLRenderer;Z)Z

    .line 572
    return-void
.end method

.method public onOutputTextureNameChanged(I)V
    .locals 2
    .parameter "newTextureName"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #setter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I
    invoke-static {v0, p1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1602(Lcom/google/android/talk/videochat/GlView$GLRenderer;I)I

    .line 577
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1700(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/TextureRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I
    invoke-static {v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1600(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 578
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1800(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1900(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1800(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I
    invoke-static {v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1600(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->setInputTextureName(I)V

    .line 580
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1700(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/TextureRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I
    invoke-static {v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$2000(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 581
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$2100(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I
    invoke-static {v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$2000(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->overrideEncodeTexture(I)V

    .line 583
    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mOwningView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1300(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlView;->queueEvent(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method
