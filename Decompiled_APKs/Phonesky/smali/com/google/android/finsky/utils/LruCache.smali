.class public Lcom/google/android/finsky/utils/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "maxSize"

    .prologue
    .line 79
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-gtz p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput p1, p0, Lcom/google/android/finsky/utils/LruCache;->maxSize:I

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 85
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 198
    .local v0, result:I
    if-gez v0, :cond_0

    .line 199
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    return v0
.end method

.method private trimToSize(I)V
    .locals 6
    .parameter "maxSize"

    .prologue
    .line 141
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    :goto_0
    iget v3, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    if-le v3, p1, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v1, :cond_2

    .line 157
    .end local v1           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    iget v3, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    if-eqz v3, :cond_3

    .line 158
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    .restart local v1       #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, value:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v3, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/utils/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    .line 151
    iget v3, p0, Lcom/google/android/finsky/utils/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/finsky/utils/LruCache;->evictionCount:I

    .line 154
    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/utils/LruCache;->entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v1           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_3
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    return-void
.end method

.method public final declared-synchronized evictAll()V
    .locals 1

    .prologue
    .line 219
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/LruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 95
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 98
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, result:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_1

    .line 100
    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/utils/LruCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 115
    .end local v0           #result:Ljava/lang/Object;,"TV;"
    .local v1, result:Ljava/lang/Object;,"TV;"
    :goto_0
    monitor-exit p0

    return-object v1

    .line 104
    .end local v1           #result:Ljava/lang/Object;,"TV;"
    .restart local v0       #result:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/utils/LruCache;->missCount:I

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/utils/LruCache;->createCount:I

    .line 111
    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    .line 112
    iget-object v2, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->maxSize:I

    invoke-direct {p0, v2}, Lcom/google/android/finsky/utils/LruCache;->trimToSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v1, v0

    .line 115
    .end local v0           #result:Ljava/lang/Object;,"TV;"
    .restart local v1       #result:Ljava/lang/Object;,"TV;"
    goto :goto_0
.end method

.method public final declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 130
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/android/finsky/utils/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/utils/LruCache;->putCount:I

    .line 131
    iget v1, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/utils/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    .line 132
    iget-object v1, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_2

    .line 134
    iget v1, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    .line 136
    :cond_2
    iget v1, p0, Lcom/google/android/finsky/utils/LruCache;->maxSize:I

    invoke-direct {p0, v1}, Lcom/google/android/finsky/utils/LruCache;->trimToSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 171
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 174
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/utils/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_1

    .line 176
    iget v1, p0, Lcom/google/android/finsky/utils/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/utils/LruCache;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, this:Lcom/google/android/finsky/utils/LruCache;,"Lcom/google/android/finsky/utils/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 285
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->hitCount:I

    iget v3, p0, Lcom/google/android/finsky/utils/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 286
    .local v0, accesses:I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/android/finsky/utils/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 287
    .local v1, hitPercent:I
    :cond_0
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/utils/LruCache;->maxSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/finsky/utils/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/finsky/utils/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 285
    .end local v0           #accesses:I
    .end local v1           #hitPercent:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
