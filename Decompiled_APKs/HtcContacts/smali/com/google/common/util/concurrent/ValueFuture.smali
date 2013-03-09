.class public Lcom/google/common/util/concurrent/ValueFuture;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "ValueFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractListenableFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, this:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/ValueFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/ValueFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/google/common/util/concurrent/ValueFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ValueFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->cancel()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TV;>;"
    .local p1, newValue:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 64
    .local p0, this:Lcom/google/common/util/concurrent/ValueFuture;,"Lcom/google/common/util/concurrent/ValueFuture<TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
