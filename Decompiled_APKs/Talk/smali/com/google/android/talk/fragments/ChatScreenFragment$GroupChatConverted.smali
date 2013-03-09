.class Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupChatConverted"
.end annotation


# instance fields
.field mAccountId:J

.field mActivity:Landroid/app/Activity;

.field mChatSession:Lcom/google/android/gtalkservice/IChatSession;

.field mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/app/Activity;Lcom/google/android/gtalkservice/IChatSession;J)V
    .locals 0
    .parameter "fragment"
    .parameter "activity"
    .parameter "session"
    .parameter "accountId"

    .prologue
    .line 1917
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 1918
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1919
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    .line 1920
    iput-object p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 1921
    iput-wide p4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    .line 1922
    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 2003
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 1993
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 1995
    return-void
.end method

.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1925
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1926
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    .line 1927
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 1928
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 1942
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1943
    .local v9, c:Lcom/google/android/talk/fragments/ChatScreenFragment;
    iget-object v8, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    .line 1944
    .local v8, a:Landroid/app/Activity;
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1952
    :cond_1
    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z
    invoke-static {v9}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertedToGroupChat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v9, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 1954
    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1955
    .local v6, fragment:Lcom/google/android/talk/fragments/ChatScreenFragment;
    iget-wide v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    .line 1956
    .local v3, accountId:J
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1957
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 1958
    .local v2, service:Lcom/google/android/gtalkservice/IGTalkService;
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;

    move-object v1, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;Lcom/google/android/gtalkservice/IGTalkService;JLjava/lang/String;Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1977
    .end local v2           #service:Lcom/google/android/gtalkservice/IGTalkService;
    :cond_2
    const/4 v0, 0x0

    #setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z
    invoke-static {v9, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3202(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 1979
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0, p0}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1980
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->clearRefs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1981
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 2001
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "from"
    .parameter "body"
    .parameter "notify"

    .prologue
    .line 1997
    return-void
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 1999
    return-void
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 2005
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 2007
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x0

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 1935
    return-void
.end method
