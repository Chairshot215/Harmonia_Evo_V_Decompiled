.class Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "Multimaps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, delegate:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultimap;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    .line 456
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 468
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    .line 469
    iget-object v2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 471
    .local v1, unmodifiableMap:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;

    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V

    .restart local v0       #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 507
    .end local v1           #unmodifiableMap:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 512
    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    #calls: Lcom/google/common/collect/Multimaps;->unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v1}, Lcom/google/common/collect/Multimaps;->access$200(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 515
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    #calls: Lcom/google/common/collect/Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->access$100(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 532
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 535
    :cond_0
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 524
    .local v0, result:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TK;>;"
    if-nez v0, :cond_0

    .line 525
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Multisets;->unmodifiableMultiset(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 527
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 553
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 567
    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 568
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 570
    :cond_0
    return-object v0
.end method
