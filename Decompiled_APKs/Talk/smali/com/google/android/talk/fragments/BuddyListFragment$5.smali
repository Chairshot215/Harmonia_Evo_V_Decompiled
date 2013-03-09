.class Lcom/google/android/talk/fragments/BuddyListFragment$5;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->createRosterListAdapter()Lcom/google/android/talk/IRosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoButtonClicked(Lcom/google/android/talk/RosterListItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 861
    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getCapabilities()I

    move-result v1

    .line 862
    .local v1, cap:I
    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getPresence()I

    move-result v4

    .line 863
    .local v4, presence:I
    if-eqz v4, :cond_0

    .line 864
    invoke-static {v1}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 866
    iget-object v5, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v5, v5, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v5}, Lcom/google/android/talk/IRosterListAdapter;->getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v0

    .line 868
    .local v0, callState:Lcom/google/android/talk/RosterListAdapter$CallState;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/talk/RosterListAdapter$CallState;->appliesToContact(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 869
    iget-object v5, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v6, v6, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v6, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getContact()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V

    .line 906
    .end local v0           #callState:Lcom/google/android/talk/RosterListAdapter$CallState;
    :cond_0
    :goto_0
    return-void

    .line 875
    .restart local v0       #callState:Lcom/google/android/talk/RosterListAdapter$CallState;
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v5, v5, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v5}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onVideoChatStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 879
    .local v2, delayTime:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v5, v5, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;

    invoke-direct {v6, p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment$5$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$5;Lcom/google/android/talk/RosterListItem;)V

    int-to-long v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 875
    .end local v2           #delayTime:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 898
    .end local v0           #callState:Lcom/google/android/talk/RosterListAdapter$CallState;
    :cond_3
    invoke-static {v1}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 900
    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-virtual {p1}, Lcom/google/android/talk/RosterListItem;->getContact()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v6, v6, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v6, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const/4 v8, 0x1

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>(Ljava/lang/String;JZ)V

    .line 903
    .local v3, info:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    iget-object v5, p0, Lcom/google/android/talk/fragments/BuddyListFragment$5;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v5, v5, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v5, v3}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onOpenChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0
.end method
