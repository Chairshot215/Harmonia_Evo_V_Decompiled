.class Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

.field toRemove:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$backingEntries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 104
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    .local v0, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->toRemove:Ljava/util/Map$Entry;

    .line 110
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet.1;"
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->toRemove:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    iget-object v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->toRemove:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$222(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 131
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->toRemove:Ljava/util/Map$Entry;

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method
