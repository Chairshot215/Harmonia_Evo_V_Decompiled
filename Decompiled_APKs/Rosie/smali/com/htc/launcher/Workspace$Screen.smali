.class public interface abstract Lcom/htc/launcher/Workspace$Screen;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Screen"
.end annotation


# virtual methods
.method public abstract acceptChildDrop(IIIILcom/htc/launcher/Draggee;)Z
.end method

.method public abstract acceptDropByMerge(Lcom/htc/launcher/Draggee;II)Z
.end method

.method public abstract addItem(Lcom/htc/launcher/Draggee;I)V
.end method

.method public abstract asViewGroup()Landroid/view/ViewGroup;
.end method

.method public abstract cellToPoint(II[I)V
.end method

.method public abstract cellToRect(IIIILandroid/graphics/RectF;)V
.end method

.method public abstract cellToWidgetRect(IIIILandroid/graphics/RectF;)V
.end method

.method public abstract clearVacant()V
.end method

.method public abstract findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;
.end method

.method public abstract findNearestVacantCellsForSpan(Lcom/htc/launcher/CellInfo;II)Lcom/htc/launcher/CellInfo$VacantCell;
.end method

.method public abstract findVacantCellsForSpan(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo$VacantCell;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract getRearrangeItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Draggee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasRearrangedVacant()Z
.end method

.method public abstract hasVacant()Z
.end method

.method public abstract hideDropArea()V
.end method

.method public abstract hideVacant()V
.end method

.method public abstract isVacantVisible()Z
.end method

.method public abstract isValidCellInfo(FFLcom/htc/launcher/CellInfo;)Z
.end method

.method public abstract mergeDragOverItemAsFolder(Lcom/htc/launcher/Draggee;II)Z
.end method

.method public abstract onDragChild(Lcom/htc/launcher/Draggee;)V
.end method

.method public abstract onDragExit(IIZ)V
.end method

.method public abstract onDragOverChild(Landroid/view/View;II)V
.end method

.method public abstract onDropChild(Lcom/htc/launcher/Draggee;IIII)V
.end method

.method public abstract onDropChildByCell(Lcom/htc/launcher/Draggee;IIII)V
.end method

.method public abstract onEndDrag()V
.end method

.method public abstract pointToDropCell(IIII[I)V
.end method

.method public abstract removeItem(Lcom/htc/launcher/Draggee;)Z
.end method

.method public abstract tryRearrangeForSpan(Lcom/htc/launcher/Draggee;IIII)Z
.end method

.method public abstract updateVacant(IIII)V
.end method
