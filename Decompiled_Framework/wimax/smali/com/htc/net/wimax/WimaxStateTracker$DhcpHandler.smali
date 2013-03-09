.class Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/net/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/htc/net/wimax/WimaxStateTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxStateTracker.DhcpHandler: wimax DHCP request started, mInterfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->access$2200(Lcom/htc/net/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->enableDhcp()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    invoke-static {}, Lcom/htc/net/wimax/WimaxStateTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "WimaxStateTracker.DhcpHandler: wimax DHCP request succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Lcom/htc/net/wimax/WimaxStateTracker;

    #getter for: Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->access$2300(Lcom/htc/net/wimax/WimaxStateTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    const/16 v0, 0xb

    const-string v1, "WimaxStateTracker"

    const-string v2, "WimaxStateTracker.DhcpHandler: wimax DHCP request failed: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
