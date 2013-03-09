.class public interface abstract Lcom/google/android/gm/ActionBarView;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# virtual methods
.method public abstract enterSearchMode()Z
.end method

.method public abstract exitSearchEntryMode()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMode()I
.end method

.method public abstract getOptionsMenuId()I
.end method

.method public abstract handleRestore(Landroid/os/Bundle;)V
.end method

.method public abstract handleSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V
.end method

.method public abstract isSearchQueryEntryMode()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStatusResult(Ljava/lang/String;I)V
.end method

.method public abstract prepareOptionsMenu()V
.end method

.method public abstract setActionBarIconBack()V
.end method

.method public abstract setActionBarIconNormal()V
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method

.method public abstract setMode(I)Z
.end method

.method public abstract setSearch(Landroid/view/Menu;)V
.end method

.method public abstract updateActionBar([Ljava/lang/String;Ljava/lang/String;)V
.end method
