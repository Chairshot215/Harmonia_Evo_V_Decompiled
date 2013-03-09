.class Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendLegalDocVersion"
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
    .line 484
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;->mContext:Landroid/content/Context;

    .line 486
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 490
    const-string v1, "CSFrameWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SendLegalDocVersion versionList =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;->this$0:Lcom/htc/cs/service/DashboardService;

    #getter for: Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/cs/service/DashboardService;->access$300(Lcom/htc/cs/service/DashboardService;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->setLegalDocVersion()Z
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$400(Lcom/htc/cs/service/DashboardService;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 496
    add-int/lit8 v0, v0, 0x1

    .line 497
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 501
    :cond_1
    const-string v1, "CSFrameWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SendLegalDocVersion  DONE versionList =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;->this$0:Lcom/htc/cs/service/DashboardService;

    #getter for: Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/cs/service/DashboardService;->access$300(Lcom/htc/cs/service/DashboardService;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method
