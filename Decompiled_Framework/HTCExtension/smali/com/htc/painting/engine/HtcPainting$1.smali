.class Lcom/htc/painting/engine/HtcPainting$1;
.super Ljava/lang/Object;
.source "HtcPainting.java"

# interfaces
.implements Lcom/htc/painting/engine/undo/UndoManager$onActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPainting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPainting;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPainting;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redo(Lcom/htc/painting/engine/undo/UndoableEdit;)V
    .locals 11

    instance-of v6, p1, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    new-instance v6, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v8

    sget-object v9, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    sget-object v10, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILcom/htc/painting/engine/StrokeEventArg$StrokeStatus;Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;)V

    invoke-interface {v5, v6}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V

    goto :goto_0

    :cond_0
    instance-of v6, p1, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v6, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getUndoableEdits()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    instance-of v6, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    new-instance v6, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v8

    sget-object v9, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    sget-object v10, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILcom/htc/painting/engine/StrokeEventArg$StrokeStatus;Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;)V

    invoke-interface {v5, v6}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public undo(Lcom/htc/painting/engine/undo/UndoableEdit;)V
    .locals 11

    instance-of v6, p1, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    new-instance v6, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v8

    sget-object v9, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    sget-object v10, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILcom/htc/painting/engine/StrokeEventArg$StrokeStatus;Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;)V

    invoke-interface {v5, v6}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V

    goto :goto_0

    :cond_0
    instance-of v6, p1, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v6, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getUndoableEdits()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    instance-of v6, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    new-instance v6, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v8

    sget-object v9, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    sget-object v10, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILcom/htc/painting/engine/StrokeEventArg$StrokeStatus;Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;)V

    invoke-interface {v5, v6}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V

    goto :goto_1

    :cond_2
    return-void
.end method
