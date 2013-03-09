.class Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;
.super Lcom/google/android/gtalkservice/IRosterListener$Stub;
.source "GroupChatInviteeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RosterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 53
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RosterListener.presenceChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->access$000(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->forceLoad()V

    .line 57
    return-void
.end method

.method public rosterChanged()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->forceLoad()V

    .line 50
    return-void
.end method

.method public selfPresenceChanged()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
