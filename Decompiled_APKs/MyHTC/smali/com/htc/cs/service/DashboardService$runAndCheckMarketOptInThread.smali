.class Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "runAndCheckMarketOptInThread"
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
    .line 831
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 832
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    .line 833
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 837
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 840
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_3

    .line 841
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    const-string v2, "MarketOptInDirtyFlag"

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->setMarketOptIn()Z
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$200(Lcom/htc/cs/service/DashboardService;)Z

    .line 844
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    const-string v2, "MarketOptInDirtyFlag"

    invoke-static {v1, v2, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    const-string v2, "CheckLegalUpdateFail"

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 849
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->checkLegalDoc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->removeAccount()V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$700(Lcom/htc/cs/service/DashboardService;)V

    .line 851
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->cancelLegalDocAlarm(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$800(Landroid/content/Context;)V

    .line 853
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    const-string v2, "CheckLegalUpdateFail"

    invoke-static {v1, v2, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 863
    :cond_2
    :goto_0
    return-void

    .line 857
    :cond_3
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    const-string v2, "MarketOptInDirtyFlag"

    invoke-static {v1, v2, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 859
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->mContext:Landroid/content/Context;

    const-string v2, "CheckLegalUpdateFail"

    invoke-static {v1, v2, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 861
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->cancelLegalDocAlarm(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$800(Landroid/content/Context;)V

    goto :goto_0
.end method
