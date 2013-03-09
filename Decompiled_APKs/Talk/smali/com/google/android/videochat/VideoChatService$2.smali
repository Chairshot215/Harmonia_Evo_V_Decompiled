.class Lcom/google/android/videochat/VideoChatService$2;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Lcom/google/android/videochat/CallManager$CallBoundaryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/VideoChatService;->initCallManager()Lcom/google/android/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private callJid:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "remoteFullJid"
    .parameter "localBareJid"
    .parameter "isVideo"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/videochat/VideoChatService;->postOngoingNotification(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService$2;->callJid:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    #calls: Lcom/google/android/videochat/VideoChatService;->onCallConnected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->access$100(Lcom/google/android/videochat/VideoChatService;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public onDeinit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "remoteFullJid"
    .parameter "localBareJid"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->callJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->callJid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->removeOngoingNotification()V

    .line 305
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getNetworkConnectionManager()Lcom/google/android/videochat/NetworkConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/NetworkConnectionManager;->stopUsingMobileHipri()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    #calls: Lcom/google/android/videochat/VideoChatService;->onCallEnding(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->access$200(Lcom/google/android/videochat/VideoChatService;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onInit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "remoteBareJid"
    .parameter "localBareJid"
    .parameter "isVideo"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$2;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getNetworkConnectionManager()Lcom/google/android/videochat/NetworkConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/NetworkConnectionManager;->startUsingMobileHipriIfOnMobileNetwork()V

    .line 291
    return-void
.end method
