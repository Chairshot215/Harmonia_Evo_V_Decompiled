.class Lcom/htc/cs/service/DashboardService$UpdateURLThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateURLThread"
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
    .line 393
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$UpdateURLThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$UpdateURLThread;->context:Landroid/content/Context;

    .line 395
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$UpdateURLThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-static {v0}, Lcom/htc/cs/util/CSDatabaseUtil;->updateURL(Landroid/content/Context;)Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$UpdateURLThread;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->resetIMCService()V
    invoke-static {v0}, Lcom/htc/cs/service/DashboardService;->access$000(Lcom/htc/cs/service/DashboardService;)V

    .line 401
    return-void
.end method
