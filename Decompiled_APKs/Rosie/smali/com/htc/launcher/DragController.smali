.class public interface abstract Lcom/htc/launcher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I


# virtual methods
.method public abstract getDragCompleteAction()Lcom/htc/launcher/DragSource$DragCompletedAction;
.end method

.method public abstract getDragView()Lcom/htc/launcher/DragView;
.end method

.method public abstract prepareDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
.end method

.method public abstract removeDragListener(Lcom/htc/launcher/DragController$DragListener;)V
.end method

.method public abstract setDragCompleteAction(Lcom/htc/launcher/DragSource$DragCompletedAction;)V
.end method

.method public abstract setDragListener(Lcom/htc/launcher/DragController$DragListener;)V
.end method

.method public abstract startDrag(Landroid/view/View;IILcom/htc/launcher/DragSource;Landroid/graphics/Rect;Z)V
.end method

.method public abstract startDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
.end method
