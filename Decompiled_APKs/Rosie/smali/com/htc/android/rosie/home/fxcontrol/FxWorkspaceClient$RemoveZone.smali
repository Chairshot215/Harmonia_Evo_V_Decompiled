.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;
.super Lcom/htc/android/rosie/home/fxcontrol/DropZone;
.source "FxWorkspaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RemoveZone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method private constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V
    .locals 1
    .parameter
    .parameter "scope"
    .parameter "drop"
    .parameter "target"
    .parameter "overlayColor"

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1367
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    .line 1368
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->mAction:Ljava/lang/Runnable;

    .line 1380
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 1365
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    return-void
.end method


# virtual methods
.method public updateBounds()V
    .locals 9

    .prologue
    const v8, 0x7f0a0035

    .line 1384
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v1, v5, v6

    .line 1385
    .local v1, left:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1386
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v3, v5, v6

    .line 1387
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1388
    .local v0, bottom:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1390
    .local v2, removeRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v5

    iput-object v2, v5, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    .line 1391
    return-void
.end method
