.class Lcom/htc/dockmode/utils/MultiInit$1;
.super Landroid/os/Handler;
.source "MultiInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/utils/MultiInit;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/utils/MultiInit;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/utils/MultiInit;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/dockmode/utils/MultiInit$1;->this$0:Lcom/htc/dockmode/utils/MultiInit;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit$1;->this$0:Lcom/htc/dockmode/utils/MultiInit;

    #calls: Lcom/htc/dockmode/utils/MultiInit;->onInit1()V
    invoke-static {v0}, Lcom/htc/dockmode/utils/MultiInit;->access$000(Lcom/htc/dockmode/utils/MultiInit;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit$1;->this$0:Lcom/htc/dockmode/utils/MultiInit;

    #calls: Lcom/htc/dockmode/utils/MultiInit;->onInit2()V
    invoke-static {v0}, Lcom/htc/dockmode/utils/MultiInit;->access$100(Lcom/htc/dockmode/utils/MultiInit;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x99901
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
