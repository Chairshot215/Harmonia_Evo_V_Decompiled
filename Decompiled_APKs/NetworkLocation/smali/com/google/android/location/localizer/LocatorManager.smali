.class public Lcom/google/android/location/localizer/LocatorManager;
.super Ljava/lang/Object;
.source "LocatorManager.java"


# instance fields
.field private final cellLocator:Lcom/google/android/location/localizer/CellLocator;

.field private final wifiLocator:Lcom/google/android/location/localizer/WifiLocator;


# direct methods
.method public constructor <init>(Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V
    .locals 4
    .parameter
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
    .line 34
    .local p1, cellCache:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    .local p2, wifiCache:Lcom/google/android/location/cache/TemporalCache;,"Lcom/google/android/location/cache/TemporalCache<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p3}, Lcom/google/android/location/os/Os;->openMetricModelRawResource()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/localizer/MetricModel;->fromStream(Ljava/io/InputStream;)Lcom/google/android/location/localizer/MetricModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/location/localizer/MetricModel;->getSignalDistribution()Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, platformProfile:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/DistanceDist;>;"
    new-instance v0, Lcom/google/android/location/localizer/MaxLreLocalizer;

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/MaxLreLocalizer;-><init>(Ljava/util/List;)V

    .line 45
    .local v0, maxLreLocalizer:Lcom/google/android/location/localizer/MaxLreLocalizer;
    new-instance v2, Lcom/google/android/location/localizer/WifiLocator;

    new-instance v3, Lcom/google/android/location/localizer/WifiLocationEstimator;

    invoke-direct {v3}, Lcom/google/android/location/localizer/WifiLocationEstimator;-><init>()V

    invoke-direct {v2, v3, v0, p2, p3}, Lcom/google/android/location/localizer/WifiLocator;-><init>(Lcom/google/android/location/localizer/WifiLocationEstimator;Lcom/google/android/location/localizer/MaxLreLocalizer;Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V

    iput-object v2, p0, Lcom/google/android/location/localizer/LocatorManager;->wifiLocator:Lcom/google/android/location/localizer/WifiLocator;

    .line 49
    new-instance v2, Lcom/google/android/location/localizer/CellLocator;

    invoke-direct {v2, p1, p3}, Lcom/google/android/location/localizer/CellLocator;-><init>(Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V

    iput-object v2, p0, Lcom/google/android/location/localizer/LocatorManager;->cellLocator:Lcom/google/android/location/localizer/CellLocator;

    .line 50
    return-void
.end method

.method private doWifiLookup(Lcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/WifiScan;)Lcom/google/android/location/data/WifiLocatorResult;
    .locals 3
    .parameter "wifiScan"
    .parameter "glsWifiScan"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/location/localizer/LocatorManager;->wifiLocator:Lcom/google/android/location/localizer/WifiLocator;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/localizer/WifiLocator;->computeLocation(Ljava/util/List;)Lcom/google/android/location/data/WifiLocatorResult;

    move-result-object v0

    .line 83
    .local v0, wifiResult:Lcom/google/android/location/data/WifiLocatorResult;
    iget-object v1, v0, Lcom/google/android/location/data/WifiLocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-eq v1, v2, :cond_0

    if-eq p1, p2, :cond_0

    if-eqz p2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/google/android/location/localizer/LocatorManager;->wifiLocator:Lcom/google/android/location/localizer/WifiLocator;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/localizer/WifiLocator;->computeLocation(Ljava/util/List;)Lcom/google/android/location/data/WifiLocatorResult;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method private selectBestResult(Lcom/google/android/location/data/LocatorResult;Lcom/google/android/location/data/LocatorResult;)Lcom/google/android/location/data/LocatorResult;
    .locals 12
    .parameter "wifiResult"
    .parameter "cellResult"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 95
    iget-object v10, p1, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v11, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne v10, v11, :cond_1

    move v4, v8

    .line 96
    .local v4, hasWifi:Z
    :goto_0
    iget-object v10, p2, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v11, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne v10, v11, :cond_2

    move v3, v8

    .line 99
    .local v3, hasCell:Z
    :goto_1
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 100
    const/4 p2, 0x0

    .line 128
    .end local p2
    :cond_0
    :goto_2
    return-object p2

    .end local v3           #hasCell:Z
    .end local v4           #hasWifi:Z
    .restart local p2
    :cond_1
    move v4, v9

    .line 95
    goto :goto_0

    .restart local v4       #hasWifi:Z
    :cond_2
    move v3, v9

    .line 96
    goto :goto_1

    .line 101
    .restart local v3       #hasCell:Z
    :cond_3
    if-eqz v4, :cond_0

    .line 103
    if-nez v3, :cond_4

    move-object p2, p1

    .line 104
    goto :goto_2

    .line 107
    :cond_4
    iget-object v7, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    .line 108
    .local v7, wifiPos:Lcom/google/android/location/data/Position;
    iget-object v0, p2, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    .line 109
    .local v0, cellPos:Lcom/google/android/location/data/Position;
    invoke-static {v7, v0}, Lcom/google/android/location/localizer/LocalizerUtil;->computeDistance(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)I

    move-result v2

    .line 110
    .local v2, distance:I
    iget v10, v7, Lcom/google/android/location/data/Position;->accuracyMm:I

    iget v11, v0, Lcom/google/android/location/data/Position;->accuracyMm:I

    add-int/2addr v10, v11

    const v11, 0x3567e0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit16 v5, v10, 0x3e8

    .line 113
    .local v5, maxTolerence:I
    if-gt v2, v5, :cond_5

    move v1, v8

    .line 119
    .local v1, consistent:Z
    :goto_3
    if-eqz v1, :cond_7

    .line 120
    iget v10, v7, Lcom/google/android/location/data/Position;->accuracyMm:I

    iget v11, v0, Lcom/google/android/location/data/Position;->accuracyMm:I

    if-le v10, v11, :cond_6

    move v6, v8

    .line 125
    .local v6, useCell:Z
    :goto_4
    if-nez v6, :cond_0

    move-object p2, p1

    .line 128
    goto :goto_2

    .end local v1           #consistent:Z
    .end local v6           #useCell:Z
    :cond_5
    move v1, v9

    .line 113
    goto :goto_3

    .restart local v1       #consistent:Z
    :cond_6
    move v6, v9

    .line 120
    goto :goto_4

    .line 123
    :cond_7
    iget v10, v7, Lcom/google/android/location/data/Position;->confidence:I

    iget v11, v0, Lcom/google/android/location/data/Position;->confidence:I

    if-ge v10, v11, :cond_8

    move v6, v8

    .restart local v6       #useCell:Z
    :goto_5
    goto :goto_4

    .end local v6           #useCell:Z
    :cond_8
    move v6, v9

    goto :goto_5
.end method


# virtual methods
.method public computeLocation(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;)Lcom/google/android/location/data/NetworkLocation;
    .locals 6
    .parameter "cellStatus"
    .parameter "wifiScan"
    .parameter "glsResult"

    .prologue
    .line 63
    if-nez p3, :cond_1

    const/4 v2, 0x0

    .line 64
    .local v2, glsWifiScan:Lcom/google/android/location/data/WifiScan;
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/google/android/location/localizer/LocatorManager;->doWifiLookup(Lcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/WifiScan;)Lcom/google/android/location/data/WifiLocatorResult;

    move-result-object v3

    .line 67
    .local v3, wifiResult:Lcom/google/android/location/data/WifiLocatorResult;
    iget-object v4, p0, Lcom/google/android/location/localizer/LocatorManager;->cellLocator:Lcom/google/android/location/localizer/CellLocator;

    invoke-virtual {v4, p1}, Lcom/google/android/location/localizer/CellLocator;->computeLocation(Lcom/google/android/location/data/CellStatus;)Lcom/google/android/location/data/CellLocatorResult;

    move-result-object v1

    .line 70
    .local v1, cellResult:Lcom/google/android/location/data/CellLocatorResult;
    invoke-direct {p0, v3, v1}, Lcom/google/android/location/localizer/LocatorManager;->selectBestResult(Lcom/google/android/location/data/LocatorResult;Lcom/google/android/location/data/LocatorResult;)Lcom/google/android/location/data/LocatorResult;

    move-result-object v0

    .line 72
    .local v0, bestResult:Lcom/google/android/location/data/LocatorResult;
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v4, p3, Lcom/google/android/location/data/GlsLocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v5, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne v4, v5, :cond_0

    .line 74
    move-object v0, p3

    .line 77
    :cond_0
    new-instance v4, Lcom/google/android/location/data/NetworkLocation;

    invoke-direct {v4, v0, v3, v1, p3}, Lcom/google/android/location/data/NetworkLocation;-><init>(Lcom/google/android/location/data/LocatorResult;Lcom/google/android/location/data/WifiLocatorResult;Lcom/google/android/location/data/CellLocatorResult;Lcom/google/android/location/data/GlsLocatorResult;)V

    return-object v4

    .line 63
    .end local v0           #bestResult:Lcom/google/android/location/data/LocatorResult;
    .end local v1           #cellResult:Lcom/google/android/location/data/CellLocatorResult;
    .end local v2           #glsWifiScan:Lcom/google/android/location/data/WifiScan;
    .end local v3           #wifiResult:Lcom/google/android/location/data/WifiLocatorResult;
    :cond_1
    iget-object v2, p3, Lcom/google/android/location/data/GlsLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    goto :goto_0
.end method
