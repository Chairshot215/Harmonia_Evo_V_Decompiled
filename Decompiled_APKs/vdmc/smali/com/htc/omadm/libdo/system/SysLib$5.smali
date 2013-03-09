.class Lcom/htc/omadm/libdo/system/SysLib$5;
.super Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/libdo/system/SysLib;->radioReset(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/system/SysLib;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/system/SysLib;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 409
    iget v0, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->iDMCommand:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->iDMCommand:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->iDMCommand:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #calls: Lcom/htc/omadm/libdo/system/SysLib;->setActivationDate()Z
    invoke-static {v0}, Lcom/htc/omadm/libdo/system/SysLib;->access$400(Lcom/htc/omadm/libdo/system/SysLib;)Z

    .line 415
    :cond_1
    const-string v0, "SysLib"

    const-string v1, ">C8290200"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v0, "SysLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v2

    const-string v3, "C8290200"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    iget-object v0, v0, Lcom/htc/omadm/libdo/system/SysLib;->mReloadHFAProp:Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    iget-object v0, v0, Lcom/htc/omadm/libdo/system/SysLib;->mReloadHFAProp:Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/omadm/libdo/system/SysLib;->access$500(Lcom/htc/omadm/libdo/system/SysLib;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    const/4 v1, 0x1

    #setter for: Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z
    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$102(Lcom/htc/omadm/libdo/system/SysLib;Z)Z

    .line 430
    const-string v0, "SysLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radioReset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$100(Lcom/htc/omadm/libdo/system/SysLib;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 432
    :try_start_0
    const-string v0, "SysLib"

    const-string v2, "GetResponse"

    invoke-static {v0, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$5;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
