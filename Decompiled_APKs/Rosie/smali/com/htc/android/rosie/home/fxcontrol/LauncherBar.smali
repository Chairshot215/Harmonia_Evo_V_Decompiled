.class public Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
.super Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
.source "LauncherBar.java"

# interfaces
.implements Lcom/htc/launcher/DragSource;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Navbar"

.field private static m_bDragItemAccepted:Z


# instance fields
.field private m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

.field private m_Dragger:Lcom/htc/launcher/DragController;

.field private m_FxItem:Lcom/htc/launcher/FxItem;

.field private m_Launcher:Lcom/htc/launcher/Launcher;

.field private m_OpenFolder:Lcom/htc/launcher/Folder;

.field private m_bIsAFolder:Z

.field private m_bIsMergeToAFolder:Z

.field private m_nNavbarIndex:I

.field private m_strScopeLauncherBarAccept:[Ljava/lang/String;

.field private m_strScopeLauncherBarFull:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Lcom/htc/launcher/Launcher;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;I)V
    .locals 4
    .parameter "rect"
    .parameter "action"
    .parameter "launcher"
    .parameter "currentWorkspace"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;)V

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "launcherbar_full"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_strScopeLauncherBarFull:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accept"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsAFolder:Z

    .line 37
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsMergeToAFolder:Z

    .line 44
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    .line 45
    iput p5, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    .line 46
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 47
    return-void
.end method

.method private createFolderItem(Lcom/htc/launcher/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-static {v0}, Lcom/htc/launcher/Folder;->fromXml(Landroid/content/Context;)Lcom/htc/launcher/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    .line 256
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Folder;->setDragger(Lcom/htc/launcher/DragController;)V

    .line 257
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Folder;->setLauncher(Lcom/htc/launcher/Launcher;)V

    .line 258
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Folder;->bind(Lcom/htc/launcher/FolderInfo;)V

    .line 259
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Folder;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/DesktopItemController;->enableFolderIcon(ZI)V

    .line 261
    return-void
.end method

.method private dropBack()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 291
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 293
    .local v0, fs:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getParent()Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 294
    .local v1, parent:Lcom/htc/fusion/fx/FxObject;
    if-eqz v1, :cond_0

    .line 295
    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .end local v1           #parent:Lcom/htc/fusion/fx/FxObject;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v4}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v2, v4, v0, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->addAppOrShortcutToNavbarButton(Lcom/htc/launcher/ItemInfo;Lcom/htc/fusion/fx/FxScene;I)V

    .line 300
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_strScopeLauncherBarFull:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setDragScopeForNavBarDropControl(I[Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/launcher/FolderInfo;

    if-eqz v2, :cond_1

    .line 302
    invoke-direct {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setFolderConfig(Z)V

    .line 304
    :cond_1
    return-void

    .line 291
    .end local v0           #fs:Lcom/htc/fusion/fx/FxScene;
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFolderConfig(Z)V
    .locals 4
    .parameter "bIsFolder"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsAFolder:Z

    .line 309
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEnableForNavBarDropControl(IZ)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsAFolder:Z

    .line 312
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEnableForNavBarDropControl(IZ)V

    goto :goto_0
.end method

.method private updateInfoInLauncherBar(Lcom/htc/launcher/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 284
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    iput v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 285
    iput v1, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 286
    iput v1, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 287
    const-wide/16 v0, -0x65

    iput-wide v0, p1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 288
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 318
    const-string v0, "Navbar"

    const-string v1, "LauncherBar.acceptDrop"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne v0, v1, :cond_0

    instance-of v0, p6, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 265
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->mDragOver:Z

    if-nez v2, :cond_0

    .line 276
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->mDragOver:Z

    goto :goto_0

    .line 274
    :cond_1
    aput p1, p3, v0

    .line 275
    aput p2, p3, v1

    move v0, v1

    .line 276
    goto :goto_0
.end method

.method public getItem()Lcom/htc/launcher/FxItem;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    return-object v0
.end method

.method public isAFolder()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsAFolder:Z

    return v0
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
    .line 169
    invoke-interface {p7}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 171
    if-eq p2, p0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsMergeToAFolder:Z

    .line 173
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsMergeToAFolder:Z

    .line 153
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    .line 155
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v8

    .line 157
    .local v8, dragInfo:Lcom/htc/launcher/ItemInfo;
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    .line 158
    .local v9, targetInfo:Lcom/htc/launcher/ItemInfo;
    instance-of v0, v8, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v0, :cond_0

    instance-of v0, v9, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v0, :cond_0

    check-cast v9, Lcom/htc/launcher/ApplicationInfo;

    .end local v9           #targetInfo:Lcom/htc/launcher/ItemInfo;
    check-cast v8, Lcom/htc/launcher/ApplicationInfo;

    .end local v8           #dragInfo:Lcom/htc/launcher/ItemInfo;
    invoke-static {v9, v8}, Lcom/htc/launcher/FolderInfo;->isItemDuplicate(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsMergeToAFolder:Z

    .line 164
    :cond_0
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 165
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 50
    const-string v1, "Navbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] FxDropTarget.onDrop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    sget-object v8, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setState(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/ItemInfo;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 52
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/launcher/Draggee;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->mDragOver:Z

    .line 55
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->sourceAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v2, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-eq v1, v2, :cond_1

    .line 56
    const-string v1, "Navbar"

    const-string v2, "The action is incorrect"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_strScopeLauncherBarFull:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setDragScopeForNavBarDropControl(I[Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/htc/launcher/FxItem;

    if-eqz v1, :cond_0

    .line 65
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v1, :cond_7

    .line 66
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v10

    check-cast v10, Lcom/htc/launcher/ApplicationInfo;

    .line 68
    .local v10, draggeeInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p1

    if-ne v0, p0, :cond_4

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    if-nez v1, :cond_4

    .line 70
    :cond_2
    new-instance v13, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v13, v10}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .line 73
    .local v13, tmpOriInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-direct {p0, v10}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->updateInfoInLauncherBar(Lcom/htc/launcher/ItemInfo;)V

    .line 76
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v10, v1, v2, v3}, Lcom/htc/launcher/ApplicationInfo;->createNavbarItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;I)Lcom/htc/launcher/Draggee;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    .line 77
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v12

    .line 79
    .local v12, fs:Lcom/htc/fusion/fx/FxScene;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v1, v13, v12, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->addAppOrShortcutToNavbarButton(Lcom/htc/launcher/ItemInfo;Lcom/htc/fusion/fx/FxScene;I)V

    .line 82
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    iget-wide v2, v13, Lcom/htc/launcher/ApplicationInfo;->id:J

    iput-wide v2, v1, Lcom/htc/launcher/ItemInfo;->id:J

    .line 85
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    goto :goto_0

    .line 77
    .end local v12           #fs:Lcom/htc/fusion/fx/FxScene;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 88
    .end local v13           #tmpOriInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_4
    move-object/from16 v0, p1

    if-eq v0, p0, :cond_6

    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsMergeToAFolder:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v1, :cond_6

    .line 89
    iget-object v14, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    .line 92
    .local v14, tmpOriItem:Lcom/htc/launcher/FxItem;
    new-instance v9, Lcom/htc/launcher/CellInfo;

    invoke-direct {v9}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 93
    .local v9, addInfo:Lcom/htc/launcher/CellInfo;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iput v1, v9, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 94
    const/16 v1, -0x65

    iput v1, v9, Lcom/htc/launcher/CellInfo;->m_nContainer:I

    .line 95
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Lcom/htc/launcher/DesktopItemController;->addFolder(ZLcom/htc/launcher/CellInfo;)Lcom/htc/launcher/FolderInfo;

    move-result-object v11

    .line 98
    .local v11, folderInfo:Lcom/htc/launcher/FolderInfo;
    invoke-direct {p0, v11}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->updateInfoInLauncherBar(Lcom/htc/launcher/ItemInfo;)V

    .line 100
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v11, v1, v2, v3}, Lcom/htc/launcher/FolderInfo;->createNavbarItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;I)Lcom/htc/launcher/Draggee;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    .line 101
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v12

    .line 103
    .restart local v12       #fs:Lcom/htc/fusion/fx/FxScene;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->addAppOrShortcutToNavbarButton(Lcom/htc/launcher/ItemInfo;Lcom/htc/fusion/fx/FxScene;I)V

    .line 105
    invoke-direct {p0, v11}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->createFolderItem(Lcom/htc/launcher/FolderInfo;)V

    .line 107
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v14}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v2, v1}, Lcom/htc/launcher/Folder;->addIntoFolder(Lcom/htc/launcher/ApplicationInfo;)Z

    .line 108
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v1, v10}, Lcom/htc/launcher/Folder;->addIntoFolder(Lcom/htc/launcher/ApplicationInfo;)Z

    .line 110
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 112
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setFolderConfig(Z)V

    .line 113
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    .line 115
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    goto/16 :goto_0

    .line 101
    .end local v12           #fs:Lcom/htc/fusion/fx/FxScene;
    :cond_5
    const/4 v1, 0x2

    goto :goto_2

    .line 118
    .end local v9           #addInfo:Lcom/htc/launcher/CellInfo;
    .end local v11           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v14           #tmpOriItem:Lcom/htc/launcher/FxItem;
    :cond_6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    goto/16 :goto_0

    .line 120
    .end local v10           #draggeeInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_7
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/launcher/FolderInfo;

    if-eqz v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p1

    if-ne v0, p0, :cond_a

    .line 123
    :cond_8
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v10

    check-cast v10, Lcom/htc/launcher/FolderInfo;

    .line 124
    .local v10, draggeeInfo:Lcom/htc/launcher/FolderInfo;
    move-object v11, v10

    .line 127
    .restart local v11       #folderInfo:Lcom/htc/launcher/FolderInfo;
    invoke-direct {p0, v11}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->updateInfoInLauncherBar(Lcom/htc/launcher/ItemInfo;)V

    .line 129
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v11, v1, v2, v3}, Lcom/htc/launcher/FolderInfo;->createNavbarItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;I)Lcom/htc/launcher/Draggee;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    .line 130
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v12

    .line 132
    .restart local v12       #fs:Lcom/htc/fusion/fx/FxScene;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->addAppOrShortcutToNavbarButton(Lcom/htc/launcher/ItemInfo;Lcom/htc/fusion/fx/FxScene;I)V

    .line 134
    invoke-direct {p0, v11}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->createFolderItem(Lcom/htc/launcher/FolderInfo;)V

    .line 137
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 139
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setFolderConfig(Z)V

    .line 140
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    .line 142
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    iget-wide v2, v11, Lcom/htc/launcher/FolderInfo;->id:J

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/launcher/DesktopItemController;->updateFolderThumbnails(JZLcom/htc/launcher/FxItem;)V

    goto/16 :goto_0

    .line 130
    .end local v12           #fs:Lcom/htc/fusion/fx/FxScene;
    :cond_9
    const/4 v1, 0x2

    goto :goto_3

    .line 144
    .end local v10           #draggeeInfo:Lcom/htc/launcher/FolderInfo;
    .end local v11           #folderInfo:Lcom/htc/launcher/FolderInfo;
    :cond_a
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    goto/16 :goto_0
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 176
    if-eqz p2, :cond_4

    .line 178
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 180
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->removeButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 182
    instance-of v0, p1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    if-eqz v0, :cond_2

    .line 184
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 185
    if-ne p1, p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->wasDragItemAccepted(Lcom/htc/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->dropBack()V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setItem(Lcom/htc/launcher/FxItem;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setOpenFolder(Lcom/htc/launcher/Folder;)V

    .line 206
    :cond_3
    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/launcher/DropTarget;->getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    goto :goto_0

    .line 197
    :cond_4
    if-nez p1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 199
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    if-eqz v0, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->dropBack()V

    .line 201
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    goto :goto_1
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Dragger:Lcom/htc/launcher/DragController;

    .line 213
    return-void
.end method

.method public setItem(Lcom/htc/launcher/FxItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 216
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    .line 218
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setDragScopeForNavBarDropControl(I[Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setFolderConfig(Z)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_CurrentWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_nNavbarIndex:I

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_strScopeLauncherBarFull:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setDragScopeForNavBarDropControl(I[Ljava/lang/String;)V

    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->createFolderItem(Lcom/htc/launcher/FolderInfo;)V

    .line 229
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_Launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/htc/launcher/ItemInfo;->id:J

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_FxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/htc/launcher/DesktopItemController;->updateFolderThumbnails(JZLcom/htc/launcher/FxItem;)V

    .line 230
    invoke-direct {p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setFolderConfig(Z)V

    goto :goto_0
.end method

.method public setOpenFolder(Lcom/htc/launcher/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_OpenFolder:Lcom/htc/launcher/Folder;

    .line 252
    return-void
.end method

.method public wasDragItemAccepted(Lcom/htc/launcher/ItemInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 243
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    .line 245
    .local v0, bAccepted:Z
    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bDragItemAccepted:Z

    .line 246
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->m_bIsMergeToAFolder:Z

    .line 247
    return v0
.end method
