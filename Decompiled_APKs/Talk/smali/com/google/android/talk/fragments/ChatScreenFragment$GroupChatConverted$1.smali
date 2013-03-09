.class Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

.field final synthetic val$accountId:J

.field final synthetic val$fragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field final synthetic val$groupChatRoom:Ljava/lang/String;

.field final synthetic val$oldJid:Ljava/lang/String;

.field final synthetic val$service:Lcom/google/android/gtalkservice/IGTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;Lcom/google/android/gtalkservice/IGTalkService;JLjava/lang/String;Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$service:Lcom/google/android/gtalkservice/IGTalkService;

    iput-wide p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$accountId:J

    iput-object p5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$oldJid:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$fragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iput-object p7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$groupChatRoom:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1962
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$service:Lcom/google/android/gtalkservice/IGTalkService;

    iget-wide v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$accountId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 1964
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$oldJid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1965
    .local v0, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v0, :cond_0

    .line 1966
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$fragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatList;->resumeRequery()V

    .line 1973
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$fragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$groupChatRoom:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$accountId:J

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    .line 1974
    return-void

    .line 1968
    :catch_0
    move-exception v2

    goto :goto_0
.end method
