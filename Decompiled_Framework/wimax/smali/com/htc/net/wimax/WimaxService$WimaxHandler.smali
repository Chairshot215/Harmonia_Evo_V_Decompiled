.class Lcom/htc/net/wimax/WimaxService$WimaxHandler;
.super Landroid/os/Handler;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WimaxHandler"
.end annotation


# static fields
.field private static final MAX_CONN_RETRY:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/htc/net/wimax/WimaxService;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WimaxService"

    const-string v4, "handleMessage MESSAGE_ENABLE_WIMAX"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v2, v1}, Lcom/htc/net/wimax/WimaxService;->setWimaxEnabledBlocking(ZZ)Z

    move-result v0

    :pswitch_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WimaxService"

    const-string v2, "handleMessage MESSAGE_START_WIMAX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->isSimMode:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    #calls: Lcom/htc/net/wimax/WimaxService;->nap(I)V
    invoke-static {v1}, Lcom/htc/net/wimax/WimaxService;->access$500(I)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxService;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxService;->dcIsConnected()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "WimaxService"

    const-string v2, "In simulation, the simulated SS \'might\' not turn on!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$600()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "WimaxService"

    const-string v4, "handleMessage MESSAGE_DISABLE_WIMAX"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_5

    :goto_1
    invoke-virtual {v3, v1, v2}, Lcom/htc/net/wimax/WimaxService;->setWimaxEnabledBlocking(ZZ)Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v1}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->access$600()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v1}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->stopDriver()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
