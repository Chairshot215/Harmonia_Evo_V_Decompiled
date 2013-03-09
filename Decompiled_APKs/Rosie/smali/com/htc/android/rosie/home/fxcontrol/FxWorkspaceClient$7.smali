.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;
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
    .line 904
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 907
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAddPanelBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 908
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showRemovePanelBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 909
    return-void
.end method

.method public onCompleted(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;I)V
    .locals 2
    .parameter "animation"
    .parameter "playbackResult"

    .prologue
    .line 912
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hide add panel bar complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAddPanelBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V

    .line 915
    :cond_1
    return-void
.end method
