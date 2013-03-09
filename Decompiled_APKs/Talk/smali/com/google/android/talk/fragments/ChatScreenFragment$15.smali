.class Lcom/google/android/talk/fragments/ChatScreenFragment$15;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field final synthetic val$accountId:J

.field final synthetic val$contact:Ljava/lang/String;

.field final synthetic val$invitee:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$contact:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$accountId:J

    iput-object p5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$invitee:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2034
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$contact:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$accountId:J

    const/4 v6, 0x0

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v1, v2, v4, v5, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v3

    .line 2036
    .local v3, session:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v3, :cond_1

    .line 2041
    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gtalkservice/IChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3202(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 2043
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$accountId:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/app/Activity;Lcom/google/android/gtalkservice/IChatSession;J)V

    .line 2048
    .local v0, listener:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
    invoke-interface {v3, v0}, Lcom/google/android/gtalkservice/IChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 2056
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/util/ChatList;->suspendRequery()V

    .line 2058
    .end local v0           #listener:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->val$invitee:Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/google/android/gtalkservice/IChatSession;->inviteContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    :cond_1
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v1

    goto :goto_0
.end method
