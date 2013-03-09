.class Lcom/google/android/talk/videochat/VideoChatActivity$3;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
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
    .line 405
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialFrame()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrameLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrame:Z
    invoke-static {v0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$502(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 410
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoState:I
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$600(Lcom/google/android/talk/videochat/VideoChatActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$900(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$3$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$3$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    :cond_0
    monitor-exit v1

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
