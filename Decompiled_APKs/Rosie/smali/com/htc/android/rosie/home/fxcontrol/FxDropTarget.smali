.class public Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
.super Ljava/lang/Object;
.source "FxDropTarget.java"

# interfaces
.implements Lcom/htc/launcher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;
    }
.end annotation


# instance fields
.field acceptDrop:Z

.field public bounds:Landroid/graphics/Rect;

.field public item:Lcom/htc/launcher/ItemInfo;

.field public mDragOver:Z

.field private mName:Ljava/lang/String;

.field public source:Lcom/htc/launcher/DragSource;

.field sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field state:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

.field x:I

.field xOffset:I

.field y:I

.field yOffset:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;)V
    .locals 1
    .parameter "rect"
    .parameter "action"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mName:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->acceptDrop:Z

    .line 30
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z
    .locals 5
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    const-string v2, "FxDropTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FxDropTarget.acceptDrop("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->SETTING:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne v2, v3, :cond_4

    .line 72
    :cond_3
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->acceptDrop:Z

    goto :goto_0

    .line 73
    :cond_4
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne v2, v3, :cond_0

    instance-of v2, p6, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    if-eqz v2, :cond_0

    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public claimDrop(II[I)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "coordinates"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    aput v2, p3, v0

    .line 126
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    aput v0, p3, v1

    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public estimateDropLocation(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"
    .parameter "recycle"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public froceUpdateRemote(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 142
    return-void
.end method

.method public getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 104
    return-void
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getLocationOnScreen([I)V
    .locals 2
    .parameter "loc"

    .prologue
    .line 107
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    .line 108
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    .line 109
    return-void
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 43
    const-string v0, "FxDropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxDropTarget.onDragEnter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_ENTER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 45
    return-void
.end method

.method public onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V
    .locals 8
    .parameter "source"
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 55
    const-string v0, "FxDropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxDropTarget.onDragExit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p7}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 57
    return-void
.end method

.method public onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 49
    const-string v0, "FxDropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxDropTarget.onDragOver("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 51
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    const/4 v8, -0x1

    .line 34
    const-string v0, "FxDropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxDropTarget.onDrop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 36
    const/4 v0, 0x0

    invoke-interface {p6, v0, v8, v8}, Lcom/htc/launcher/Draggee;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    .line 39
    return-void
.end method

.method public resetClaimDrop()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "FxDropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxDropTarget.resetClaimDrop() DragOver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    .line 133
    return-void
.end method

.method protected setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "state"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->source:Lcom/htc/launcher/DragSource;

    .line 89
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->x:I

    .line 90
    iput p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->y:I

    .line 91
    iput p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->xOffset:I

    .line 92
    iput p5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->yOffset:I

    .line 93
    iput-object p6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    .line 94
    iput-object p7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->state:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    .line 95
    return-void
.end method
