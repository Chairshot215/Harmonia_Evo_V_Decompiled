.class Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

.field final synthetic val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mApp:Lcom/google/android/talk/TalkApp;

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->val$invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    goto :goto_0
.end method
