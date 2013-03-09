.class public Lcom/htc/painting/engine/undo/UndoManager;
.super Lcom/htc/painting/engine/undo/CompoundEdit;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/undo/UndoManager$onActionListener;
    }
.end annotation


# static fields
.field static final HISTORY_LIMITATION:I = 0xa


# instance fields
.field private mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

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

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/painting/engine/undo/CompoundEdit;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    return-void
.end method

.method public static getLimit()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xa

    return v0
.end method

.method private static obtainRoomInStack(Ljava/util/Stack;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/painting/engine/undo/UndoableEdit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, s:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/htc/painting/engine/undo/UndoableEdit;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-static {v0}, Lcom/htc/painting/engine/undo/UndoManager;->obtainRoomInStack(Ljava/util/Stack;)V

    .line 43
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/undo/UndoableEdit;

    invoke-interface {v0}, Lcom/htc/painting/engine/undo/UndoableEdit;->canRedo()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/undo/UndoableEdit;

    invoke-interface {v0}, Lcom/htc/painting/engine/undo/UndoableEdit;->canUndo()Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearRedoHistory()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 53
    return-void
.end method

.method public clearUndoHistory()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    return-void
.end method

.method public getActionCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/undo/UndoableEdit;

    return-object v0
.end method

.method public getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/undo/UndoableEdit;

    return-object v0
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

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

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

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Stack;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public redo()Z
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-static {v1}, Lcom/htc/painting/engine/undo/UndoManager;->obtainRoomInStack(Ljava/util/Stack;)V

    .line 95
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/undo/UndoableEdit;

    .line 96
    .local v0, action:Lcom/htc/painting/engine/undo/UndoableEdit;
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    invoke-interface {v1, v0}, Lcom/htc/painting/engine/undo/UndoManager$onActionListener;->redo(Lcom/htc/painting/engine/undo/UndoableEdit;)V

    .line 99
    :cond_0
    invoke-interface {v0}, Lcom/htc/painting/engine/undo/UndoableEdit;->redo()Z

    move-result v1

    .line 101
    .end local v0           #action:Lcom/htc/painting/engine/undo/UndoableEdit;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionListener(Lcom/htc/painting/engine/undo/UndoManager$onActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    .line 110
    return-void
.end method

.method public undo()Z
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-static {v1}, Lcom/htc/painting/engine/undo/UndoManager;->obtainRoomInStack(Ljava/util/Stack;)V

    .line 82
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mUndoHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/undo/UndoableEdit;

    .line 83
    .local v0, action:Lcom/htc/painting/engine/undo/UndoableEdit;
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mRedoHistory:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/painting/engine/undo/UndoManager;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    invoke-interface {v1, v0}, Lcom/htc/painting/engine/undo/UndoManager$onActionListener;->undo(Lcom/htc/painting/engine/undo/UndoableEdit;)V

    .line 86
    :cond_0
    invoke-interface {v0}, Lcom/htc/painting/engine/undo/UndoableEdit;->undo()Z

    move-result v1

    .line 88
    .end local v0           #action:Lcom/htc/painting/engine/undo/UndoableEdit;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
