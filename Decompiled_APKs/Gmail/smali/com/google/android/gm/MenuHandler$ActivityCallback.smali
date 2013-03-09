.class public interface abstract Lcom/google/android/gm/MenuHandler$ActivityCallback;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/MenuHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityCallback"
.end annotation


# virtual methods
.method public abstract doneChangingLabels(Lcom/google/android/gm/LabelOperations;)V
.end method

.method public abstract enterSearchMode()V
.end method

.method public abstract onEndBulkOperation()V
.end method

.method public abstract onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
.end method

.method public abstract onStartBulkOperation()V
.end method

.method public abstract onStartDragMode()V
.end method

.method public abstract onStopDragMode()V
.end method

.method public abstract onUndoAvailable(Lcom/google/android/gm/UndoOperation;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onUndoExpired()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
