.class Lcom/htc/cs/service/DashboardService$SendAccountSetting;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccountSetting"
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
    .line 464
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$SendAccountSetting;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$SendAccountSetting;->mContext:Landroid/content/Context;

    .line 466
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$SendAccountSetting;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->setMarketOptIn()Z
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$200(Lcom/htc/cs/service/DashboardService;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 475
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 478
    :cond_1
    return-void
.end method
