.class Lcom/htc/omadm/libdo/system/SysLib$8;
.super Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/libdo/system/SysLib;->ExecRefurbish()V
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
    .line 861
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 865
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #calls: Lcom/htc/omadm/libdo/system/SysLib;->getPassword()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$600(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, msl:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/omadm/util/Utility;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    const-string v0, "C841"

    .line 868
    .local v0, SPC:Ljava/lang/String;
    const-string v3, "SysLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify SPC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v5}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    const-string v4, "C8C901"

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, response:Ljava/lang/String;
    const-string v3, "SysLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8C901:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 875
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 876
    :try_start_0
    const-string v3, "SysLib"

    const-string v5, "GetResponse"

    invoke-static {v3, v5}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$8;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 878
    monitor-exit v4

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
