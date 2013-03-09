.class Lcom/google/android/videochat/CallStateClient$2;
.super Ljava/lang/Object;
.source "CallStateClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallStateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallStateClient;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallStateClient;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient$2;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 156
    move-object v0, p2

    check-cast v0, Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .line 157
    .local v0, s:Lcom/google/android/videochat/VideoChatService$SoftBinder;
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient$2;->this$0:Lcom/google/android/videochat/CallStateClient;

    #calls: Lcom/google/android/videochat/CallStateClient;->onSoftVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$SoftBinder;)V
    invoke-static {v1, v0}, Lcom/google/android/videochat/CallStateClient;->access$000(Lcom/google/android/videochat/CallStateClient;Lcom/google/android/videochat/VideoChatService$SoftBinder;)V

    .line 158
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$2;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->onDisconnected()V

    .line 166
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$2;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->stopListening()V

    .line 167
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$2;->this$0:Lcom/google/android/videochat/CallStateClient;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;
    invoke-static {v0, v1}, Lcom/google/android/videochat/CallStateClient;->access$102(Lcom/google/android/videochat/CallStateClient;Lcom/google/android/videochat/VideoChatService$SoftBinder;)Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .line 168
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$2;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->startListening()V

    .line 169
    return-void
.end method
