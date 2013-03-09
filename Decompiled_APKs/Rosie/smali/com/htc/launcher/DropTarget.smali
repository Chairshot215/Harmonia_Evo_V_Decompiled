.class public interface abstract Lcom/htc/launcher/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# virtual methods
.method public abstract acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z
.end method

.method public abstract claimDrop(II[I)Z
.end method

.method public abstract estimateDropLocation(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
.end method

.method public abstract onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V
.end method

.method public abstract onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
.end method

.method public abstract onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
.end method
