.class public Lcom/android/mms/util/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field private final mAsyncLoader:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mPopStackRunnable:Ljava/lang/Runnable;

.field private final mThingsToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/mms/util/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/TaskStack$1;-><init>(Lcom/android/mms/util/TaskStack;)V

    iput-object v0, p0, Lcom/android/mms/util/TaskStack;->mPopStackRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/TaskStack;->mAsyncLoader:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/TaskStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public push(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 30
    iget-object v1, p0, Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/android/mms/util/TaskStack;->mAsyncLoader:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/android/mms/util/TaskStack;->mPopStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
