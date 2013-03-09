.class public final Lcom/htc/launcher/Draggee$LegacyDraggee;
.super Ljava/lang/Object;
.source "Draggee.java"

# interfaces
.implements Lcom/htc/launcher/Draggee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Draggee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegacyDraggee"
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    .line 31
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/htc/launcher/Draggee;
    .locals 1
    .parameter "item"

    .prologue
    .line 26
    new-instance v0, Lcom/htc/launcher/Draggee$LegacyDraggee;

    check-cast p0, Landroid/view/View;

    .end local p0
    invoke-direct {v0, p0}, Lcom/htc/launcher/Draggee$LegacyDraggee;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getCellXY()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 46
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 47
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getItemInfo()Lcom/htc/launcher/ItemInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ItemInfo;

    goto :goto_0
.end method

.method public getRectInPixels()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mBounds:Landroid/graphics/Rect;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public onDrag()V
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lcom/htc/launcher/Draggee$LegacyDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[EDIT_DEBUG] LegacyDraggee.onDrag()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/launcher/CellLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 98
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 100
    .end local v0           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DropTarget;II)V
    .locals 3
    .parameter "target"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 64
    sget-object v1, Lcom/htc/launcher/Draggee$LegacyDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[EDIT_DEBUG] LegacyDraggee.onDrop(1)"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 66
    sget-object v1, Lcom/htc/launcher/Draggee$LegacyDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Tring to move null item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-nez p1, :cond_2

    .line 71
    sget-boolean v1, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/launcher/Draggee$LegacyDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Drop on null target"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/launcher/CellLayout$LayoutParams;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 77
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iput p2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 78
    iput p3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 82
    .end local v0           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public onDropAbort(Lcom/htc/launcher/DragSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 86
    sget-object v0, Lcom/htc/launcher/Draggee$LegacyDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[EDIT_DEBUG] LegacyDraggee.onDropAbort()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/launcher/Draggee$LegacyDraggee;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 90
    :cond_0
    return-void
.end method
