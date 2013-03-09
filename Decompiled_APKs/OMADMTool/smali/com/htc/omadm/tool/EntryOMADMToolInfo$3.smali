.class final Lcom/htc/omadm/tool/EntryOMADMToolInfo$3;
.super Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;
.source "EntryOMADMToolInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/EntryOMADMToolInfo;->closeDMAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 331
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$500()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$500()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    .line 333
    invoke-static {v3}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$502(Lcom/htc/omadm/util/DMAgentConnector;)Lcom/htc/omadm/util/DMAgentConnector;

    .line 334
    invoke-static {v2}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$802(Z)Z

    .line 335
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "Close DM Agent"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$200()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$200()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    .line 340
    invoke-static {v3}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$202(Lcom/htc/omadm/util/DMAgentConnector;)Lcom/htc/omadm/util/DMAgentConnector;

    .line 341
    invoke-static {v2}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$302(Z)Z

    .line 342
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "Close AT Agent"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 346
    :try_start_0
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$900()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
