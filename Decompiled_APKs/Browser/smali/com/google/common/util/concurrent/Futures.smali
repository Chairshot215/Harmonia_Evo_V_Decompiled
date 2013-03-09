.class public Lcom/google/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;,
        Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;,
        Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chain(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, input:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TI;+Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/Executors;->sameThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->chain(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static chain(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .parameter
    .parameter
    .parameter "exec"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, input:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TI;+Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lcom/google/common/base/Function;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/Futures$1;)V

    .line 262
    .local v0, chain:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;,"Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 263
    return-object v0
.end method

.method public static compose(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/Executors;->sameThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->compose(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static compose(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .parameter
    .parameter
    .parameter "exec"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TI;+TO;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$4;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Futures$4;-><init>(Lcom/google/common/base/Function;)V

    .line 317
    .local v0, wrapperFunction:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TI;Lcom/google/common/util/concurrent/ListenableFuture<TO;>;>;"
    invoke-static {p0, v0, p2}, Lcom/google/common/util/concurrent/Futures;->chain(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public static compose(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;)",
            "Ljava/util/concurrent/Future",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TI;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TI;+TO;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$5;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static immediateCheckedFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(TT;)",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/google/common/util/concurrent/ValueFuture;->create()Lcom/google/common/util/concurrent/ValueFuture;

    move-result-object v0

    .line 164
    .local v0, future:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TT;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ValueFuture;->set(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/google/common/util/concurrent/Futures$2;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/Futures$2;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->makeChecked(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v1

    return-object v1
.end method

.method public static immediateFailedCheckedFuture(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(TE;)",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, exception:Ljava/lang/Exception;,"TE;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/Futures$3;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/Futures$3;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->makeChecked(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {}, Lcom/google/common/util/concurrent/ValueFuture;->create()Lcom/google/common/util/concurrent/ValueFuture;

    move-result-object v0

    .line 187
    .local v0, future:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TT;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ValueFuture;->setException(Ljava/lang/Throwable;)Z

    .line 188
    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/google/common/util/concurrent/ValueFuture;->create()Lcom/google/common/util/concurrent/ValueFuture;

    move-result-object v0

    .line 150
    .local v0, future:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TT;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ValueFuture;->set(Ljava/lang/Object;)Z

    .line 151
    return-object v0
.end method

.method public static makeChecked(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Exception;",
            "TE;>;)",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .local p1, mapper:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/lang/Exception;TE;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->makeListenable(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static makeListenable(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 123
    .end local p0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :goto_0
    return-object p0

    .restart local p0       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/UninterruptibleFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    instance-of v0, p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    .line 57
    .end local p0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :goto_0
    return-object p0

    .restart local p0       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Futures$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;)V

    move-object p0, v0

    goto :goto_0
.end method
