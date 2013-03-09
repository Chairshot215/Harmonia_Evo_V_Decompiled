.class Lcom/htc/omadm/libdo/system/SysLib$3;
.super Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/libdo/system/SysLib;->enable3GIND(Z)V
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
    .line 298
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$3;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 301
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->bDMCommand:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 302
    .local v1, value:I
    :goto_0
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$3;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$3;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+EN3GIND="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, response:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$3;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$3;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 309
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "GetResponse"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$3;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v3

    .line 312
    return-void

    .line 301
    .end local v0           #response:Ljava/lang/String;
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    .restart local v0       #response:Ljava/lang/String;
    .restart local v1       #value:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
