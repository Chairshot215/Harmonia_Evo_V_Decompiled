.class public Lcom/google/android/location/localizer/CellLocator;
.super Ljava/lang/Object;
.source "CellLocator.java"


# instance fields
.field private final cache:Lcom/google/android/location/cache/TemporalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/cache/TemporalCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/location/data/Position;",
            ">;"
        }
    .end annotation
.end field

.field private final centroid:Lcom/google/android/location/localizer/LocationCentroid;

.field private final os:Lcom/google/android/location/os/Os;


# direct methods
.method public constructor <init>(Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V
    .locals 1
    .parameter
    .parameter "os"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/cache/TemporalCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/location/data/Position;",
            ">;",
            "Lcom/google/android/location/os/Os;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, cache:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/location/localizer/LocationCentroid;

    invoke-direct {v0}, Lcom/google/android/location/localizer/LocationCentroid;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    .line 40
    iput-object p1, p0, Lcom/google/android/location/localizer/CellLocator;->cache:Lcom/google/android/location/cache/TemporalCache;

    .line 41
    iput-object p2, p0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    .line 42
    return-void
.end method

.method private findInCache(Lcom/google/android/location/data/CellState;Ljava/util/Map;)Lcom/google/android/location/cache/CacheResult;
    .locals 6
    .parameter "cell"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/CellState;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/location/data/Position;",
            ">;)",
            "Lcom/google/android/location/cache/CacheResult",
            "<",
            "Lcom/google/android/location/data/Position;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, cacheEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    invoke-virtual {p1}, Lcom/google/android/location/data/CellState;->getMcc()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/location/data/CellState;->getMnc()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/location/data/CellState;->getLac()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/location/data/CellState;->getCid()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/location/cache/PersistentState;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, cellKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/location/localizer/CellLocator;->cache:Lcom/google/android/location/cache/TemporalCache;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/android/location/cache/TemporalCache;->lookup(Ljava/lang/Object;Z)Lcom/google/android/location/cache/CacheResult;

    move-result-object v0

    .line 119
    .local v0, cacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/Position;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/location/cache/CacheResult;->hasGlsResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeLocation(Lcom/google/android/location/data/CellStatus;)Lcom/google/android/location/data/CellLocatorResult;
    .locals 24
    .parameter "cellStatus"

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v2}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v20

    .line 53
    .local v20, now:J
    const/16 v22, 0x0

    .line 54
    .local v22, primary:Lcom/google/android/location/data/CellState;
    const/16 v17, 0x0

    .line 55
    .local v17, cellHistory:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/CellState;>;"
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v22

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/data/CellStatus;->getHistory()Ljava/util/List;

    move-result-object v17

    .line 62
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v8, cacheEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/location/data/CellState;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    :cond_1
    new-instance v2, Lcom/google/android/location/data/CellLocatorResult;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v5}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v5

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/data/CellLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/CellStatus;Ljava/util/Map;)V

    .line 107
    :goto_0
    return-object v2

    .line 68
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual {v2}, Lcom/google/android/location/localizer/LocationCentroid;->reset()V

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/google/android/location/localizer/CellLocator;->findInCache(Lcom/google/android/location/data/CellState;Ljava/util/Map;)Lcom/google/android/location/cache/CacheResult;

    move-result-object v23

    .line 71
    .local v23, primaryCellCacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/Position;>;"
    if-nez v23, :cond_3

    .line 73
    const-string v2, "CellLocator"

    const-string v4, "Primary cell miss in cache. Need server request."

    invoke-static {v2, v4}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v2, Lcom/google/android/location/data/CellLocatorResult;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v5}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v5

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/data/CellLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/CellStatus;Ljava/util/Map;)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/Position;

    invoke-virtual {v2}, Lcom/google/android/location/data/Position;->isValid()Z

    move-result v2

    if-nez v2, :cond_4

    .line 80
    new-instance v2, Lcom/google/android/location/data/CellLocatorResult;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v5}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v5

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/data/CellLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/CellStatus;Ljava/util/Map;)V

    goto :goto_0

    .line 83
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/Position;

    invoke-virtual {v4, v2}, Lcom/google/android/location/localizer/LocationCentroid;->addLocation(Lcom/google/android/location/data/Position;)V

    .line 85
    if-eqz v17, :cond_6

    .line 86
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/location/data/CellState;

    .line 89
    .local v18, historicalCell:Lcom/google/android/location/data/CellState;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v4

    sub-long v4, v20, v4

    const-wide/16 v6, 0x7530

    cmp-long v2, v4, v6

    if-gez v2, :cond_5

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/google/android/location/localizer/CellLocator;->findInCache(Lcom/google/android/location/data/CellState;Ljava/util/Map;)Lcom/google/android/location/cache/CacheResult;

    move-result-object v16

    .line 91
    .local v16, cacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/Position;>;"
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/Position;

    invoke-virtual {v2}, Lcom/google/android/location/data/Position;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/Position;

    invoke-virtual {v4, v2}, Lcom/google/android/location/localizer/LocationCentroid;->addLocation(Lcom/google/android/location/data/Position;)V

    goto :goto_1

    .line 98
    .end local v16           #cacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/Position;>;"
    .end local v18           #historicalCell:Lcom/google/android/location/data/CellState;
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v3, Lcom/google/android/location/data/Position;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual {v2}, Lcom/google/android/location/localizer/LocationCentroid;->getCentroidLat()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToE7(D)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual {v4}, Lcom/google/android/location/localizer/LocationCentroid;->getCentroidLng()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToE7(D)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual {v5}, Lcom/google/android/location/localizer/LocationCentroid;->getAccuracy()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/location/localizer/LocalizerUtil;->metersToMm(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/localizer/CellLocator;->centroid:Lcom/google/android/location/localizer/LocationCentroid;

    invoke-virtual {v6}, Lcom/google/android/location/localizer/LocationCentroid;->getConfidence()I

    move-result v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/location/data/Position;-><init>(IIII)V

    .line 101
    .local v3, pos:Lcom/google/android/location/data/Position;
    invoke-static {v3}, Lcom/google/android/location/localizer/LocalizerUtil;->hasSaneValues(Lcom/google/android/location/data/Position;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 103
    new-instance v2, Lcom/google/android/location/data/CellLocatorResult;

    sget-object v4, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v5}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v5

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/data/CellLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/CellStatus;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 106
    :cond_7
    const-string v2, "CellLocator"

    const-string v4, "Cell location had non-sane values"

    invoke-static {v2, v4}, Lcom/google/android/location/os/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v9, Lcom/google/android/location/data/CellLocatorResult;

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/localizer/CellLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v2}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v12

    move-object/from16 v14, p1

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/google/android/location/data/CellLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/CellStatus;Ljava/util/Map;)V

    move-object v2, v9

    goto/16 :goto_0
.end method
