.class Lcom/htc/launcher/DesktopItemController$1;
.super Landroid/os/Handler;
.source "DesktopItemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->ensurePendingTaskRunner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$1;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 970
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 982
    :goto_0
    return-void

    .line 973
    :pswitch_0
    const-string v0, "DesktopItemController"

    const-string v1, "binding items"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$1;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$1;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$000(Lcom/htc/launcher/DesktopItemController;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/htc/launcher/DesktopItemController;->flushTasks(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/htc/launcher/DesktopItemController;->access$100(Lcom/htc/launcher/DesktopItemController;Ljava/util/List;)V

    .line 975
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$1;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->sendMsgDoneAllBinding()V

    goto :goto_0

    .line 978
    :pswitch_1
    const-string v0, "DesktopItemController"

    const-string v1, "flush tasks"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$1;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$1;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$000(Lcom/htc/launcher/DesktopItemController;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/htc/launcher/DesktopItemController;->flushTasks(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/htc/launcher/DesktopItemController;->access$100(Lcom/htc/launcher/DesktopItemController;Ljava/util/List;)V

    goto :goto_0

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x514
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
