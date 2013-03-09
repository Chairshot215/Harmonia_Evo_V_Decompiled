.class Lcom/htc/cs/service/DashboardService$runInitServiceThread;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "runInitServiceThread"
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
    .line 893
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$runInitServiceThread;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 894
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$runInitServiceThread;->mContext:Landroid/content/Context;

    .line 895
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$runInitServiceThread;->this$0:Lcom/htc/cs/service/DashboardService;

    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runInitServiceThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/cs/service/DashboardService;->initService(Landroid/content/Context;)V

    .line 900
    return-void
.end method
