.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapBasedElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    .line 344
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate:Ljava/util/Set;

    .line 345
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 391
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 392
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    .line 400
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 335
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "element"

    .prologue
    .line 379
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    #calls: Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$300(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
