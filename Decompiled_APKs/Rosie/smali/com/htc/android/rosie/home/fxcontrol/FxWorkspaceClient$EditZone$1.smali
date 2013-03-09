.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;
.super Ljava/lang/Object;
.source "FxWorkspaceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;

.field final synthetic val$this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;->this$1:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;

    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;->val$this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;->this$1:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isAbortDrag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1400
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RemoveZone"

    const-string v2, "[EDIT_DEBUG]# Abort EditZone.editItem()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "EditZone"

    const-string v2, "[EDIT_DEBUG] EditZone.editItem()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :cond_2
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;->this$1:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v0

    .line 1406
    .local v0, target:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone$1;->this$1:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->source:Lcom/htc/launcher/DragSource;

    iget-object v3, v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v1, v2, v3}, Lcom/htc/launcher/DesktopItemController;->editItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_0
.end method
