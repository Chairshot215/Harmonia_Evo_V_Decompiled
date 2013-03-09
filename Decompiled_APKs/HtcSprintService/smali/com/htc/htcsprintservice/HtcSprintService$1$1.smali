.class Lcom/htc/htcsprintservice/HtcSprintService$1$1;
.super Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
.source "HtcSprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsprintservice/HtcSprintService$1;->getString(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htcsprintservice/HtcSprintService$1;


# direct methods
.method constructor <init>(Lcom/htc/htcsprintservice/HtcSprintService$1;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->this$1:Lcom/htc/htcsprintservice/HtcSprintService$1;

    iget-object v0, p1, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    invoke-direct {p0, v0}, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;-><init>(Lcom/htc/htcsprintservice/HtcSprintService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->this$1:Lcom/htc/htcsprintservice/HtcSprintService$1;

    iget-object v1, v1, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/htcsprintservice/HtcSprintService;->access$200(Lcom/htc/htcsprintservice/HtcSprintService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->this$1:Lcom/htc/htcsprintservice/HtcSprintService$1;

    iget-object v1, v1, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    iget v3, p0, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->id:I

    #calls: Lcom/htc/htcsprintservice/HtcSprintService;->getDSAProp(I)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/htcsprintservice/HtcSprintService;->access$300(Lcom/htc/htcsprintservice/HtcSprintService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->setStrResult(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->setBoolResult(Z)V

    .line 62
    iget-object v1, p0, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->this$1:Lcom/htc/htcsprintservice/HtcSprintService$1;

    iget-object v1, v1, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/htcsprintservice/HtcSprintService;->access$200(Lcom/htc/htcsprintservice/HtcSprintService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, se:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->setException(Ljava/lang/Exception;)V

    .line 66
    iget-object v1, p0, Lcom/htc/htcsprintservice/HtcSprintService$1$1;->this$1:Lcom/htc/htcsprintservice/HtcSprintService$1;

    iget-object v1, v1, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/htcsprintservice/HtcSprintService;->access$200(Lcom/htc/htcsprintservice/HtcSprintService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 68
    .end local v0           #se:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
