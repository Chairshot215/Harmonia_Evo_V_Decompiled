.class Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;-><init>(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)V

    return-void
.end method

.method private loop()V
    .locals 7

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 77
    .local v0, currentThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, threadName:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    #getter for: Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z
    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->access$100(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    #getter for: Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->access$200(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/util/NamedTask;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .local v2, task:Lcom/google/android/googlequicksearchbox/util/NamedTask;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 88
    :try_start_1
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/util/NamedTask;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v4, "QSB.SingleThreadNamedTaskExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v2           #task:Lcom/google/android/googlequicksearchbox/util/NamedTask;
    :catch_1
    move-exception v1

    .line 83
    .local v1, ex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 94
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    #getter for: Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->access$100(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QSB.SingleThreadNamedTaskExecutor"

    const-string v1, "Worker exited before close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    #getter for: Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->access$100(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "QSB.SingleThreadNamedTaskExecutor"

    const-string v2, "Worker exited before close"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v0
.end method
