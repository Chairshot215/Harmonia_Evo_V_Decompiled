.class Lcom/htc/cs/service/DashboardService$readSvrClkThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "readSvrClkThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/cs/service/DashboardService;


# direct methods
.method constructor <init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "con"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 427
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->context:Landroid/content/Context;

    .line 428
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 432
    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getRebootFlag(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    :cond_0
    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    :try_start_0
    new-instance v3, Lcom/htc/cs/util/serverClock;

    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/cs/util/serverClock;-><init>(Landroid/content/Context;)V

    .line 437
    .local v3, svrClk:Lcom/htc/cs/util/serverClock;
    invoke-virtual {v3}, Lcom/htc/cs/util/serverClock;->readServerClock()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 438
    .local v1, serverTime:J
    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setRebootFlag(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v1           #serverTime:J
    .end local v3           #svrClk:Lcom/htc/cs/util/serverClock;
    :cond_1
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #getter for: Lcom/htc/cs/service/DashboardService;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v4}, Lcom/htc/cs/service/DashboardService;->access$100(Lcom/htc/cs/service/DashboardService;)Lcom/htc/cs/util/Logger;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
