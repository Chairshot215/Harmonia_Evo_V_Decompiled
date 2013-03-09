.class Lcom/htc/launcher/DesktopItemController$11;
.super Landroid/os/Handler;
.source "DesktopItemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DesktopItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;)V
    .locals 0
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$11;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$11;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1780
    :goto_0
    return-void

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$11;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {v1, v0}, Lcom/htc/launcher/Workspace;->onLeapRearrangeComplete([I)V

    goto :goto_0
.end method
