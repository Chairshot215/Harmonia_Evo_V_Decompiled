.class Lcom/google/android/location/cache/TemporalCache$Contents;
.super Ljava/util/LinkedHashMap;
.source "TemporalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/cache/TemporalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contents"
.end annotation

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


# instance fields
.field final capacity:I

.field final stats:Lcom/google/android/location/cache/TemporalCache$Stats;


# direct methods
.method constructor <init>(ILcom/google/android/location/cache/TemporalCache$Stats;)V
    .locals 0
    .parameter "capacity"
    .parameter "stats"

    .prologue
    .line 197
    .local p0, this:Lcom/google/android/location/cache/TemporalCache$Contents;,"Lcom/google/android/location/cache/TemporalCache$Contents<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 198
    iput p1, p0, Lcom/google/android/location/cache/TemporalCache$Contents;->capacity:I

    .line 199
    iput-object p2, p0, Lcom/google/android/location/cache/TemporalCache$Contents;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    .line 200
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter "eldest"

    .prologue
    .line 205
    .local p0, this:Lcom/google/android/location/cache/TemporalCache$Contents;,"Lcom/google/android/location/cache/TemporalCache$Contents<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/android/location/cache/TemporalCache$Contents;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/location/cache/TemporalCache$Contents;->capacity:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 206
    .local v0, evict:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/android/location/cache/TemporalCache$Contents;->stats:Lcom/google/android/location/cache/TemporalCache$Stats;

    invoke-virtual {v1}, Lcom/google/android/location/cache/TemporalCache$Stats;->addCapacityEviction()V

    .line 209
    :cond_0
    return v0

    .line 205
    .end local v0           #evict:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
