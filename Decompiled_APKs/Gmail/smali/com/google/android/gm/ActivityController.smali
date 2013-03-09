.class public interface abstract Lcom/google/android/gm/ActivityController;
.super Ljava/lang/Object;
.source "ActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ActivityController$ControllableActivity;
    }
.end annotation


# virtual methods
.method public abstract attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V
.end method

.method public abstract attachFragment(Lcom/google/android/gm/ConversationListFragment;)V
.end method

.method public abstract attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V
.end method

.method public abstract enterSearchMode()V
.end method

.method public abstract getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;
.end method

.method public abstract getConversationListContext()Lcom/google/android/gm/ConversationListContext;
.end method

.method public abstract getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;
.end method

.method public abstract getCurrentConversationInfo()Lcom/google/android/gm/ConversationInfo;
.end method

.method public abstract handleActionModeFinished(Landroid/view/ActionMode;)V
.end method

.method public abstract handleActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract handleActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract handleBackPressed()Z
.end method

.method public abstract handleConversationLoadError()V
.end method

.method public abstract handleConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
.end method

.method public abstract handleConversationSelected(I)V
.end method

.method public abstract handleCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end method

.method public abstract handleCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V
.end method

.method public abstract handleKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract handleLabelSelected(Ljava/lang/String;)V
.end method

.method public abstract handleLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleLoaderReset(Landroid/content/Loader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract handlePause()V
.end method

.method public abstract handlePrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end method

.method public abstract handlePrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract handleResume()V
.end method

.method public abstract handleSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract handleStop()V
.end method

.method public abstract handleToggleStar(ZJJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleUpPressed()V
.end method

.method public abstract handleWindowFocusChanged(Z)V
.end method

.method public abstract initialize(Landroid/os/Bundle;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract showLabelList()V
.end method

.method public abstract supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z
.end method
