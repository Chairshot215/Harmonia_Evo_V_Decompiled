.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;
.super Lcom/htc/android/rosie/home/fxcontrol/DropZone;
.source "FxWorkspaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditZone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V
    .locals 1
    .parameter
    .parameter "scope"
    .parameter "drop"
    .parameter "target"
    .parameter "overlayColor"

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1396
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    .line 1397
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->mAction:Ljava/lang/Runnable;

    .line 1409
    return-void
.end method

.method private removeHighlight()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method


# virtual methods
.method accept(Lcom/htc/launcher/Draggee;)Z
    .locals 3
    .parameter "draggee"

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/DesktopItemController;->isItemEditable(Lcom/htc/launcher/ItemInfo;)Z

    move-result v0

    .line 1414
    .local v0, accept:Z
    if-nez v0, :cond_0

    .line 1415
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->removeHighlight()V

    .line 1417
    :cond_0
    return v0
.end method

.method public updateBounds()V
    .locals 8

    .prologue
    .line 1422
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v1, v5, v6

    .line 1423
    .local v1, left:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1424
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v3, v5, v6

    .line 1425
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1426
    .local v0, bottom:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1428
    .local v2, removeRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v5

    iput-object v2, v5, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    .line 1429
    return-void
.end method
