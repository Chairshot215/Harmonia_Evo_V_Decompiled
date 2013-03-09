.class public abstract Lcom/htc/painting/engine/undo/AbsUndoEdit;
.super Ljava/lang/Object;
.source "AbsUndoEdit.java"

# interfaces
.implements Lcom/htc/painting/engine/undo/UndoableEdit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canRedo()Z
.end method

.method public abstract canUndo()Z
.end method

.method public getPresentationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUndoPrsentationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract redo()Z
.end method

.method public abstract undo()Z
.end method
