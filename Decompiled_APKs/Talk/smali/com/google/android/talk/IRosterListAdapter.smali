.class public interface abstract Lcom/google/android/talk/IRosterListAdapter;
.super Ljava/lang/Object;
.source "IRosterListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;
    }
.end annotation


# virtual methods
.method public abstract changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
.end method

.method public abstract getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
.end method

.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract hasActiveChats()Z
.end method

.method public abstract init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
.end method

.method public abstract isScrolling()Z
.end method

.method public abstract setAccountId(J)V
.end method

.method public abstract setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
.end method

.method public abstract setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V
.end method

.method public abstract setFocus(Landroid/content/Intent;)V
.end method

.method public abstract setIncludeSelfItem(Z)V
.end method

.method public abstract setIsOnline(Z)Z
.end method

.method public abstract setNarrowLayout(Z)V
.end method

.method public abstract setNeedForceLoad(Z)V
.end method

.method public abstract setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V
.end method

.method public abstract setSelfStatusCursor(Landroid/database/Cursor;)V
.end method

.method public abstract suppressIndent()V
.end method

.method public abstract suppressVideoButton(Z)V
.end method
