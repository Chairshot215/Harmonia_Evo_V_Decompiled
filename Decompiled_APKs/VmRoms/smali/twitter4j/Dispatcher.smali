.class Ltwitter4j/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private active:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private threads:[Ltwitter4j/ExecuteThread;

.field ticket:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltwitter4j/Dispatcher;-><init>(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "threadcount"

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ltwitter4j/Dispatcher;->q:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    .line 87
    iput-boolean v3, p0, Ltwitter4j/Dispatcher;->active:Z

    .line 43
    new-array v1, p2, [Ltwitter4j/ExecuteThread;

    iput-object v1, p0, Ltwitter4j/Dispatcher;->threads:[Ltwitter4j/ExecuteThread;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ltwitter4j/Dispatcher;->threads:[Ltwitter4j/ExecuteThread;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Ltwitter4j/Dispatcher;->threads:[Ltwitter4j/ExecuteThread;

    new-instance v2, Ltwitter4j/ExecuteThread;

    invoke-direct {v2, p1, p0, v0}, Ltwitter4j/ExecuteThread;-><init>(Ljava/lang/String;Ltwitter4j/Dispatcher;I)V

    aput-object v2, v1, v0

    .line 46
    iget-object v1, p0, Ltwitter4j/Dispatcher;->threads:[Ltwitter4j/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Ltwitter4j/ExecuteThread;->setDaemon(Z)V

    .line 47
    iget-object v1, p0, Ltwitter4j/Dispatcher;->threads:[Ltwitter4j/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ltwitter4j/ExecuteThread;->start()V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ltwitter4j/Dispatcher$1;

    invoke-direct {v2, p0}, Ltwitter4j/Dispatcher$1;-><init>(Ltwitter4j/Dispatcher;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 56
    return-void
.end method

.method static access$000(Ltwitter4j/Dispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Ltwitter4j/Dispatcher;->active:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized invokeLater(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/Dispatcher;->q:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    iget-object v1, p0, Ltwitter4j/Dispatcher;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object v0, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :try_start_3
    iget-object v1, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 64
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public poll()Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 68
    :goto_0
    iget-boolean v1, p0, Ltwitter4j/Dispatcher;->active:Z

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Ltwitter4j/Dispatcher;->q:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Ltwitter4j/Dispatcher;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 71
    iget-object v2, p0, Ltwitter4j/Dispatcher;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 72
    .local v0, task:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 73
    monitor-exit v1

    move-object v1, v0

    .line 84
    .end local v0           #task:Ljava/lang/Runnable;
    :goto_1
    return-object v1

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    iget-object v1, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_1
    iget-object v2, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :goto_2
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 76
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 84
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public declared-synchronized shutdown()V
    .locals 6

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Ltwitter4j/Dispatcher;->active:Z

    if-eqz v4, :cond_1

    .line 91
    const/4 v4, 0x0

    iput-boolean v4, p0, Ltwitter4j/Dispatcher;->active:Z

    .line 92
    iget-object v0, p0, Ltwitter4j/Dispatcher;->threads:[Ltwitter4j/ExecuteThread;

    .local v0, arr$:[Ltwitter4j/ExecuteThread;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 93
    .local v3, thread:Ltwitter4j/ExecuteThread;
    invoke-virtual {v3}, Ltwitter4j/ExecuteThread;->shutdown()V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v3           #thread:Ltwitter4j/ExecuteThread;
    :cond_0
    iget-object v4, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    iget-object v5, p0, Ltwitter4j/Dispatcher;->ticket:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 97
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    .end local v0           #arr$:[Ltwitter4j/ExecuteThread;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 99
    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already shutdown"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method
