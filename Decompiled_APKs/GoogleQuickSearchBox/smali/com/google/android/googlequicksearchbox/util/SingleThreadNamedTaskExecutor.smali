.class public Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;
    }
.end annotation


# instance fields
.field private volatile mClosed:Z

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .parameter "threadFactory"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 38
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$Worker;-><init>(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mWorker:Ljava/lang/Thread;

    .line 39
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public static factory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/android/googlequicksearchbox/util/Factory;
    .locals 1
    .parameter "threadFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/Factory",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method public cancelPendingTasks()V
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cancelPendingTasks() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 49
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    .line 54
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 56
    return-void
.end method

.method public execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "execute() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
