.class Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenewDataCenterThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/cs/service/DashboardService;


# direct methods
.method constructor <init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->mContext:Landroid/content/Context;

    .line 512
    iput-object p3, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->mIntent:Landroid/content/Intent;

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 517
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 520
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->this$0:Lcom/htc/cs/service/DashboardService;

    iget-object v2, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->mIntent:Landroid/content/Intent;

    #calls: Lcom/htc/cs/service/DashboardService;->resetServerUri(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/htc/cs/service/DashboardService;->access$500(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 524
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->resetIMCService()V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$000(Lcom/htc/cs/service/DashboardService;)V

    .line 527
    :cond_0
    return-void
.end method
