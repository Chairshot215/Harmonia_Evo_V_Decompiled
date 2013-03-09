.class public interface abstract Lcom/htc/painting/engine/undo/UndoManager$onActionListener;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/undo/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onActionListener"
.end annotation


# virtual methods
.method public abstract redo(Lcom/htc/painting/engine/undo/UndoableEdit;)V
.end method

.method public abstract undo(Lcom/htc/painting/engine/undo/UndoableEdit;)V
.end method
