.class final Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;
.super Landroid/os/Handler;
.source "VideoChatOutputProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    .line 42
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 48
    .local v1, intent:Landroid/content/Intent;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 49
    .local v2, startId:I
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.google.android.videochat.ACTION_MISSED_CALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    #calls: Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->handleMissedCallIntent(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->access$000(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/content/Intent;)V

    .line 58
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->stopSelf(I)V

    .line 59
    return-void

    .line 53
    :cond_1
    const-string v3, "com.google.android.videochat.ACTION_END_CAUSE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    #calls: Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->handleEndCauseIntent(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->access$100(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v3, "com.google.android.videochat.ACTION_CALL_IN_PROGRESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    #calls: Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->handleCallInProgressIntent(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->access$200(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/content/Intent;)V

    goto :goto_0
.end method
