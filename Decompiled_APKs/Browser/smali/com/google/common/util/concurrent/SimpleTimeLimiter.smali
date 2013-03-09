.class public Lcom/google/common/util/concurrent/SimpleTimeLimiter;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/TimeLimiter;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "executor"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method

.method private static declaresInterruptedEx(Ljava/lang/reflect/Method;)Z
    .locals 5
    .parameter "method"

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 154
    .local v1, exType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/InterruptedException;

    if-ne v1, v4, :cond_0

    .line 155
    const/4 v4, 0x1

    .line 158
    .end local v1           #exType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return v4

    .line 152
    .restart local v1       #exType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v1           #exType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static findInterruptibleMethods(Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, interfaceType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 143
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 144
    .local v3, m:Ljava/lang/reflect/Method;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->declaresInterruptedEx(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v3           #m:Ljava/lang/reflect/Method;
    :cond_1
    return-object v4
.end method

.method private static newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, interfaceType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, object:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter "timeoutDuration"
    .parameter "timeoutUnit"
    .parameter "amInterruptible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    const/4 v4, 0x1

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-lez v3, :cond_0

    move v3, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 122
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-eqz p5, :cond_1

    .line 124
    :try_start_0
    invoke-interface {v1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 131
    :goto_1
    return-object v3

    .line 119
    .end local v1           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 127
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {v0, v4}, Lcom/google/common/base/Throwables;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 130
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v2

    .line 131
    .local v2, uninterruptible:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    .line 135
    .end local v2           #uninterruptible:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_2
    move-exception v0

    .line 136
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    new-instance v3, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    invoke-direct {v3, v0}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter "timeoutDuration"
    .parameter "timeoutUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, target:Ljava/lang/Object;,"TT;"
    .local p2, interfaceType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const-string v2, "interfaceType must be an interface type"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    invoke-static {p2}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->findInterruptibleMethods(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v6

    .line 94
    .local v6, interruptibleMethods:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    new-instance v0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V

    .line 111
    .local v0, handler:Ljava/lang/reflect/InvocationHandler;
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0           #handler:Ljava/lang/reflect/InvocationHandler;
    .end local v6           #interruptibleMethods:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
