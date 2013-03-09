.class Lcom/htc/cs/service/DashboardService$checkLegalDocThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkLegalDocThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/cs/service/DashboardService;


# direct methods
.method constructor <init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 870
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->mContext:Landroid/content/Context;

    .line 871
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 875
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 878
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->checkLegalDoc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->removeAccount()V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$700(Lcom/htc/cs/service/DashboardService;)V

    .line 881
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->cancelLegalDocAlarm(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$800(Landroid/content/Context;)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->cancelLegalDocAlarm(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$800(Landroid/content/Context;)V

    goto :goto_0
.end method
