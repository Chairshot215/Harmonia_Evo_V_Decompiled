.class Lcom/htc/launcher/DesktopItemController$6;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->onClickFolder(Lcom/htc/launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;

.field final synthetic val$folderInfo:Lcom/htc/launcher/FolderInfo;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$6;->this$0:Lcom/htc/launcher/DesktopItemController;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$6;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1349
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG][FOLDER] onClick() - FolderInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$6;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$6;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$6;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$6;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->openFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 1354
    :cond_0
    return-void
.end method
