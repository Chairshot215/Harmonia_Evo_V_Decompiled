.class Lcom/google/android/videochat/SelfRenderer$1$2;
.super Ljava/lang/Object;
.source "SelfRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/SelfRenderer$1;->onCameraOpen(Lcom/google/android/videochat/Size;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/videochat/SelfRenderer$1;

.field final synthetic val$cameraOrientation:I

.field final synthetic val$shouldFlip:Z

.field final synthetic val$size:Lcom/google/android/videochat/Size;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/SelfRenderer$1;Lcom/google/android/videochat/Size;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iput-object p2, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$size:Lcom/google/android/videochat/Size;

    iput-boolean p3, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$shouldFlip:Z

    iput p4, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$cameraOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    new-instance v1, Lcom/google/android/videochat/Size;

    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$size:Lcom/google/android/videochat/Size;

    invoke-direct {v1, v2}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    #setter for: Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;
    invoke-static {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->access$602(Lcom/google/android/videochat/SelfRenderer;Lcom/google/android/videochat/Size;)Lcom/google/android/videochat/Size;

    .line 164
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    iget-boolean v1, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$shouldFlip:Z

    #setter for: Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z
    invoke-static {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->access$702(Lcom/google/android/videochat/SelfRenderer;Z)Z

    .line 165
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$cameraOrientation:I

    #setter for: Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I
    invoke-static {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->access$802(Lcom/google/android/videochat/SelfRenderer;I)I

    .line 166
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #calls: Lcom/google/android/videochat/SelfRenderer;->recomputeCameraRotation()V
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$900(Lcom/google/android/videochat/SelfRenderer;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$300(Lcom/google/android/videochat/SelfRenderer;)Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->val$shouldFlip:Z

    invoke-interface {v0, v1}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onCameraOpened(Z)V

    .line 168
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$2;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #calls: Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$200(Lcom/google/android/videochat/SelfRenderer;)V

    .line 169
    return-void
.end method
