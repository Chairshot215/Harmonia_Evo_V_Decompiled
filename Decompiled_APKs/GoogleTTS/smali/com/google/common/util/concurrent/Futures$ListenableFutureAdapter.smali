.class Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenableFutureAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingFuture",
        "<TT;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final adapterExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final delegate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final executionList:Lcom/google/common/util/concurrent/ExecutionList;

.field private final hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->adapterExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3
    .parameter "listener"
    .parameter "exec"

    .prologue
    .line 543
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;,"Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->adapterExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;-><init>(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 563
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;,"Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;,"Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    return-object v0
.end method
