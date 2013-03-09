.class Lcom/htc/cs/service/DashboardService$serverTimePowerOn;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "serverTimePowerOn"
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
    .line 409
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;->context:Landroid/content/Context;

    .line 411
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;->this$0:Lcom/htc/cs/service/DashboardService;

    iget-object v0, v0, Lcom/htc/cs/service/DashboardService;->svrClock:Lcom/htc/cs/util/serverClock;

    invoke-virtual {v0}, Lcom/htc/cs/util/serverClock;->powerOnProcess()Z

    .line 417
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setRebootFlag(Landroid/content/Context;Z)V

    .line 418
    return-void
.end method
