.class Lcom/htc/omadm/libdo/system/SysLib$1;
.super Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/libdo/system/SysLib;->setDDTM(Z)Z
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
    .line 180
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    iget-boolean v3, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->bDMCommand:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 185
    .local v0, value:I
    :goto_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+HTC_DDTM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/system/SysLib;->_getDDTM()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 190
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #setter for: Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z
    invoke-static {v2, v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$102(Lcom/htc/omadm/libdo/system/SysLib;Z)Z

    .line 193
    :goto_1
    const-string v1, "SysLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDDTM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$100(Lcom/htc/omadm/libdo/system/SysLib;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 195
    :try_start_0
    const-string v1, "SysLib"

    const-string v3, "GetResponse"

    invoke-static {v1, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    return-void

    .end local v0           #value:I
    :cond_0
    move v0, v2

    .line 184
    goto :goto_0

    .line 192
    .restart local v0       #value:I
    :cond_1
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$1;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #setter for: Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z
    invoke-static {v1, v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$102(Lcom/htc/omadm/libdo/system/SysLib;Z)Z

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
