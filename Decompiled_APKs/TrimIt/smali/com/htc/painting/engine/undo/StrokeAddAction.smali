.class public Lcom/htc/painting/engine/undo/StrokeAddAction;
.super Lcom/htc/painting/engine/undo/AbsUndoEdit;
.source "StrokeAddAction.java"


# instance fields
.field private final mGroup:Lcom/htc/painting/engine/StrokeGroup;

.field private final mStroke:Lcom/htc/painting/engine/stroke/Stroke;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 0
    .parameter "group"
    .parameter "stroke"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/painting/engine/undo/AbsUndoEdit;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 22
    iput-object p2, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 23
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

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
    .line 46
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup()Lcom/htc/painting/engine/StrokeGroup;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mGroup:Lcom/htc/painting/engine/StrokeGroup;

    return-object v0
.end method

.method public getPresentationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "add stroke"

    return-object v0
.end method

.method public getStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public redo()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    .line 36
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public undo()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/htc/painting/engine/undo/StrokeAddAction;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    .line 29
    :cond_0
    return v1
.end method
