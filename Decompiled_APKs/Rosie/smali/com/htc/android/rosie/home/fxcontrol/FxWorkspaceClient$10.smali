.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;
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
    .line 849
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 852
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFunctionBar() begin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->getTimeline()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showFunctionBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 854
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showButtonBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 855
    return-void
.end method

.method public onCompleted(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;I)V
    .locals 4
    .parameter "animation"
    .parameter "playbackResult"

    .prologue
    const/4 v3, 0x1

    .line 858
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFunctionBar() complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->getTimeline()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    if-ne p2, v3, :cond_1

    .line 860
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showButtonBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 861
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget-boolean v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsEnteringEditMode:Z

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsEnteringEditMode:Z

    .line 863
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;->onPostEnterEditMode()V

    .line 868
    :cond_1
    return-void
.end method
