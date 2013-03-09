.class final Lcom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->immediateFailedCheckedFuture(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/CheckedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Exception;",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$3;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Exception;)Ljava/lang/Exception;
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
    .line 209
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Futures$3;->apply(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
