.class Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Lcom/google/android/videochat/Renderer$RendererThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlView$GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteRendererCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlView$GLRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameGeometryChanged(FFF)V
    .locals 0
    .parameter "displayAspectRatio"
    .parameter "xClip"
    .parameter "yClip"

    .prologue
    .line 557
    return-void
.end method

.method public onInitialFrame()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialRemoteFrame:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1402(Lcom/google/android/talk/videochat/GlView$GLRenderer;Z)Z

    .line 548
    return-void
.end method

.method public onOutputTextureNameChanged(I)V
    .locals 0
    .parameter "newTextureName"

    .prologue
    .line 553
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mOwningView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1300(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlView;->queueEvent(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method
