.class Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;
.super Ljava/lang/Object;
.source "FxStreamingTexture.java"

# interfaces
.implements Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxStreamingTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private m_fIsSet:Z

.field private m_lock:Ljava/lang/Object;

.field private m_value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxStreamingTexture;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->this$0:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_value:Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    if-nez v0, :cond_0

    const-string v0, "FxStreamingTexture"

    const-string v2, "BasicFuture_get timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "FxStreamingTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicFuture_get return m_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_value:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_fIsSet:Z

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_value:Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->m_lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
