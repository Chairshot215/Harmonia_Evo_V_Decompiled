.class Lcom/google/android/videochat/SelfRenderer$1$1;
.super Ljava/lang/Object;
.source "SelfRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/SelfRenderer$1;->onFrameOutputSet(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/videochat/SelfRenderer$1;

.field final synthetic val$params:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/SelfRenderer$1;Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer$1$1;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iput-object p2, p0, Lcom/google/android/videochat/SelfRenderer$1$1;->val$params:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$1;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    new-instance v1, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer$1$1;->val$params:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    invoke-direct {v1, v2}, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;-><init>(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V

    #setter for: Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;
    invoke-static {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->access$102(Lcom/google/android/videochat/SelfRenderer;Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 101
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1$1;->this$1:Lcom/google/android/videochat/SelfRenderer$1;

    iget-object v0, v0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #calls: Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$200(Lcom/google/android/videochat/SelfRenderer;)V

    .line 102
    return-void
.end method
