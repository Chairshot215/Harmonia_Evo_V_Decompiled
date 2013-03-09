.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;
.super Ljava/lang/Object;
.source "ChatMgr.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IGroupChatInvitationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

.field final synthetic val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1078
    check-cast p1, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;->call(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)Z

    move-result v0

    return v0
.end method
