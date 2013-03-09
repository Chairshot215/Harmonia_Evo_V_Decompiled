.class Lcom/google/android/talk/ChatView$GroupChatInvitationListener;
.super Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupChatInvitationListener"
.end annotation


# instance fields
.field volatile mChatView:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "chatView"

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 894
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 899
    return-void
.end method

.method public onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 7
    .parameter "invitation"

    .prologue
    const/4 v3, 0x0

    .line 905
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 907
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-nez v1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v3

    .line 911
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, bareJid:Ljava/lang/String;
    #getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 935
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;-><init>(Lcom/google/android/talk/ChatView$GroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 962
    const/4 v3, 0x1

    goto :goto_0

    .line 964
    :cond_2
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    iget-object v4, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MUC invitation received from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", room "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but cv.mContact is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    .end local v0           #bareJid:Ljava/lang/String;
    .end local v1           #cv:Lcom/google/android/talk/ChatView;
    :catch_0
    move-exception v2

    .line 975
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "talk"

    const-string v4, "onInvitationReceived threw"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    throw v2
.end method
