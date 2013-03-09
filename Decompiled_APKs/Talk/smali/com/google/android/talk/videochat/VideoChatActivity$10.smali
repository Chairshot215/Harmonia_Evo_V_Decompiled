.class Lcom/google/android/talk/videochat/VideoChatActivity$10;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 1730
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "serviceBinder"

    .prologue
    .line 1733
    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 1735
    .local v2, service:Lcom/google/android/gtalkservice/IGTalkService;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J
    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5400(Lcom/google/android/talk/videochat/VideoChatActivity;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 1736
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v4

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5502(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/gtalkservice/IChatSession;)Lcom/google/android/gtalkservice/IChatSession;

    .line 1737
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5500(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1738
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v4

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5502(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/gtalkservice/IChatSession;)Lcom/google/android/gtalkservice/IChatSession;

    .line 1740
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5500(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v3

    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5600()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gtalkservice/IChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :goto_0
    return-void

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$10;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem getting ChatSession "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1748
    return-void
.end method
