.class Lcom/google/android/talk/videochat/VideoChatActivity$6;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->clickHandler(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/CameraTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlView;->switchCamera(Lcom/google/android/talk/videochat/CameraTracker;)V

    .line 756
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$900(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    return-void
.end method
