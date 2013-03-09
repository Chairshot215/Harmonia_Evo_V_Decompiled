.class public Lcom/htc/painting/engine/undo/StrokesDeleteAction;
.super Lcom/htc/painting/engine/undo/AbsUndoEdit;
.source "StrokesDeleteAction.java"


# instance fields
.field private mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-direct {p0}, Lcom/htc/painting/engine/undo/AbsUndoEdit;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPresentationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "delete strokes"

    return-object v0
.end method

.method public redo()Z
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 35
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    goto :goto_0

    .line 38
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public undo()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 23
    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesDeleteAction;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 25
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v1, v3}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    goto :goto_0

    .line 28
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    return v3
.end method
