.class public Lcom/google/android/location/localizer/WifiLocator;
.super Ljava/lang/Object;
.source "WifiLocator.java"


# instance fields
.field private final cache:Lcom/google/android/location/cache/TemporalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/cache/TemporalCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final circleIntersectionLocalizer:Lcom/google/android/location/localizer/WifiLocalizerInterface;

.field private final maxLreLocalizer:Lcom/google/android/location/localizer/WifiLocalizerInterface;

.field private final os:Lcom/google/android/location/os/Os;


# direct methods
.method public constructor <init>(Lcom/google/android/location/localizer/WifiLocationEstimator;Lcom/google/android/location/localizer/MaxLreLocalizer;Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V
    .locals 0
    .parameter "circleIntersectionLocalizer"
    .parameter "maxLreLocalizer"
    .parameter
    .parameter "os"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/localizer/WifiLocationEstimator;",
            "Lcom/google/android/location/localizer/MaxLreLocalizer;",
            "Lcom/google/android/location/cache/TemporalCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;",
            "Lcom/google/android/location/os/Os;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, cache:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/location/localizer/WifiLocator;->circleIntersectionLocalizer:Lcom/google/android/location/localizer/WifiLocalizerInterface;

    .line 91
    iput-object p2, p0, Lcom/google/android/location/localizer/WifiLocator;->maxLreLocalizer:Lcom/google/android/location/localizer/WifiLocalizerInterface;

    .line 92
    iput-object p3, p0, Lcom/google/android/location/localizer/WifiLocator;->cache:Lcom/google/android/location/cache/TemporalCache;

    .line 93
    iput-object p4, p0, Lcom/google/android/location/localizer/WifiLocator;->os:Lcom/google/android/location/os/Os;

    .line 97
    return-void
.end method

.method private computeLocation(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, apLocations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .local p2, signalStrengths:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/WifiLocator;->findHighestConfidencePositionType(Ljava/util/Map;)Lcom/google/android/location/data/WifiApPosition$PositionType;

    move-result-object v0

    .line 166
    .local v0, highestConfidenceAp:Lcom/google/android/location/data/WifiApPosition$PositionType;
    sget-object v2, Lcom/google/android/location/data/WifiApPosition$PositionType;->UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-ne v0, v2, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 179
    :goto_0
    return-object v1

    .line 169
    :cond_0
    sget-object v2, Lcom/google/android/location/data/WifiApPosition$PositionType;->LOW_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-ne v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/google/android/location/localizer/WifiLocator;->circleIntersectionLocalizer:Lcom/google/android/location/localizer/WifiLocalizerInterface;

    invoke-interface {v2, p1, p2}, Lcom/google/android/location/localizer/WifiLocalizerInterface;->getEstimatedPosition(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v1

    .local v1, locationResult:Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    goto :goto_0

    .line 177
    .end local v1           #locationResult:Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/localizer/WifiLocator;->maxLreLocalizer:Lcom/google/android/location/localizer/WifiLocalizerInterface;

    invoke-interface {v2, p1, p2}, Lcom/google/android/location/localizer/WifiLocalizerInterface;->getEstimatedPosition(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v1

    .restart local v1       #locationResult:Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    goto :goto_0
.end method

.method private findHighestConfidencePositionType(Ljava/util/Map;)Lcom/google/android/location/data/WifiApPosition$PositionType;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)",
            "Lcom/google/android/location/data/WifiApPosition$PositionType;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, apLocations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    const/4 v2, -0x1

    .line 184
    .local v2, max:I
    sget-object v3, Lcom/google/android/location/data/WifiApPosition$PositionType;->UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;

    .line 185
    .local v3, maxType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/data/WifiApPosition;

    iget-object v4, v5, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    .line 187
    .local v4, posType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    invoke-virtual {v4}, Lcom/google/android/location/data/WifiApPosition$PositionType;->ordinal()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 188
    invoke-static {}, Lcom/google/android/location/data/WifiApPosition$PositionType;->getHighestConfidenceType()Lcom/google/android/location/data/WifiApPosition$PositionType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 195
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v4           #posType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    :goto_1
    return-object v4

    .line 192
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .restart local v4       #posType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    :cond_1
    move-object v3, v4

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v4           #posType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    :cond_2
    move-object v4, v3

    .line 195
    goto :goto_1
.end method

.method private getMedian(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 231
    .local v0, pos:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;III)V
    .locals 4
    .parameter "msg"
    .parameter "positiveCacheHit"
    .parameter "cacheMiss"
    .parameter "scanSize"

    .prologue
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v2, " hasLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    add-int v2, p2, p3

    sub-int v0, p4, v2

    .line 299
    .local v0, noLocation:I
    const-string v2, " noLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, " cacheMiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v2, "WifiLocator"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method


# virtual methods
.method public computeLocation(Ljava/util/List;)Lcom/google/android/location/data/WifiLocatorResult;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/WifiScan;",
            ">;)",
            "Lcom/google/android/location/data/WifiLocatorResult;"
        }
    .end annotation

    .prologue
    .local p1, wifiScans:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/WifiScan;>;"
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/location/localizer/WifiLocator;->extractSignalStrengths(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 114
    .local v10, signalStrengths:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/localizer/WifiLocator;->fetchWifiApFromCache(Ljava/util/Set;)Lcom/google/android/location/data/Pair;

    move-result-object v7

    .line 116
    .local v7, cacheResults:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Lcom/google/android/location/data/LocatorResult$ResultStatus;Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    iget-object v6, v7, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    .line 119
    .local v6, cacheEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/data/WifiScan;

    .line 137
    .local v5, firstScan:Lcom/google/android/location/data/WifiScan;
    iget-object v0, v7, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-eq v0, v2, :cond_0

    .line 138
    new-instance v0, Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v2, v7, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;

    iget-object v3, p0, Lcom/google/android/location/localizer/WifiLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/data/WifiLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;Ljava/util/Map;)V

    .line 157
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-direct {p0, v6, v10}, Lcom/google/android/location/localizer/WifiLocator;->computeLocation(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v9

    .line 143
    .local v9, result:Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v0

    if-nez v0, :cond_2

    .line 145
    :cond_1
    new-instance v0, Lcom/google/android/location/data/WifiLocatorResult;

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    iget-object v3, p0, Lcom/google/android/location/localizer/WifiLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/data/WifiLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;Ljava/util/Map;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v9}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->hasSaneValues(Lcom/google/android/location/data/Position;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    const-string v0, "WifiLocator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locator found a location that did not have sane values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/os/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/google/android/location/data/WifiLocatorResult;

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    iget-object v3, p0, Lcom/google/android/location/localizer/WifiLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/data/WifiLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;Ljava/util/Map;)V

    goto :goto_0

    .line 155
    :cond_3
    new-instance v8, Lcom/google/android/location/data/Position$PositionBuilder;

    invoke-virtual {v9}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/android/location/data/Position$PositionBuilder;-><init>(Lcom/google/android/location/data/Position;)V

    .line 156
    .local v8, posWithConfidence:Lcom/google/android/location/data/Position$PositionBuilder;
    invoke-virtual {v9}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->getConfidence()I

    move-result v0

    iput v0, v8, Lcom/google/android/location/data/Position$PositionBuilder;->confidence:I

    .line 157
    new-instance v0, Lcom/google/android/location/data/WifiLocatorResult;

    invoke-virtual {v8}, Lcom/google/android/location/data/Position$PositionBuilder;->build()Lcom/google/android/location/data/Position;

    move-result-object v1

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    iget-object v3, p0, Lcom/google/android/location/localizer/WifiLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/data/WifiLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;Ljava/util/Map;)V

    goto :goto_0
.end method

.method extractSignalStrengths(Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/WifiScan;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, wifiScans:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/WifiScan;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v6, signalStrengths:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/location/data/WifiScan;

    .line 203
    .local v9, wifiScan:Lcom/google/android/location/data/WifiScan;
    if-eqz v9, :cond_0

    .line 206
    invoke-virtual {v9}, Lcom/google/android/location/data/WifiScan;->numDevices()I

    move-result v5

    .line 207
    .local v5, numDevices:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 208
    invoke-virtual {v9, v2}, Lcom/google/android/location/data/WifiScan;->getDevice(I)Lcom/google/android/location/data/WifiScan$Device;

    move-result-object v1

    .line 209
    .local v1, device:Lcom/google/android/location/data/WifiScan$Device;
    iget-object v10, v1, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 210
    .local v8, signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v8, :cond_1

    .line 211
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .restart local v8       #signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v10, v1, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    iget v10, v1, Lcom/google/android/location/data/WifiScan$Device;->rssi:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v1           #device:Lcom/google/android/location/data/WifiScan$Device;
    .end local v2           #i:I
    .end local v5           #numDevices:I
    .end local v8           #signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9           #wifiScan:Lcom/google/android/location/data/WifiScan;
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v7, signalStrengthsMedians:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    .local v0, accessPoint:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 222
    .restart local v8       #signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v8}, Lcom/google/android/location/localizer/WifiLocator;->getMedian(Ljava/util/List;)I

    move-result v4

    .line 223
    .local v4, median:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    .end local v0           #accessPoint:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v4           #median:I
    .end local v8           #signals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    return-object v7
.end method

.method fetchWifiApFromCache(Ljava/util/Set;)Lcom/google/android/location/data/Pair;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Lcom/google/android/location/data/LocatorResult$ResultStatus;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, macs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v0, apPositions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    const/4 v1, 0x0

    .line 247
    .local v1, cacheMiss:I
    const/4 v6, 0x0

    .line 248
    .local v6, positiveCacheHit:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 249
    .local v4, mac:Ljava/lang/Long;
    iget-object v7, p0, Lcom/google/android/location/localizer/WifiLocator;->cache:Lcom/google/android/location/cache/TemporalCache;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lcom/google/android/location/cache/TemporalCache;->lookup(Ljava/lang/Object;Z)Lcom/google/android/location/cache/CacheResult;

    move-result-object v2

    .line 250
    .local v2, cacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/WifiApPosition;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/location/cache/CacheResult;->hasGlsResult()Z

    move-result v7

    if-nez v7, :cond_2

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/data/WifiApPosition;

    .line 255
    .local v5, position:Lcom/google/android/location/data/WifiApPosition;
    invoke-virtual {v5}, Lcom/google/android/location/data/WifiApPosition;->isValid()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    sget-object v8, Lcom/google/android/location/data/WifiApPosition$PositionType;->UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-eq v7, v8, :cond_0

    .line 256
    add-int/lit8 v6, v6, 0x1

    .line 257
    invoke-virtual {v2}, Lcom/google/android/location/cache/CacheResult;->getPosition()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    .end local v2           #cacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v4           #mac:Ljava/lang/Long;
    .end local v5           #position:Lcom/google/android/location/data/WifiApPosition;
    :cond_3
    if-lez v6, :cond_5

    .line 267
    const/4 v7, 0x5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 271
    sget-object v7, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-static {v7, v0}, Lcom/google/android/location/data/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/data/Pair;

    move-result-object v7

    .line 290
    :goto_1
    return-object v7

    .line 278
    :cond_4
    const-string v7, "Not enough positive cache hits compared to misses. Need server request."

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {p0, v7, v6, v1, v8}, Lcom/google/android/location/localizer/WifiLocator;->log(Ljava/lang/String;III)V

    .line 280
    sget-object v7, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-static {v7, v9}, Lcom/google/android/location/data/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/data/Pair;

    move-result-object v7

    goto :goto_1

    .line 282
    :cond_5
    if-lez v1, :cond_6

    .line 284
    const-string v7, "Too many cache  misses. Need server request."

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {p0, v7, v6, v1, v8}, Lcom/google/android/location/localizer/WifiLocator;->log(Ljava/lang/String;III)V

    .line 285
    sget-object v7, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-static {v7, v9}, Lcom/google/android/location/data/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/data/Pair;

    move-result-object v7

    goto :goto_1

    .line 288
    :cond_6
    const-string v7, "Too many no-location APs. Will not compute a location nor go to the server."

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {p0, v7, v6, v1, v8}, Lcom/google/android/location/localizer/WifiLocator;->log(Ljava/lang/String;III)V

    .line 290
    sget-object v7, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-static {v7, v9}, Lcom/google/android/location/data/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/data/Pair;

    move-result-object v7

    goto :goto_1
.end method
