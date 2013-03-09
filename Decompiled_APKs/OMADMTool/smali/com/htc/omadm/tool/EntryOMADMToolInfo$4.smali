.class final Lcom/htc/omadm/tool/EntryOMADMToolInfo$4;
.super Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;
.source "EntryOMADMToolInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 394
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryOMADMToolInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->sDMCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$500()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->sDMCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EntryOMADMToolInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 399
    :try_start_0
    const-string v0, "EntryOMADMToolInfo"

    const-string v2, "GetResponse"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$900()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
