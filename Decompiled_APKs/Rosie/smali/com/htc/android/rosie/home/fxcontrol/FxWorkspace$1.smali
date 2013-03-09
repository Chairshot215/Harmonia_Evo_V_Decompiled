.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onPreDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2231
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showEditControls(Z)V

    .line 2232
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 2233
    .local v0, other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v0, :cond_0

    .line 2234
    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showEditControls(Z)V

    .line 2237
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1502(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2238
    return-void
.end method
