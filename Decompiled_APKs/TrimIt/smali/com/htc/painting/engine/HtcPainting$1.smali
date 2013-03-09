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
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redo(Lcom/htc/painting/engine/undo/UndoableEdit;)V
    .locals 11
    .parameter "action"

    .prologue
    .line 119
    instance-of v6, p1, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_0

    .line 120
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 122
    .local v0, aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 123
    .local v5, l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
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

    .line 129
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    :cond_0
    instance-of v6, p1, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v6, :cond_2

    move-object v1, p1

    .line 130
    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    .line 131
    .local v1, ce:Lcom/htc/painting/engine/undo/CompoundEdit;
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

    .line 132
    .local v2, e:Lcom/htc/painting/engine/undo/UndoableEdit;
    instance-of v6, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 134
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 135
    .restart local v0       #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 136
    .restart local v5       #l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
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

    .line 145
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v1           #ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    .end local v2           #e:Lcom/htc/painting/engine/undo/UndoableEdit;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    :cond_2
    return-void
.end method

.method public undo(Lcom/htc/painting/engine/undo/UndoableEdit;)V
    .locals 11
    .parameter "action"

    .prologue
    .line 90
    instance-of v6, p1, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_0

    .line 91
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 93
    .local v0, aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 94
    .local v5, l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
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

    .line 100
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    :cond_0
    instance-of v6, p1, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v6, :cond_2

    move-object v1, p1

    .line 101
    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    .line 102
    .local v1, ce:Lcom/htc/painting/engine/undo/CompoundEdit;
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

    .line 103
    .local v2, e:Lcom/htc/painting/engine/undo/UndoableEdit;
    instance-of v6, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 105
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 106
    .restart local v0       #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting$1;->this$0:Lcom/htc/painting/engine/HtcPainting;

    iget-object v6, v6, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 107
    .restart local v5       #l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
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

    .line 117
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v1           #ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    .end local v2           #e:Lcom/htc/painting/engine/undo/UndoableEdit;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #l:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    :cond_2
    return-void
.end method
