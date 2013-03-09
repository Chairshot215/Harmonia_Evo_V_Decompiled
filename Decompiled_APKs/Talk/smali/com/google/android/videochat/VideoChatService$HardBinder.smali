.class public Lcom/google/android/videochat/VideoChatService$HardBinder;
.super Landroid/os/Binder;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HardBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method public constructor <init>(Lcom/google/android/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService$HardBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallSession()Lcom/google/android/videochat/CallSession;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$HardBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #calls: Lcom/google/android/videochat/VideoChatService;->getCallSession()Lcom/google/android/videochat/CallSession;
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$400(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallSession;

    move-result-object v0

    return-object v0
.end method

.method setOutputReceiverComponent(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "receiverComponent"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$HardBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/VideoChatService;->setOutputReceiverComponent(Landroid/content/ComponentName;)V

    .line 385
    return-void
.end method
