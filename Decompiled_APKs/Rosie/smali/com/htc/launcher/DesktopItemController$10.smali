.class Lcom/htc/launcher/DesktopItemController$10;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Lcom/htc/launcher/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DesktopItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;)V
    .locals 0
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanUp()V
    .locals 2

    .prologue
    .line 1737
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG]# mPickerDragSourceLegacy.cleanUp()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v0, v1}, Lcom/htc/launcher/DesktopItemController;->access$502(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxItem;)Lcom/htc/launcher/FxItem;

    .line 1739
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 1740
    return-void
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    .line 1697
    const-string v1, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG]# mPickerDragSourceLegacy.onDropCompleted() success("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    if-nez p2, :cond_0

    .line 1699
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/DesktopItemController$10;->removeLayout(Lcom/htc/launcher/Launcher;)V

    .line 1702
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1704
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getCellXY()Landroid/graphics/Point;

    move-result-object v0

    .line 1705
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/launcher/FxItem;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 1707
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$600(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onPoof(Lcom/htc/launcher/Draggee;)Z

    .line 1709
    .end local v0           #p:Landroid/graphics/Point;
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 1711
    invoke-virtual {p0}, Lcom/htc/launcher/DesktopItemController$10;->cleanUp()V

    .line 1712
    return-void
.end method

.method removeLayout(Lcom/htc/launcher/Launcher;)V
    .locals 4
    .parameter "launcher"

    .prologue
    .line 1720
    const-string v2, "DesktopItemController"

    const-string v3, "[EDIT_DEBUG] mPickerDragSourceLegacy.removeLayout()"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1734
    :goto_0
    return-void

    .line 1724
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1725
    .local v0, content:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1726
    const-string v2, "DesktopItemController"

    const-string v3, "no view in floating item"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1729
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$10;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 1730
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    instance-of v2, v1, Lcom/htc/launcher/WidgetProxy;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 1731
    check-cast v2, Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v2, p1}, Lcom/htc/launcher/WidgetProxy;->onLayoutRemoved(Lcom/htc/launcher/Launcher;)V

    .line 1733
    :cond_2
    invoke-static {p1, v1}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_0
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 2
    .parameter "dragger"

    .prologue
    .line 1715
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] mPickerDragSourceLegacy.setDragger()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void
.end method
