.class public interface abstract Lcom/google/android/gm/LabelsActivityController;
.super Ljava/lang/Object;
.source "LabelsActivityController.java"

# interfaces
.implements Lcom/google/android/gm/LabelSettingsObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;
    }
.end annotation


# virtual methods
.method public abstract handleBackPressed()Z
.end method

.method public abstract handleCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract handleLabelListResumed(Lcom/google/android/gm/LabelListFragment;)V
.end method

.method public abstract handleLabelSelected(Ljava/lang/String;)V
.end method

.method public abstract handleOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract handlePause()V
.end method

.method public abstract handlePrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract handleSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract initialize(Landroid/os/Bundle;)V
.end method
