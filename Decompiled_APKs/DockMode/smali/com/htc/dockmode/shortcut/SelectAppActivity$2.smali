.class Lcom/htc/dockmode/shortcut/SelectAppActivity$2;
.super Landroid/os/Handler;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/shortcut/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$2;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$2;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    #getter for: Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApListView:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->access$300(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$2;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    #getter for: Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApAdapter:Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;
    invoke-static {v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->access$100(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_0
    .end packed-switch
.end method
