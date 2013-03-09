.class Lcom/htc/launcher/FolderIcon$MyDropEventListener;
.super Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDropEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/htc/launcher/FolderIcon;Landroid/os/Handler;Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "zone"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;->this$0:Lcom/htc/launcher/FolderIcon;

    .line 294
    invoke-direct {p0, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;-><init>(Landroid/os/Handler;Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 295
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/htc/fusion/fx/FxDraggable;Lcom/htc/android/rosie/home/fxcontrol/DropZone;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V
    .locals 5
    .parameter "drag"
    .parameter "drop"
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v1, :cond_1

    .line 301
    const-string v1, "FolderIcon"

    const-string v2, "[EDIT_DEBUG] FolderIcon Drop"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v1

    iput-boolean v3, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    .line 303
    iget-object v1, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;->this$0:Lcom/htc/launcher/FolderIcon;

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v1, v4}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    move-object v0, p1

    .line 304
    check-cast v0, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 305
    .local v0, dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    .line 306
    iget-object v1, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z
    invoke-static {v1}, Lcom/htc/launcher/FolderIcon;->access$300(Lcom/htc/launcher/FolderIcon;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    new-instance v2, Lcom/htc/launcher/FolderIcon$MyDropEventListener$1;

    invoke-direct {v2, p0}, Lcom/htc/launcher/FolderIcon$MyDropEventListener$1;-><init>(Lcom/htc/launcher/FolderIcon$MyDropEventListener;)V

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 326
    .end local v0           #dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_ENTER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v1, :cond_2

    .line 316
    const-string v1, "FolderIcon"

    const-string v2, "[EDIT_DEBUG] FolderIcon DragEnter"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v1, :cond_3

    .line 318
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v1

    iput-boolean v4, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    goto :goto_0

    .line 319
    :cond_3
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    if-ne p3, v1, :cond_0

    .line 320
    const-string v1, "FolderIcon"

    const-string v2, "[EDIT_DEBUG] FolderIcon DragExit"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v1

    iput-boolean v3, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->mDragOver:Z

    .line 322
    iget-object v1, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;->this$0:Lcom/htc/launcher/FolderIcon;

    #setter for: Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z
    invoke-static {v1, v4}, Lcom/htc/launcher/FolderIcon;->access$202(Lcom/htc/launcher/FolderIcon;Z)Z

    move-object v0, p1

    .line 323
    check-cast v0, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 324
    .restart local v0       #dg:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    goto :goto_0
.end method
