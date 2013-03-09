.class Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SetMultimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
