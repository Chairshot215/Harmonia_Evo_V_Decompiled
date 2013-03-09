.class Lcom/htc/dockmode/shortcut/SelectAppActivity$1;
.super Landroid/os/Handler;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/shortcut/SelectAppActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    #calls: Lcom/htc/dockmode/shortcut/SelectAppActivity;->loadApplications()Ljava/util/List;
    invoke-static {v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->access$000(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    new-instance v2, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

    iget-object v3, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-direct {v2, v3, v0}, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;-><init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;Ljava/util/List;)V

    #setter for: Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApAdapter:Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;
    invoke-static {v1, v2}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->access$102(Lcom/htc/dockmode/shortcut/SelectAppActivity;Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;)Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

    .line 105
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    #getter for: Lcom/htc/dockmode/shortcut/SelectAppActivity;->mUIHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->access$200(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x10001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
    .end packed-switch
.end method
