.class public abstract Lcom/htc/painting/engine/undo/CompoundEdit;
.super Lcom/htc/painting/engine/undo/AbsUndoEdit;
.source "CompoundEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/painting/engine/undo/AbsUndoEdit;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z
.end method

.method public abstract getRedoableEdits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUndoableEdits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;"
        }
    .end annotation
.end method
