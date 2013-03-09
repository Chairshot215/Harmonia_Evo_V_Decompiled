.class Lcom/google/android/talk/videochat/VideoChatActivity$3$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$3;->onInitialFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$3;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$3;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$3;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoState:I
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$600(Lcom/google/android/talk/videochat/VideoChatActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$3;

    iget-object v2, v2, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)I

    move-result v2

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->transitionVideoState(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$800(Lcom/google/android/talk/videochat/VideoChatActivity;II)V

    .line 416
    return-void
.end method
