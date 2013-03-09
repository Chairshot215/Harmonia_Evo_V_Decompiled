.class Lcom/htc/cs/service/DashboardService$sendSerialNumberThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sendSerialNumberThread"
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
    .line 785
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$sendSerialNumberThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 786
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$sendSerialNumberThread;->mContext:Landroid/content/Context;

    .line 787
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$sendSerialNumberThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cs/util/CloudProxyUtil;->sendSerialNumber(Landroid/content/Context;)V

    .line 793
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$sendSerialNumberThread;->mContext:Landroid/content/Context;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setTriggeredSendSN(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sendSerialNumberThread CSException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v0}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    goto :goto_0
.end method
