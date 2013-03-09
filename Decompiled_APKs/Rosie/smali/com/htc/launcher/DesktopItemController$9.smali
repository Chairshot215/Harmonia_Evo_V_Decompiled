.class Lcom/htc/launcher/DesktopItemController$9;
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
    .line 1678
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$9;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 1685
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG]# mPickerDragSource.onDropCompleted() success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$9;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 1687
    return-void
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1682
    return-void
.end method
