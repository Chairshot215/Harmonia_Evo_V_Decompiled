.class Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
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

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, delegate:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
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
    .line 740
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 707
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 709
    monitor-exit v1

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 659
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 647
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 653
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 627
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
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
    .line 731
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 758
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 762
    :goto_0
    return v0

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 767
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 641
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/Synchronized;->multiset(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Lcom/google/common/collect/Multiset;
    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->access$100(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    monitor-exit v1

    return-object v0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2
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
    .line 677
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 695
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
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
    .line 701
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
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
    .line 689
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 635
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
