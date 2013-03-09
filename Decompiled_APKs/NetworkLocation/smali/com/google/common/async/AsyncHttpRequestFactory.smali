.class public Lcom/google/common/async/AsyncHttpRequestFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;,
        Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
    }
.end annotation


# static fields
.field protected static logger:Lcom/google/debug/LogSource;


# instance fields
.field private connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

.field private mutex:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private queue:Ljava/util/Vector;

.field protected running:Z

.field private taskRunner:Lcom/google/common/task/TaskRunner;

.field private threadFactory:Lcom/google/common/lang/ThreadFactory;

.field private workers:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v0}, Lcom/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Lcom/google/common/lang/ThreadFactory;Lcom/google/common/io/HttpConnectionFactory;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->taskRunner:Lcom/google/common/task/TaskRunner;

    iput-object p2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->threadFactory:Lcom/google/common/lang/ThreadFactory;

    iput-object p3, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

    iput-object p4, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->name:Ljava/lang/String;

    new-array v0, p5, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/task/TaskRunner;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/google/common/task/TaskRunner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/async/AsyncHttpRequestFactory;Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    move-result v0

    return v0
.end method

.method private createHttpConnection(Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

    invoke-interface {v0, p1, p2}, Lcom/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method private executeNextRequest()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    monitor-exit v1

    :goto_1
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->running:Z

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v1, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    const-string v2, "Executing AsyncHttpRequest "

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    const-string v2, "AsyncHttpRequestFactory.run(): uncaught exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private getTaskRunner()Lcom/google/common/task/TaskRunner;
    .locals 1

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->taskRunner:Lcom/google/common/task/TaskRunner;

    return-object v0
.end method

.method private submitRequest(Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public createAsyncHttpRequest(Ljava/lang/String;I)Lcom/google/common/async/AsyncHttpRequest;
    .locals 1

    new-instance v0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;-><init>(Lcom/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public run()V
    .locals 2

    sget-object v0, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    const-string v1, "run"

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory;->executeNextRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public start()V
    .locals 6

    iget-object v1, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->running:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->threadFactory:Lcom/google/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/google/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
