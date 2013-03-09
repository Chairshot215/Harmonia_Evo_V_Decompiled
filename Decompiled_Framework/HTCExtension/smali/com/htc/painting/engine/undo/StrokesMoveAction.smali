.class public Lcom/htc/painting/engine/undo/StrokesMoveAction;
.super Lcom/htc/painting/engine/undo/AbsUndoEdit;
.source "StrokesMoveAction.java"


# instance fields
.field private final mGroup:Lcom/htc/painting/engine/StrokeGroup;

.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/StrokeGroup;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/engine/StrokeGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/painting/engine/undo/AbsUndoEdit;-><init>()V

    iput-object p1, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mGroup:Lcom/htc/painting/engine/StrokeGroup;

    iput-object p2, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mTransform:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canUndo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPresentationName()Ljava/lang/String;
    .locals 1

    const-string v0, "add stroke"

    return-object v0
.end method

.method public redo()Z
    .locals 3

    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    iget-object v2, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public undo()Z
    .locals 5

    iget-object v4, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mStrokes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Lcom/htc/painting/engine/undo/StrokesMoveAction;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v2}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
