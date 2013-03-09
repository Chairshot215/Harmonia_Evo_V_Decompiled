.class public Lcom/google/android/location/cache/TemporalCache$Stats;
.super Ljava/lang/Object;
.source "TemporalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/cache/TemporalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field private protoBuf:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {}, Lcom/google/android/location/cache/TemporalCache$Stats;->zeroCounts()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/cache/TemporalCache$Stats;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    return-void
.end method

.method private increment(I)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/location/cache/TemporalCache$Stats;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache$Stats;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 292
    return-void
.end method

.method private static zeroCounts()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_CACHE_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 296
    .local v0, protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 297
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 298
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 299
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 300
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 301
    return-object v0
.end method


# virtual methods
.method public addCapacityEviction()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/location/cache/TemporalCache$Stats;->increment(I)V

    .line 254
    return-void
.end method

.method public addExpirationEviction()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/location/cache/TemporalCache$Stats;->increment(I)V

    .line 259
    return-void
.end method

.method public addInsertion()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/location/cache/TemporalCache$Stats;->increment(I)V

    .line 264
    return-void
.end method

.method public addLookup(Z)V
    .locals 1
    .parameter "successful"

    .prologue
    .line 270
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/location/cache/TemporalCache$Stats;->increment(I)V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/location/cache/TemporalCache$Stats;->increment(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public extract(II)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2
    .parameter "capacity"
    .parameter "size"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/location/cache/TemporalCache$Stats;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 284
    .local v0, result:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 285
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 286
    invoke-static {}, Lcom/google/android/location/cache/TemporalCache$Stats;->zeroCounts()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/cache/TemporalCache$Stats;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 287
    return-object v0
.end method
