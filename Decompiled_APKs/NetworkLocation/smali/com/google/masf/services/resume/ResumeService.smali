.class public abstract Lcom/google/masf/services/resume/ResumeService;
.super Ljava/lang/Object;


# instance fields
.field private requestIdStore:Lcom/google/masf/services/resume/RequestIdStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/masf/services/resume/RequestIdStore;

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/masf/services/resume/RequestIdStore;-><init>(Lcom/google/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/masf/services/resume/RequestIdStore;

    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected declared-synchronized addClientTicket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.addClientTicketMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/masf/services/resume/ResumeService;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/masf/services/resume/RequestIdStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/masf/services/resume/RequestIdStore;->setServerId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized removeClientTicket(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.removeClientTicketMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/masf/services/resume/ResumeService;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/masf/services/resume/RequestIdStore;

    invoke-virtual {v0, p1}, Lcom/google/masf/services/resume/RequestIdStore;->removeClientId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
