.class public Lcom/google/masf/services/AsyncResult;
.super Ljava/lang/Object;


# instance fields
.field private closure:Lcom/google/masf/ServiceCallback;

.field private done:Z

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/masf/ServiceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/masf/services/AsyncResult;->closure:Lcom/google/masf/ServiceCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/masf/services/AsyncResult;->done:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/masf/services/AsyncResult;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/masf/services/AsyncResult;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/masf/services/AsyncResult;->done:Z

    iget-object v0, p0, Lcom/google/masf/services/AsyncResult;->closure:Lcom/google/masf/ServiceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/masf/services/AsyncResult;->closure:Lcom/google/masf/ServiceCallback;

    invoke-interface {v0, p1}, Lcom/google/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
