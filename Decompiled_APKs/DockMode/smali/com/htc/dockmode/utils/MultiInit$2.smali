.class Lcom/htc/dockmode/utils/MultiInit$2;
.super Landroid/os/Handler;
.source "MultiInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/utils/MultiInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/utils/MultiInit;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/utils/MultiInit;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/dockmode/utils/MultiInit$2;->this$0:Lcom/htc/dockmode/utils/MultiInit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit$2;->this$0:Lcom/htc/dockmode/utils/MultiInit;

    #calls: Lcom/htc/dockmode/utils/MultiInit;->onRefresh1()V
    invoke-static {v0}, Lcom/htc/dockmode/utils/MultiInit;->access$200(Lcom/htc/dockmode/utils/MultiInit;)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit$2;->this$0:Lcom/htc/dockmode/utils/MultiInit;

    #calls: Lcom/htc/dockmode/utils/MultiInit;->onRefresh2()V
    invoke-static {v0}, Lcom/htc/dockmode/utils/MultiInit;->access$300(Lcom/htc/dockmode/utils/MultiInit;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x99903
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
