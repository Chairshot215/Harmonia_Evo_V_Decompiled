.class public Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;
.super Lcom/htc/painting/engine/undo/CompoundEdit;
.source "CompoundEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/undo/CompoundEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseCompoundEdit"
.end annotation


# instance fields
.field private mRedoHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;"
        }
    .end annotation
.end field

.field private mUndoHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/painting/engine/undo/CompoundEdit;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public canRedo()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    invoke-interface {v2}, Lcom/htc/painting/engine/undo/UndoableEdit;->canRedo()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public canUndo()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    invoke-interface {v2}, Lcom/htc/painting/engine/undo/UndoableEdit;->canUndo()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public getHistoricalSize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getRedoableEdits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Stack;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUndoableEdits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Stack;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public redo()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v5, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/undo/UndoableEdit;

    invoke-interface {v4}, Lcom/htc/painting/engine/undo/UndoableEdit;->redo()Z

    move-result v2

    if-nez v2, :cond_0

    move v3, v2

    :cond_0
    iget-object v5, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public undo()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v5, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/undo/UndoableEdit;

    invoke-interface {v4}, Lcom/htc/painting/engine/undo/UndoableEdit;->undo()Z

    move-result v2

    if-nez v2, :cond_0

    move v3, v2

    :cond_0
    iget-object v5, p0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
