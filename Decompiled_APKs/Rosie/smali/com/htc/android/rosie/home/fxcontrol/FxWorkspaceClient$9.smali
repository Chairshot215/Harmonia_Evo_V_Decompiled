.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;
.super Ljava/lang/Object;
.source "FxWorkspaceClient.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->buildNavbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 873
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showFunctionBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 874
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showButtonBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 875
    return-void
.end method

.method public onCompleted(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;I)V
    .locals 3
    .parameter "animation"
    .parameter "playbackResult"

    .prologue
    const/4 v2, 0x0

    .line 878
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hide function bar complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showFunctionBar(Z)V
    invoke-static {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 881
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget-boolean v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsLeavingEditMode:Z

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iput-boolean v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsLeavingEditMode:Z

    .line 883
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;->onPostLeaveEditMode()V

    .line 885
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtons:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->setButtonBarMarkersToEnd()V

    .line 889
    :cond_1
    return-void
.end method
