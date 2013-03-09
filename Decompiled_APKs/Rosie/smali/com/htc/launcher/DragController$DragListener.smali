.class public interface abstract Lcom/htc/launcher/DragController$DragListener;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragListener"
.end annotation


# virtual methods
.method public abstract onDragEnd()V
.end method

.method public abstract onPostDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
.end method

.method public abstract onPreDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
.end method
