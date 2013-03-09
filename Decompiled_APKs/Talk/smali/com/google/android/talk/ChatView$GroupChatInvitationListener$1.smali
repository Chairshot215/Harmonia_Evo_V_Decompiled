.class Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

.field final synthetic val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$GroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    if-nez v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$3902(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 948
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4002(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4102(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 951
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received MUC invitation from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v2, v2, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v2, v2, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v1, v1, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v2, v2, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    iget-object v3, v3, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/talk/ChatView;->startGroupChatApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView;->access$4400(Lcom/google/android/talk/ChatView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
