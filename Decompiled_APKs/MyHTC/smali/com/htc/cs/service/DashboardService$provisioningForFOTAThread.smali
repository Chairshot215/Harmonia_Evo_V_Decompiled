.class Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "provisioningForFOTAThread"
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
    .line 805
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 806
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->mContext:Landroid/content/Context;

    .line 807
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 813
    :try_start_0
    iget-object v2, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHashedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/cs/util/CSDatabaseUtil;->WriteAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.csengine.startservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, csIntent:Landroid/content/Intent;
    const-string v2, "test"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    iget-object v2, p0, Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    .end local v0           #csIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "provisioningForFOTAThread Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
