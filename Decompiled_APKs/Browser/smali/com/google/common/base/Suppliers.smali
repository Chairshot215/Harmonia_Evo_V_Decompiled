.class public final Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Suppliers$ThreadSafeSupplier;,
        Lcom/google/common/base/Suppliers$SupplierOfInstance;,
        Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;,
        Lcom/google/common/base/Suppliers$MemoizingSupplier;,
        Lcom/google/common/base/Suppliers$SupplierComposition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lcom/google/common/base/Function;Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TF;TT;>;",
            "Lcom/google/common/base/Supplier",
            "<TF;>;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TF;TT;>;"
    .local p1, first:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TF;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierComposition;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Suppliers$SupplierComposition;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, delegate:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TT;>;"
    new-instance v1, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    invoke-direct {v1, v0}, Lcom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    return-object v1
.end method

.method public static memoizeWithExpiration(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Supplier;
    .locals 1
    .parameter
    .parameter "duration"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, delegate:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TT;>;"
    new-instance v0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;
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
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, instance:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synchronizedSupplier(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, delegate:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TT;>;"
    new-instance v1, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    invoke-direct {v1, v0}, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    return-object v1
.end method
