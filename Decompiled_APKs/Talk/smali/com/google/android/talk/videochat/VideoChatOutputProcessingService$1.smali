.class Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;
.super Ljava/lang/Object;
.source "VideoChatOutputProcessingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    #getter for: Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceTaskBuffer:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->access$300(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    #getter for: Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundHandler:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->access$400(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    #getter for: Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceTaskBuffer:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->access$300(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 230
    return-void
.end method
