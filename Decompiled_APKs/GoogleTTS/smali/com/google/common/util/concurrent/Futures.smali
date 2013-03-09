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
