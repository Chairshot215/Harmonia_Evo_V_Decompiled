.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Lcom/htc/launcher/LeapController$LeapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FxLeapListener"
.end annotation


# static fields
.field static final ZOOM_IN:I = 0x0

.field static final ZOOM_OUT:I = 0x1


# instance fields
.field navBarStatusChanged:I

.field onAnimationStateChanged:Z

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1746
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1749
    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->navBarStatusChanged:I

    .line 1750
    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    return-void
.end method


# virtual methods
.method public beginLeap(I)V
    .locals 3
    .parameter "selectPage"

    .prologue
    const/4 v2, 0x0

    .line 1753
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->setBottomBarAreaVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 1755
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 1756
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->beginLeap(I)V

    .line 1757
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->beginLeap(I)V

    .line 1758
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 1759
    return-void
.end method

.method public endLeap(I)V
    .locals 2
    .parameter "selectPage"

    .prologue
    const/4 v1, 0x0

    .line 1762
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->setBottomBarAreaVisibility(I)V

    .line 1765
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    if-nez v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 1767
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->endLeap(I)V

    .line 1772
    :goto_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->endLeap(I)V

    .line 1773
    return-void

    .line 1769
    :cond_0
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    goto :goto_0
.end method

.method public onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V
    .locals 3
    .parameter "playing"
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1777
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V

    .line 1782
    if-ne p1, v1, :cond_2

    .line 1783
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 1785
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideEditHeaderBar()V

    .line 1786
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showFunctionBar()V

    .line 1787
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->navBarStatusChanged:I

    .line 1788
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    .line 1790
    :cond_0
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v0, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 1792
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showEditHeaderBar()V

    .line 1793
    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->navBarStatusChanged:I

    .line 1794
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    .line 1810
    :cond_1
    :goto_0
    return-void

    .line 1797
    :cond_2
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v0, :cond_3

    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->navBarStatusChanged:I

    if-eqz v0, :cond_3

    .line 1798
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 1799
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideEditHeaderBar()V

    .line 1800
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showFunctionBar()V

    .line 1801
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    .line 1803
    :cond_3
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->navBarStatusChanged:I

    if-eq v0, v1, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 1805
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showEditHeaderBar()V

    .line 1806
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->onAnimationStateChanged:Z

    goto :goto_0
.end method

.method public onLongPress()V
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->onLongPress()V

    .line 1814
    return-void
.end method
