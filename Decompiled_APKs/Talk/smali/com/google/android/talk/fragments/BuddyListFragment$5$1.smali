.class Lcom/google/android/talk/fragments/BuddyListFragment$5$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$5;->onVideoButtonClicked(Lcom/google/android/talk/RosterListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$5;

.field final synthetic val$item:Lcom/google/android/talk/RosterListItem;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$5;Lcom/google/android/talk/RosterListItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$5;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->val$item:Lcom/google/android/talk/RosterListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$5;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$5;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$5;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$5;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-object v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;->val$item:Lcom/google/android/talk/RosterListItem;

    invoke-virtual {v3}, Lcom/google/android/talk/RosterListItem;->getContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method
