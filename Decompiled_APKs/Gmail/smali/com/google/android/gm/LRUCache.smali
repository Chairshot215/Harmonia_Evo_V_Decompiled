.class public Lcom/google/android/gm/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    invoke-direct {p0, p1, p1}, Lcom/google/android/gm/LRUCache;-><init>(II)V

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "maxCapacity"

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 43
    iput p2, p0, Lcom/google/android/gm/LRUCache;->maxCapacity:I

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized addElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 92
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    iget v0, p0, Lcom/google/android/gm/LRUCache;->maxCapacity:I

    return v0
.end method

.method public declared-synchronized getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 72
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/gm/LRUCache;,"Lcom/google/android/gm/LRUCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/LRUCache;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gm/LRUCache;->maxCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
