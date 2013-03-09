.class public final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;
.super Ljava/lang/Object;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NavBarButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 3250
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3252
    return-void
.end method


# virtual methods
.method public addAppOrShortcutToNavbarButton(Lcom/htc/launcher/ItemInfo;Lcom/htc/fusion/fx/FxScene;I)V
    .locals 8
    .parameter "info"
    .parameter "fs"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3267
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v7

    .line 3268
    .local v7, sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    if-eqz v7, :cond_0

    .line 3269
    invoke-virtual {v7, p2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, -0x65

    move-object v1, p1

    move v5, p3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 3273
    return-void
.end method

.method public addNavbarItem(Lcom/htc/launcher/FxShortcutInfo;I)V
    .locals 5
    .parameter "info"
    .parameter "index"

    .prologue
    .line 3256
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2}, Lcom/htc/launcher/FxShortcutInfo;->createNavbarItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;I)Lcom/htc/launcher/Draggee;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    .line 3257
    .local v1, fxItem:Lcom/htc/launcher/FxItem;
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 3259
    .local v0, fs:Lcom/htc/fusion/fx/FxScene;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    .line 3260
    .local v2, sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    if-eqz v2, :cond_0

    .line 3261
    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 3262
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setItem(Lcom/htc/launcher/FxItem;)V

    .line 3264
    :cond_0
    return-void

    .line 3257
    .end local v0           #fs:Lcom/htc/fusion/fx/FxScene;
    .end local v2           #sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public getNavbarButtonIndex(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3280
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTargetCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3281
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 3282
    .local v0, bContains:Z
    if-eqz v0, :cond_0

    .line 3286
    .end local v0           #bContains:Z
    .end local v1           #i:I
    :goto_1
    return v1

    .line 3280
    .restart local v0       #bContains:Z
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3286
    .end local v0           #bContains:Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1
    .parameter "index"

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    return-object v0
.end method

.method public removeAllItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3291
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTargetCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3292
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v1

    .line 3293
    .local v1, sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 3295
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setItem(Lcom/htc/launcher/FxItem;)V

    .line 3291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3297
    .end local v1           #sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    :cond_0
    return-void
.end method

.method public setOpenFolder(ILcom/htc/launcher/Folder;)V
    .locals 1
    .parameter "nIndex"
    .parameter "folder"

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setOpenFolder(Lcom/htc/launcher/Folder;)V

    .line 3301
    return-void
.end method
