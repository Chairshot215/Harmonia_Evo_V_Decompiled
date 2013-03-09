.class public Lcom/google/android/location/cache/TemporalCache;
.super Ljava/lang/Object;
.source "TemporalCache.java"

# interfaces
.implements Lcom/google/android/location/data/Persistent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/cache/TemporalCache$Stats;,
        Lcom/google/android/location/cache/TemporalCache$Contents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/location/data/Persistent",
        "<",
        "Lcom/google/android/location/cache/TemporalCache",
        "<TK;TP;>;>;"
    }
.end annotation


# instance fields
.field private final contents:Lcom/google/android/location/cache/TemporalCache$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/cache/TemporalCache$Contents",
            "<TK;",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;>;"
        }
    .end annotation
.end field

.field private final keySaver:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final stats:Lcom/google/android/location/cache/TemporalCache$Stats;

.field private final valueSaver:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/location/data/Persistent;Lcom/google/android/location/data/Persistent;)V
    .locals 2
    .parameter "capacity"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/location/data/Persistent",
            "<TK;>;",
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    .local p2, keySaver:Lcom/google/android/location/data/Persistent;,"Lcom/google/android/location/data/Persistent<TK;>;"
    .local p3, valueSaver:Lcom/google/android/location/data/Persistent;,"Lcom/google/android/location/data/Persistent<Lcom/google/android/location/cache/CacheResult<TP;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/google/android/location/cache/TemporalCache;->keySaver:Lcom/google/android/location/data/Persistent;

    .line 47
    iput-object p3, p0, Lcom/google/android/location/cache/TemporalCache;->valueSaver:Lcom/google/android/location/data/Persistent;

    .line 48
    new-instance v0, Lcom/google/android/location/cache/TemporalCache$Stats;

    invoke-direct {v0}, Lcom/google/android/location/cache/TemporalCache$Stats;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/cache/TemporalCache;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    .line 49
    new-instance v0, Lcom/google/android/location/cache/TemporalCache$Contents;

    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/cache/TemporalCache$Contents;-><init>(ILcom/google/android/location/cache/TemporalCache$Stats;)V

    iput-object v0, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    .line 50
    return-void
.end method

.method private evict(Lcom/google/android/location/cache/CacheResult;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    .local p1, value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    invoke-virtual {p1}, Lcom/google/android/location/cache/CacheResult;->hasGlsResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/location/cache/TemporalCache;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache$Stats;->addExpirationEviction()V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/location/cache/CacheResult;->removeGlsResult()V

    .line 95
    :cond_0
    return-void
.end method

.method private getCacheResult(Ljava/lang/Object;JZ)Lcom/google/android/location/cache/CacheResult;
    .locals 2
    .parameter
    .parameter "millisSinceEpoch"
    .parameter "updateStats"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JZ)",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v1, p1}, Lcom/google/android/location/cache/TemporalCache$Contents;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/cache/CacheResult;

    .line 141
    .local v0, value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/google/android/location/cache/CacheResult;

    .end local v0           #value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    invoke-direct {v0, p2, p3}, Lcom/google/android/location/cache/CacheResult;-><init>(J)V

    .line 143
    .restart local v0       #value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    if-eqz p4, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    invoke-virtual {v1}, Lcom/google/android/location/cache/TemporalCache$Stats;->addInsertion()V

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/location/cache/TemporalCache$Contents;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object v0

    .line 147
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/google/android/location/cache/CacheResult;->setLastSeenTime(J)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 101
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    iget-object v0, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache$Contents;->clear()V

    .line 102
    return-void
.end method

.method public discardOldEntries(JJ)V
    .locals 4
    .parameter "minReadingTime"
    .parameter "minLastSeenTime"

    .prologue
    .line 69
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    iget-object v2, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v2}, Lcom/google/android/location/cache/TemporalCache$Contents;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lcom/google/android/location/cache/CacheResult<TP;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/cache/CacheResult;

    .line 72
    .local v1, value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    invoke-virtual {v1}, Lcom/google/android/location/cache/CacheResult;->getLastSeenTime()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    .line 73
    invoke-direct {p0, v1}, Lcom/google/android/location/cache/TemporalCache;->evict(Lcom/google/android/location/cache/CacheResult;)V

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/location/cache/CacheResult;->getReadingTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 76
    invoke-direct {p0, v1}, Lcom/google/android/location/cache/TemporalCache;->evict(Lcom/google/android/location/cache/CacheResult;)V

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 82
    .end local v1           #value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    :cond_2
    return-void
.end method

.method public extractStats()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 186
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    iget-object v0, p0, Lcom/google/android/location/cache/TemporalCache;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    iget v1, v1, Lcom/google/android/location/cache/TemporalCache$Contents;->capacity:I

    iget-object v2, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v2}, Lcom/google/android/location/cache/TemporalCache$Contents;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/cache/TemporalCache$Stats;->extract(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public insertPosition(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .parameter
    .parameter
    .parameter "millisSinceEpoch"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;J)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, position:Ljava/lang/Object;,"TP;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, p4, v1}, Lcom/google/android/location/cache/TemporalCache;->getCacheResult(Ljava/lang/Object;JZ)Lcom/google/android/location/cache/CacheResult;

    move-result-object v0

    .line 111
    .local v0, value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    const/high16 v1, -0x4080

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/location/cache/CacheResult;->setGlsResult(Ljava/lang/Object;JF)V

    .line 112
    return-void
.end method

.method public load(Ljava/io/DataInput;)Lcom/google/android/location/cache/TemporalCache;
    .locals 6
    .parameter "dataInput"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Lcom/google/android/location/cache/TemporalCache",
            "<TK;TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 222
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/location/cache/TemporalCache;->clear()V

    .line 223
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 224
    iget-object v5, p0, Lcom/google/android/location/cache/TemporalCache;->keySaver:Lcom/google/android/location/data/Persistent;

    invoke-interface {v5, p1}, Lcom/google/android/location/data/Persistent;->load(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, key:Ljava/lang/Object;,"TK;"
    iget-object v5, p0, Lcom/google/android/location/cache/TemporalCache;->valueSaver:Lcom/google/android/location/data/Persistent;

    invoke-interface {v5, p1}, Lcom/google/android/location/data/Persistent;->load(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/cache/CacheResult;

    .line 226
    .local v4, value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    iget-object v5, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/location/cache/TemporalCache$Contents;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #size:I
    .end local v4           #value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/android/location/cache/TemporalCache;->clear()V

    .line 231
    throw v0

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/location/cache/TemporalCache;->load(Ljava/io/DataInput;)Lcom/google/android/location/cache/TemporalCache;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;Z)Lcom/google/android/location/cache/CacheResult;
    .locals 3
    .parameter
    .parameter "updateCounts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v1, p1}, Lcom/google/android/location/cache/TemporalCache$Contents;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/cache/CacheResult;

    .line 161
    .local v0, value:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    if-eqz p2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/google/android/location/cache/TemporalCache;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/location/cache/CacheResult;->hasGlsResult()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/location/cache/TemporalCache$Stats;->addLookup(Z)V

    .line 164
    :cond_0
    return-object v0

    .line 162
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Lcom/google/android/location/cache/TemporalCache;Ljava/io/DataOutput;)V
    .locals 4
    .parameter
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/cache/TemporalCache",
            "<TK;TP;>;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    .local p1, cache:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    iget-object v2, p1, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v2}, Lcom/google/android/location/cache/TemporalCache$Contents;->size()I

    move-result v2

    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 238
    iget-object v2, p1, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v2}, Lcom/google/android/location/cache/TemporalCache$Contents;->entrySet()Ljava/util/Set;

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

    .line 239
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Lcom/google/android/location/cache/CacheResult<TP;>;>;"
    iget-object v2, p0, Lcom/google/android/location/cache/TemporalCache;->keySaver:Lcom/google/android/location/data/Persistent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/android/location/data/Persistent;->save(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 240
    iget-object v2, p0, Lcom/google/android/location/cache/TemporalCache;->valueSaver:Lcom/google/android/location/data/Persistent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/android/location/data/Persistent;->save(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 242
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Lcom/google/android/location/cache/CacheResult<TP;>;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    check-cast p1, Lcom/google/android/location/cache/TemporalCache;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/cache/TemporalCache;->save(Lcom/google/android/location/cache/TemporalCache;Ljava/io/DataOutput;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    .local p0, this:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<TK;TP;>;"
    iget-object v0, p0, Lcom/google/android/location/cache/TemporalCache;->contents:Lcom/google/android/location/cache/TemporalCache$Contents;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache$Contents;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
