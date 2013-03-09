.class public interface abstract Lcom/google/android/gm/ActivityController$ControllableActivity;
.super Ljava/lang/Object;
.source "ActivityController.java"

# interfaces
.implements Lcom/google/android/gm/RestrictedActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllableActivity"
.end annotation


# virtual methods
.method public abstract attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V
.end method

.method public abstract attachFragment(Lcom/google/android/gm/ConversationListFragment;)V
.end method

.method public abstract attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V
.end method

.method public abstract getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;
.end method

.method public abstract getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;
.end method

.method public abstract getViewMode()Lcom/google/android/gm/ViewMode;
.end method
