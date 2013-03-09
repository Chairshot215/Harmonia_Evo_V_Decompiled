.class public abstract Lcom/htc/CustomizationSetup/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/CustomizationSetup/AsyncTask$4;,
        Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;,
        Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;,
        Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;,
        Lcom/htc/CustomizationSetup/AsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0xa

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

.field private final mWorker:Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v2, 0xa

    .line 136
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 139
    new-instance v0, Lcom/htc/CustomizationSetup/AsyncTask$1;

    invoke-direct {v0}, Lcom/htc/CustomizationSetup/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 147
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/CustomizationSetup/AsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/htc/CustomizationSetup/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 154
    new-instance v0, Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;-><init>(Lcom/htc/CustomizationSetup/AsyncTask$1;)V

    sput-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sHandler:Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 183
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask$Status;->PENDING:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    .line 184
    new-instance v0, Lcom/htc/CustomizationSetup/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/htc/CustomizationSetup/AsyncTask$2;-><init>(Lcom/htc/CustomizationSetup/AsyncTask;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mWorker:Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;

    .line 191
    new-instance v0, Lcom/htc/CustomizationSetup/AsyncTask$3;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mWorker:Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/CustomizationSetup/AsyncTask$3;-><init>(Lcom/htc/CustomizationSetup/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 219
    return-void
.end method

.method static synthetic access$200()Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sHandler:Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/CustomizationSetup/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0, p1}, Lcom/htc/CustomizationSetup/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 419
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask$Status;->FINISHED:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    .line 420
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 327
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/htc/CustomizationSetup/AsyncTask;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/htc/CustomizationSetup/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    sget-object v1, Lcom/htc/CustomizationSetup/AsyncTask$Status;->PENDING:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 380
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask$4;->$SwitchMap$com$htc$CustomizationSetup$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/htc/CustomizationSetup/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    :cond_0
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask$Status;->RUNNING:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    .line 393
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AsyncTask;->onPreExecute()V

    .line 395
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mWorker:Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 398
    return-object p0

    .line 382
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 362
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/htc/CustomizationSetup/AsyncTask$Status;
    .locals 1

    .prologue
    .line 227
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mStatus:Lcom/htc/CustomizationSetup/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 302
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 291
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 255
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask;,"Lcom/htc/CustomizationSetup/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    sget-object v0, Lcom/htc/CustomizationSetup/AsyncTask;->sHandler:Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;-><init>(Lcom/htc/CustomizationSetup/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 415
    return-void
.end method
