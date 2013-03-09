.class public Lcom/htc/painting/engine/undo/StrokesClearAction;
.super Lcom/htc/painting/engine/undo/AbsUndoEdit;
.source "StrokesClearAction.java"


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
.method public constructor <init>(Lcom/htc/painting/engine/StrokeGroup;Ljava/util/List;)V
    .locals 0
    .parameter "group"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/engine/StrokeGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-direct {p0}, Lcom/htc/painting/engine/undo/AbsUndoEdit;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

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
    .line 59
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

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
    .line 64
    const-string v0, "clear strokes"

    return-object v0
.end method

.method public redo()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v3, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 43
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    goto :goto_0

    .line 47
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    const/4 v2, 0x1

    .line 49
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return v2
.end method

.method public undo()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 28
    iget-object v3, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 29
    iget-object v3, p0, Lcom/htc/painting/engine/undo/StrokesClearAction;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 30
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    goto :goto_0

    .line 36
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method
