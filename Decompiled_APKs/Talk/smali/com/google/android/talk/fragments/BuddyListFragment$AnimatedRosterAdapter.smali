.class Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;
.super Lcom/google/android/talk/AnimatedAdapter2;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/talk/IRosterListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedRosterAdapter"
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/talk/IRosterListAdapter;

.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 3
    .parameter
    .parameter "adapter"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    move-object v0, p2

    .line 718
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/AnimatedAdapter2;-><init>(Landroid/widget/BaseAdapter;I)V

    .line 720
    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    .line 721
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "searchString"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveChats()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v0

    return v0
.end method

.method public init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "accountId"
    .parameter "activity"
    .parameter "runnable"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/talk/IRosterListAdapter;->init(JLandroid/app/Activity;Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/talk/IRosterListAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 807
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 812
    return-void
.end method

.method public setAccountId(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->setAccountId(J)V

    .line 751
    return-void
.end method

.method public setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 1
    .parameter "callState"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 756
    return-void
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V
    .locals 1
    .parameter "mode"
    .parameter "sortMode"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 827
    return-void
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 1
    .parameter "focus"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setFocus(Landroid/content/Intent;)V

    .line 766
    return-void
.end method

.method public setIncludeSelfItem(Z)V
    .locals 1
    .parameter "include"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIncludeSelfItem(Z)V

    .line 771
    return-void
.end method

.method public setIsOnline(Z)Z
    .locals 1
    .parameter "isOnline"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIsOnline(Z)Z

    move-result v0

    return v0
.end method

.method public setNarrowLayout(Z)V
    .locals 1
    .parameter "narrow"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 781
    return-void
.end method

.method public setNeedForceLoad(Z)V
    .locals 1
    .parameter "forceLoad"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNeedForceLoad(Z)V

    .line 786
    return-void
.end method

.method public setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V

    .line 822
    return-void
.end method

.method public setSelfStatusCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "selfCursor"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    .line 791
    return-void
.end method

.method public suppressIndent()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->suppressIndent()V

    .line 796
    return-void
.end method

.method public suppressVideoButton(Z)V
    .locals 1
    .parameter "suppress"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->suppressVideoButton(Z)V

    .line 801
    return-void
.end method
