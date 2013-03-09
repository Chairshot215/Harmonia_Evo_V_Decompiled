.class Lcom/htc/omadm/libdo/system/SysLib$7;
.super Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/libdo/system/SysLib;->setDMChannelInRadio(Ljava/lang/String;)Z
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
    .line 760
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$7;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 763
    const-string v0, ""

    .line 764
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$7;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->sDMCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    const-string v1, "SysLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$7;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib;->_getDMChannelInRadio()Z

    .line 768
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$7;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    const/4 v2, 0x1

    #setter for: Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z
    invoke-static {v1, v2}, Lcom/htc/omadm/libdo/system/SysLib;->access$102(Lcom/htc/omadm/libdo/system/SysLib;Z)Z

    .line 770
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$7;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 771
    :try_start_0
    const-string v1, "SysLib"

    const-string v3, "GetResponse"

    invoke-static {v1, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib$7;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/omadm/libdo/system/SysLib;->access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 773
    monitor-exit v2

    .line 774
    return-void

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
