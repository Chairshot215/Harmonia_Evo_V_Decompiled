.class public Lcom/htc/launcher/FolderIcon$MyDropTarget;
.super Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDropTarget"
.end annotation


# instance fields
.field public m_folderInfo:Lcom/htc/launcher/FolderInfo;

.field private m_strName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/launcher/FolderIcon;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/FolderIcon;Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "rect"
    .parameter "action"
    .parameter "name"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    .line 203
    invoke-direct {p0, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->m_strName:Ljava/lang/String;

    .line 204
    iput-object p4, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->m_strName:Ljava/lang/String;

    .line 205
    #getter for: Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;
    invoke-static {p1}, Lcom/htc/launcher/FolderIcon;->access$100(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->m_folderInfo:Lcom/htc/launcher/FolderInfo;

    .line 206
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
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #setter for: Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z
    invoke-static {v0, v2}, Lcom/htc/launcher/FolderIcon;->access$302(Lcom/htc/launcher/FolderIcon;Z)Z

    .line 245
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$100(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/FolderInfo;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "FolderIcon"

    const-string v1, "%s is full "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #setter for: Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z
    invoke-static {v0, v4}, Lcom/htc/launcher/FolderIcon;->access$302(Lcom/htc/launcher/FolderIcon;Z)Z

    .line 259
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$300(Lcom/htc/launcher/FolderIcon;)Z

    move-result v0

    return v0

    .line 250
    :cond_1
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    if-nez v0, :cond_2

    .line 252
    const-string v0, "FolderIcon"

    const-string v1, "drop item %s which is not a application"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p6, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #setter for: Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z
    invoke-static {v0, v4}, Lcom/htc/launcher/FolderIcon;->access$302(Lcom/htc/launcher/FolderIcon;Z)Z

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$100(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/FolderInfo;

    move-result-object v1

    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/FolderInfo;->isItemAlreadyInFolder(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    invoke-super/range {p0 .. p6}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z

    move-result v1

    #setter for: Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$302(Lcom/htc/launcher/FolderIcon;Z)Z

    goto :goto_0
.end method

.method public claimDrop(II[I)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "coordinates"

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->claimDrop(II[I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "FolderIcon"

    const-string v2, "[EDIT_DEBUG] FolderIcon.doDropAction() folder is still open, not acceptDrop"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 279
    goto :goto_0

    .line 282
    :cond_1
    const-string v0, "FolderIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FolderIcon.claimDrop() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v2}, Lcom/htc/launcher/FolderIcon;->access$200(Lcom/htc/launcher/FolderIcon;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$200(Lcom/htc/launcher/FolderIcon;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 211
    const-string v0, "FolderIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FolderIcon onDragEnter() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-super/range {p0 .. p6}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 213
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    goto :goto_0
.end method

.method public onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V
    .locals 3
    .parameter "source"
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 234
    const-string v0, "FolderIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FolderIcon onDragExit() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-super/range {p0 .. p7}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V

    .line 237
    invoke-interface {p7}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    goto :goto_0
.end method

.method public onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 223
    invoke-super/range {p0 .. p6}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 224
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    goto :goto_0
.end method

.method public onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 265
    const-string v0, "FolderIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FolderIcon onDrop() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super/range {p0 .. p6}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 267
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->this$0:Lcom/htc/launcher/FolderIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FxDragTarget."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FolderIcon$MyDropTarget;->m_strName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
