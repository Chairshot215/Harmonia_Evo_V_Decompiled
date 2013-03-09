.class public Lcom/google/android/videochat/VideoChatService$SoftBinder;
.super Landroid/os/Binder;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoftBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method public constructor <init>(Lcom/google/android/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addRemoteCallStateListener(Lcom/google/android/videochat/CallStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mStopped:Z
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$300(Lcom/google/android/videochat/VideoChatService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->addCallStateListener(Lcom/google/android/videochat/CallStateListener;)V

    goto :goto_0
.end method

.method public removeRemoteCallStateListener(Lcom/google/android/videochat/CallStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mStopped:Z
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$300(Lcom/google/android/videochat/VideoChatService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->removeCallStateListener(Lcom/google/android/videochat/CallStateListener;)V

    goto :goto_0
.end method

.method public requestCallStateUpdate(Ljava/lang/Object;)V
    .locals 1
    .parameter "callbackParam"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mStopped:Z
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$300(Lcom/google/android/videochat/VideoChatService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$SoftBinder;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;
    invoke-static {v0}, Lcom/google/android/videochat/VideoChatService;->access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->requestCallStateUpdate(Ljava/lang/Object;)V

    goto :goto_0
.end method
