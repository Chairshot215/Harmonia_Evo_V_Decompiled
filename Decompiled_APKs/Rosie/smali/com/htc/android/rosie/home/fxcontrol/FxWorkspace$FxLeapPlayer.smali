.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Lcom/htc/launcher/LeapController$LeapAnimationPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FxLeapPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setZoomInAnimationProgress(IIFI)V
    .locals 1
    .parameter "selectPage"
    .parameter "action"
    .parameter "ratio"
    .parameter "virtualScrollX"

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->setZoomInAnimationProgress(IIFI)V

    .line 1821
    return-void
.end method

.method public setZoomOutAnimationProgress(IIFI)V
    .locals 1
    .parameter "selectPage"
    .parameter "action"
    .parameter "ratio"
    .parameter "virtualScrollX"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->setZoomOutAnimationProgress(IIFI)V

    .line 1827
    return-void
.end method
