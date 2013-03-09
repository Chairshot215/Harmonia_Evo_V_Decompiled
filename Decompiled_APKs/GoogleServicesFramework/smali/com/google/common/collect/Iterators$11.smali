.class final Lcom/google/common/collect/Iterators$11;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$end:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 867
    iput p1, p0, Lcom/google/common/collect/Iterators$11;->val$offset:I

    iput p2, p0, Lcom/google/common/collect/Iterators$11;->val$end:I

    iput-object p3, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 868
    iget v0, p0, Lcom/google/common/collect/Iterators$11;->val$offset:I

    iput v0, p0, Lcom/google/common/collect/Iterators$11;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 870
    iget v0, p0, Lcom/google/common/collect/Iterators$11;->i:I

    iget v1, p0, Lcom/google/common/collect/Iterators$11;->val$end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$11;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/Iterators$11;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/Iterators$11;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method
