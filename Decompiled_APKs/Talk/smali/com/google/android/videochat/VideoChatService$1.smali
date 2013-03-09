.class Lcom/google/android/videochat/VideoChatService$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService$1;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    const-string v1, "JINGLE_INFO_STANZA"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, payload:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService$1;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;
    invoke-static {v1}, Lcom/google/android/videochat/VideoChatService;->access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService$1;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;
    invoke-static {v1}, Lcom/google/android/videochat/VideoChatService;->access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/videochat/CallManager;->handleJingleInfoStanza(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v1, "vclib:VideoChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t process new jingle ifo stanza because mCallManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/videochat/VideoChatService$1;->this$0:Lcom/google/android/videochat/VideoChatService;

    #getter for: Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;
    invoke-static {v3}, Lcom/google/android/videochat/VideoChatService;->access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", payload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
