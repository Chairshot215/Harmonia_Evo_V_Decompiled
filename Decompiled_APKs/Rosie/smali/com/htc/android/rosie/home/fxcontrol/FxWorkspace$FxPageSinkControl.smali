.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FxPageSinkControl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSink()F
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->getSink()F

    move-result v0

    return v0
.end method

.method public isSinking()Z
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->isSinking()Z

    move-result v0

    return v0
.end method

.method public playSink(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->playSink(F)V

    .line 1592
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->reset()V

    .line 1596
    return-void
.end method

.method public setScrollProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->setScrollProgress(F)V

    .line 1600
    return-void
.end method

.method public startRise()V
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startRise()V

    .line 1604
    return-void
.end method

.method public startSink(F)V
    .locals 1
    .parameter "extent"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startSink(F)V

    .line 1588
    return-void
.end method
