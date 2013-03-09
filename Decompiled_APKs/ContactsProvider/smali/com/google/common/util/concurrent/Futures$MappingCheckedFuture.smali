.class Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;
.super Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractCheckedFuture",
        "<TT;TE;>;"
    }
.end annotation


# instance fields
.field final mapper:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Exception;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Exception;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;,"Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture<TT;TE;>;"
    .local p1, delegate:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    .local p2, mapper:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/lang/Exception;TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 494
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lcom/google/common/base/Function;

    .line 495
    return-void
.end method


# virtual methods
.method protected mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, this:Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;,"Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture<TT;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method
