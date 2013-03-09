.class Lcom/google/android/location/localizer/MaxLreLocalizer;
.super Ljava/lang/Object;
.source "MaxLreLocalizer.java"

# interfaces
.implements Lcom/google/android/location/localizer/WifiLocalizerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;,
        Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    }
.end annotation


# static fields
.field static final GRID_DISTANCE:[[I

.field private static final LRE_HIGHER_QUALITY_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NULL_OUTLIERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field private static final rssiComparatorLowerFirst:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/location/localizer/DistanceDist;",
            ">;"
        }
    .end annotation
.end field

.field private static final wifiCircleIntersector:Lcom/google/android/location/localizer/WifiLocalizerInterface;


# instance fields
.field private final matrix:Lcom/google/android/location/localizer/MaxLreProbMatrix;

.field private final platformProfile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/DistanceDist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x78

    .line 55
    const-class v0, Lcom/google/android/location/localizer/MaxLreLocalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/MaxLreLocalizer;->logger:Ljava/util/logging/Logger;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/MaxLreLocalizer;->NULL_OUTLIERS:Ljava/util/Set;

    .line 108
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/android/location/localizer/MaxLreLocalizer;->GRID_DISTANCE:[[I

    .line 110
    new-instance v0, Lcom/google/android/location/localizer/WifiLocationEstimator;

    invoke-direct {v0}, Lcom/google/android/location/localizer/WifiLocationEstimator;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/MaxLreLocalizer;->wifiCircleIntersector:Lcom/google/android/location/localizer/WifiLocalizerInterface;

    move v2, v1

    .line 119
    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    .line 120
    :goto_1
    if-ge v0, v5, :cond_0

    .line 121
    sget-object v3, Lcom/google/android/location/localizer/MaxLreLocalizer;->GRID_DISTANCE:[[I

    aget-object v3, v3, v2

    invoke-static {v2, v0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->computeDistanceFromEdgeOfGrid(II)I

    move-result v4

    aput v4, v3, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Lcom/google/android/location/localizer/MaxLreLocalizer$1;

    invoke-direct {v0}, Lcom/google/android/location/localizer/MaxLreLocalizer$1;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/MaxLreLocalizer;->rssiComparatorLowerFirst:Ljava/util/Comparator;

    .line 369
    new-instance v0, Lcom/google/android/location/localizer/MaxLreLocalizer$2;

    invoke-direct {v0}, Lcom/google/android/location/localizer/MaxLreLocalizer$2;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/MaxLreLocalizer;->LRE_HIGHER_QUALITY_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/DistanceDist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, platformProfile:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/DistanceDist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/MaxLreProbMatrix;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/localizer/MaxLreLocalizer;->matrix:Lcom/google/android/location/localizer/MaxLreProbMatrix;

    .line 142
    iput-object p1, p0, Lcom/google/android/location/localizer/MaxLreLocalizer;->platformProfile:Ljava/util/List;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/location/data/WifiApPosition;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->qualityMetric(Lcom/google/android/location/data/WifiApPosition;)D

    move-result-wide v0

    return-wide v0
.end method

.method private addApToMatrix(Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;ILcom/google/android/location/data/Position;Lcom/google/android/location/localizer/MaxLreProbMatrix;)V
    .locals 19
    .parameter "ap"
    .parameter "apPos"
    .parameter "rssi"
    .parameter "matrixCenter"
    .parameter "matrix"

    .prologue
    .line 303
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->relativeLngMeters(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D

    move-result-wide v15

    const-wide/high16 v17, 0x400e

    div-double v15, v15, v17

    double-to-int v3, v15

    .line 304
    .local v3, apRow:I
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->relativeLatMeters(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D

    move-result-wide v15

    const-wide/high16 v17, 0x400e

    div-double v15, v15, v17

    double-to-int v2, v15

    .line 306
    .local v2, apCol:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/MaxLreLocalizer;->fetchDistancePdfForSignal(I)Lcom/google/android/location/localizer/DistanceDist;

    move-result-object v6

    .line 308
    .local v6, distPdf:Lcom/google/android/location/localizer/DistanceDist;
    const/4 v12, 0x0

    .line 309
    .local v12, probSize:I
    const/4 v9, 0x0

    .line 310
    .local v9, indexOffset:I
    const/4 v7, 0x1

    .line 312
    .local v7, distPdfIsNull:Z
    if-eqz v6, :cond_0

    iget-object v15, v6, Lcom/google/android/location/localizer/DistanceDist;->prob:[F

    array-length v15, v15

    if-lez v15, :cond_0

    .line 313
    iget-object v15, v6, Lcom/google/android/location/localizer/DistanceDist;->prob:[F

    array-length v12, v15

    .line 314
    iget v9, v6, Lcom/google/android/location/localizer/DistanceDist;->indexOffset:I

    .line 315
    const/4 v7, 0x0

    .line 318
    :cond_0
    const/16 v13, -0x28

    .local v13, row:I
    :goto_0
    const/16 v15, 0x28

    if-gt v13, v15, :cond_a

    .line 319
    sub-int v14, v13, v3

    .line 320
    .local v14, rowDiff:I
    if-gez v14, :cond_1

    .line 321
    neg-int v14, v14

    .line 323
    :cond_1
    const/16 v4, -0x28

    .local v4, col:I
    :goto_1
    const/16 v15, 0x28

    if-gt v4, v15, :cond_9

    .line 324
    sub-int v5, v4, v2

    .line 325
    .local v5, colDiff:I
    if-gez v5, :cond_2

    .line 326
    neg-int v5, v5

    .line 330
    :cond_2
    const/16 v15, 0x78

    if-ge v5, v15, :cond_3

    const/16 v15, 0x78

    if-lt v14, v15, :cond_4

    .line 331
    :cond_3
    invoke-static {v14, v5}, Lcom/google/android/location/localizer/MaxLreLocalizer;->computeDistanceFromEdgeOfGrid(II)I

    move-result v8

    .line 338
    .local v8, distance:I
    :goto_2
    if-eqz v7, :cond_6

    .line 339
    int-to-double v15, v8

    const-wide v17, 0x4052c00000000000L

    cmpg-double v15, v15, v17

    if-gez v15, :cond_5

    const-wide/high16 v10, 0x3fe0

    .line 353
    .local v10, probMultiplier:D
    :goto_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v4, v10, v11}, Lcom/google/android/location/localizer/MaxLreProbMatrix;->updateCell(IID)V

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    .end local v8           #distance:I
    .end local v10           #probMultiplier:D
    :cond_4
    sget-object v15, Lcom/google/android/location/localizer/MaxLreLocalizer;->GRID_DISTANCE:[[I

    aget-object v15, v15, v14

    aget v8, v15, v5

    .restart local v8       #distance:I
    goto :goto_2

    .line 339
    :cond_5
    const-wide v10, 0x3fa999999999999aL

    goto :goto_3

    .line 343
    :cond_6
    if-ge v8, v9, :cond_7

    .line 344
    iget-object v15, v6, Lcom/google/android/location/localizer/DistanceDist;->prob:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    float-to-double v10, v15

    .restart local v10       #probMultiplier:D
    goto :goto_3

    .line 346
    .end local v10           #probMultiplier:D
    :cond_7
    add-int v15, v9, v12

    if-lt v8, v15, :cond_8

    .line 347
    iget-object v15, v6, Lcom/google/android/location/localizer/DistanceDist;->prob:[F

    add-int/lit8 v16, v12, -0x1

    aget v15, v15, v16

    float-to-double v10, v15

    .restart local v10       #probMultiplier:D
    goto :goto_3

    .line 349
    .end local v10           #probMultiplier:D
    :cond_8
    iget-object v15, v6, Lcom/google/android/location/localizer/DistanceDist;->prob:[F

    sub-int v16, v8, v9

    aget v15, v15, v16

    float-to-double v10, v15

    .restart local v10       #probMultiplier:D
    goto :goto_3

    .line 318
    .end local v5           #colDiff:I
    .end local v8           #distance:I
    .end local v10           #probMultiplier:D
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 356
    .end local v4           #col:I
    .end local v14           #rowDiff:I
    :cond_a
    return-void
.end method

.method private adjustCircleSize(Lcom/google/android/location/data/Position$PositionBuilder;Ljava/util/List;)Z
    .locals 10
    .parameter "computedPosition"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Position$PositionBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, lreResultList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    const-wide/16 v3, 0x0

    .line 406
    .local v3, maxDist:D
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/data/Pair;

    .line 407
    .local v1, lreAP:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    iget-object v2, v1, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/location/data/WifiApPosition;

    .line 409
    .local v2, lreCircle:Lcom/google/android/location/data/WifiApPosition;
    iget v6, v2, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    const v7, 0x9c40

    if-ge v6, v7, :cond_0

    .line 410
    invoke-static {p1, v2}, Lcom/google/android/location/localizer/LocalizerUtil;->fastDistanceMeters(Lcom/google/android/location/data/Position$PositionBuilder;Lcom/google/android/location/data/Position;)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_0

    .line 414
    .end local v1           #lreAP:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v2           #lreCircle:Lcom/google/android/location/data/WifiApPosition;
    :cond_1
    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, v3

    const-wide v8, 0x3ff3333333333333L

    div-double/2addr v6, v8

    double-to-int v5, v6

    .line 415
    .local v5, maxDistMm:I
    iget v6, p1, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    if-le v5, v6, :cond_2

    .line 416
    iput v5, p1, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 417
    const/4 v6, 0x1

    .line 419
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private apInCluster(Lcom/google/android/location/data/WifiApPosition;Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;)Z
    .locals 3
    .parameter "apPos"
    .parameter "cluster"

    .prologue
    .line 531
    invoke-virtual {p2}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/data/Pair;

    .line 532
    .local v1, otherAp:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    iget-object v2, v1, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/location/data/WifiApPosition;

    invoke-direct {p0, p1, v2}, Lcom/google/android/location/localizer/MaxLreLocalizer;->intersects(Lcom/google/android/location/data/WifiApPosition;Lcom/google/android/location/data/WifiApPosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    const/4 v2, 0x1

    .line 536
    .end local v1           #otherAp:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static computeDistanceFromEdgeOfGrid(II)I
    .locals 8
    .parameter "row"
    .parameter "col"

    .prologue
    const-wide/high16 v6, 0x400e

    .line 130
    int-to-double v4, p0

    mul-double v2, v4, v6

    .line 131
    .local v2, yDist:D
    int-to-double v4, p1

    mul-double v0, v4, v6

    .line 132
    .local v0, xDist:D
    mul-double v4, v2, v2

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method private computeSimpleCentroid(Ljava/util/Map;)Lcom/google/android/location/data/Position;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)",
            "Lcom/google/android/location/data/Position;"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, apResult:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    const-wide/16 v1, 0x0

    .line 424
    .local v1, latDeg:D
    const-wide/16 v3, 0x0

    .line 425
    .local v3, lngDeg:D
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/data/WifiApPosition;

    .line 426
    .local v5, pos:Lcom/google/android/location/data/WifiApPosition;
    iget v6, v5, Lcom/google/android/location/data/WifiApPosition;->latE7:I

    invoke-static {v6}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 427
    iget v6, v5, Lcom/google/android/location/data/WifiApPosition;->lngE7:I

    invoke-static {v6}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v6

    add-double/2addr v3, v6

    goto :goto_0

    .line 429
    .end local v5           #pos:Lcom/google/android/location/data/WifiApPosition;
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v1, v6

    .line 430
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v3, v6

    .line 432
    new-instance v6, Lcom/google/android/location/data/Position;

    invoke-static {v1, v2}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToE7(D)I

    move-result v7

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToE7(D)I

    move-result v8

    const v9, 0x124f8

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/location/data/Position;-><init>(III)V

    return-object v6
.end method

.method private createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/location/localizer/MaxLreLocalizer;->NULL_OUTLIERS:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;-><init>(Lcom/google/android/location/data/Position;ILjava/util/Set;)V

    return-object v0
.end method

.method private detectOutliers(Ljava/util/Map;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, apPositions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/MaxLreLocalizer;->detectOutliersUsingCircleIntersection(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 451
    .local v0, outliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/MaxLreLocalizer;->detectOutliersUsingLargestCluster(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 452
    return-object v0
.end method

.method private detectOutliersUsingCircleIntersection(Ljava/util/Map;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, apPositions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    sget-object v1, Lcom/google/android/location/localizer/MaxLreLocalizer;->wifiCircleIntersector:Lcom/google/android/location/localizer/WifiLocalizerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/location/localizer/WifiLocalizerInterface;->getEstimatedPosition(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v0

    .line 460
    .local v0, estimatedPosition:Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->getOutliers()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private detectOutliersUsingLargestCluster(Ljava/util/Map;)Ljava/util/Set;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, apMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v4, clusters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v6, filteredClusters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v12, toBeMerged:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 474
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 475
    .local v0, ap:Ljava/lang/Long;
    new-instance v13, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/google/android/location/data/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/data/Pair;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;-><init>(Lcom/google/android/location/data/Pair;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    .line 477
    .local v3, cluster:Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/location/data/WifiApPosition;

    invoke-direct {p0, v13, v3}, Lcom/google/android/location/localizer/MaxLreLocalizer;->apInCluster(Lcom/google/android/location/data/WifiApPosition;Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 478
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 480
    :cond_0
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 483
    .end local v3           #cluster:Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    :cond_1
    invoke-direct {p0, v12}, Lcom/google/android/location/localizer/MaxLreLocalizer;->unionClusters(Ljava/util/List;)Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 485
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 486
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 489
    .end local v0           #ap:Ljava/lang/Long;
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v13, Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;

    const/4 v14, 0x0

    invoke-direct {v13, p0, v14}, Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;-><init>(Lcom/google/android/location/localizer/MaxLreLocalizer;Lcom/google/android/location/localizer/MaxLreLocalizer$1;)V

    invoke-static {v4, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 491
    .local v11, outliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 492
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    invoke-virtual {v13}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v7

    .line 493
    .local v7, firstCluster:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_4

    .line 494
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    invoke-virtual {v13}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v2

    .line 495
    .local v2, apCluster:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 496
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/data/Pair;

    .line 497
    .local v1, ap:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    iget-object v13, v1, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 493
    .end local v1           #ap:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 502
    .end local v2           #apCluster:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    .end local v7           #firstCluster:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    .end local v8           #i:I
    :cond_4
    return-object v11
.end method

.method private fetchDistancePdfForSignal(I)Lcom/google/android/location/localizer/DistanceDist;
    .locals 6
    .parameter "rssi"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 277
    new-instance v1, Lcom/google/android/location/localizer/DistanceDist;

    invoke-direct {v1, p1, v4, v4, v3}, Lcom/google/android/location/localizer/DistanceDist;-><init>(III[F)V

    .line 278
    .local v1, key:Lcom/google/android/location/localizer/DistanceDist;
    iget-object v4, p0, Lcom/google/android/location/localizer/MaxLreLocalizer;->platformProfile:Ljava/util/List;

    sget-object v5, Lcom/google/android/location/localizer/MaxLreLocalizer;->rssiComparatorLowerFirst:Ljava/util/Comparator;

    invoke-static {v4, v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 279
    .local v0, index:I
    if-gez v0, :cond_1

    move-object v2, v3

    .line 286
    :cond_0
    :goto_0
    return-object v2

    .line 282
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/localizer/MaxLreLocalizer;->platformProfile:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/localizer/DistanceDist;

    .line 283
    .local v2, result:Lcom/google/android/location/localizer/DistanceDist;
    iget v4, v2, Lcom/google/android/location/localizer/DistanceDist;->numSamples:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    move-object v2, v3

    .line 284
    goto :goto_0
.end method

.method private hasBadClusters(Lcom/google/android/location/data/Position;Ljava/util/Map;)Z
    .locals 6
    .parameter "computedPosition"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Position;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p2, apResults:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/data/WifiApPosition;

    .line 389
    .local v1, pos:Lcom/google/android/location/data/WifiApPosition;
    invoke-static {p1, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->fastDistanceMeters(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D

    move-result-wide v2

    const-wide v4, 0x4052c00000000000L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 393
    .end local v1           #pos:Lcom/google/android/location/data/WifiApPosition;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private intersects(Lcom/google/android/location/data/WifiApPosition;Lcom/google/android/location/data/WifiApPosition;)Z
    .locals 2
    .parameter "ap1"
    .parameter "ap2"

    .prologue
    .line 546
    invoke-static {p1, p2}, Lcom/google/android/location/localizer/LocalizerUtil;->computeDistance(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static qualityMetric(Lcom/google/android/location/data/WifiApPosition;)D
    .locals 6
    .parameter "pos"

    .prologue
    .line 364
    iget v2, p0, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double v0, v2, v4

    .line 365
    .local v0, radius:D
    const-wide/high16 v2, 0x4024

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 366
    const-wide/high16 v2, 0x4034

    div-double/2addr v2, v0

    return-wide v2
.end method

.method private removeOutliers(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 5
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, apPositions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .local p2, outliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 439
    .local v1, filteredAps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 440
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 441
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 444
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    :cond_1
    return-object v1
.end method

.method private runFastMaxLREWithAPRanking(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/location/data/Position;Lcom/google/android/location/localizer/MaxLreProbMatrix;)Lcom/google/android/location/data/Pair;
    .locals 25
    .parameter
    .parameter
    .parameter "matrixCenter"
    .parameter "matrix"
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
            ">;",
            "Lcom/google/android/location/data/Position;",
            "Lcom/google/android/location/localizer/MaxLreProbMatrix;",
            ")",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Lcom/google/android/location/data/Position;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, apResults:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .local p2, signalStrengths:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v20, lreResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v22, minKResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;>;"
    const-wide/16 v12, 0x0

    .line 205
    .local v12, aggQual:D
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 206
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 207
    .local v4, ap:Ljava/lang/Long;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/data/WifiApPosition;

    .line 208
    .local v5, pos:Lcom/google/android/location/data/WifiApPosition;
    iget-object v0, v5, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    move-object/from16 v23, v0

    .line 210
    .local v23, posType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    sget-object v3, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_1

    .line 211
    new-instance v3, Lcom/google/android/location/data/Pair;

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {v5}, Lcom/google/android/location/localizer/MaxLreLocalizer;->qualityMetric(Lcom/google/android/location/data/WifiApPosition;)D

    move-result-wide v6

    add-double/2addr v12, v6

    goto :goto_0

    .line 213
    :cond_1
    sget-object v3, Lcom/google/android/location/data/WifiApPosition$PositionType;->MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_0

    .line 214
    new-instance v3, Lcom/google/android/location/data/Pair;

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v4           #ap:Ljava/lang/Long;
    .end local v5           #pos:Lcom/google/android/location/data/WifiApPosition;
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v23           #posType:Lcom/google/android/location/data/WifiApPosition$PositionType;
    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    sget-object v3, Lcom/google/android/location/localizer/MaxLreLocalizer;->logger:Ljava/util/logging/Logger;

    const-string v6, "No lre nor minK results found. Returning matrixCenter"

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 219
    new-instance v3, Lcom/google/android/location/data/Pair;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v6}, Lcom/google/android/location/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    :goto_1
    return-object v3

    .line 221
    :cond_3
    sget-object v3, Lcom/google/android/location/localizer/MaxLreLocalizer;->LRE_HIGHER_QUALITY_FIRST:Ljava/util/Comparator;

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    const-wide/16 v15, 0x0

    .line 223
    .local v15, currentSum:D
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/location/data/Pair;

    .line 224
    .local v24, resultPair:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/location/data/WifiApPosition;

    .line 225
    .restart local v5       #pos:Lcom/google/android/location/data/WifiApPosition;
    invoke-static {v5}, Lcom/google/android/location/localizer/MaxLreLocalizer;->qualityMetric(Lcom/google/android/location/data/WifiApPosition;)D

    move-result-wide v6

    add-double/2addr v15, v6

    .line 226
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 227
    .restart local v4       #ap:Ljava/lang/Long;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/localizer/MaxLreLocalizer;->addApToMatrix(Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;ILcom/google/android/location/data/Position;Lcom/google/android/location/localizer/MaxLreProbMatrix;)V

    goto :goto_2

    .line 229
    .end local v4           #ap:Ljava/lang/Long;
    .end local v5           #pos:Lcom/google/android/location/data/WifiApPosition;
    .end local v24           #resultPair:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    :cond_4
    const/16 v21, 0x0

    .line 231
    .local v21, minKResultUsed:Z
    const-wide/high16 v6, 0x4020

    cmpg-double v3, v15, v6

    if-gez v3, :cond_5

    .line 232
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/location/data/Pair;

    .line 233
    .restart local v24       #resultPair:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    const/16 v21, 0x1

    .line 234
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/location/data/WifiApPosition;

    .line 235
    .restart local v5       #pos:Lcom/google/android/location/data/WifiApPosition;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 236
    .restart local v4       #ap:Ljava/lang/Long;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/localizer/MaxLreLocalizer;->addApToMatrix(Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;ILcom/google/android/location/data/Position;Lcom/google/android/location/localizer/MaxLreProbMatrix;)V

    goto :goto_3

    .line 239
    .end local v4           #ap:Ljava/lang/Long;
    .end local v5           #pos:Lcom/google/android/location/data/WifiApPosition;
    .end local v24           #resultPair:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    :cond_5
    const-wide v7, 0x3fd999999999999aL

    const-wide/high16 v10, 0x400e

    move-object/from16 v6, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/location/localizer/MaxLreProbMatrix;->computeDominantCircle(DLcom/google/android/location/data/Position;D)Lcom/google/android/location/data/Position$PositionBuilder;

    move-result-object v14

    .line 242
    .local v14, computedPosition:Lcom/google/android/location/data/Position$PositionBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/google/android/location/localizer/MaxLreLocalizer;->adjustCircleSize(Lcom/google/android/location/data/Position$PositionBuilder;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 243
    if-eqz v21, :cond_6

    .line 244
    iget v3, v14, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    iput v3, v14, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 247
    :cond_6
    invoke-virtual {v14}, Lcom/google/android/location/data/Position$PositionBuilder;->build()Lcom/google/android/location/data/Position;

    move-result-object v18

    .line 248
    .local v18, finalPosition:Lcom/google/android/location/data/Position;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/localizer/MaxLreLocalizer;->hasBadClusters(Lcom/google/android/location/data/Position;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 249
    sget-object v3, Lcom/google/android/location/localizer/MaxLreLocalizer;->logger:Ljava/util/logging/Logger;

    const-string v6, "Not returning location as no APs within 75 meters of location."

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 252
    :cond_7
    const-wide v6, 0x3fd3333333333333L

    move-wide v0, v15

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    .line 253
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/google/android/location/data/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/data/Pair;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private unionClusters(Ljava/util/List;)Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;",
            ">;)",
            "Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, clusters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;>;"
    new-instance v2, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    invoke-direct {v2}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;-><init>()V

    .line 524
    .local v2, newCluster:Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    .line 525
    .local v0, a:Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    invoke-virtual {v2}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 527
    .end local v0           #a:Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getEstimatedPosition(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    .locals 10
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
    .line 149
    .local p1, accessPoints:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .local p2, signalStrengths:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/MaxLreLocalizer;->detectOutliers(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 150
    .local v5, outliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v8

    .line 176
    :goto_0
    return-object v8

    .line 153
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/google/android/location/localizer/MaxLreLocalizer;->removeOutliers(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 155
    .local v1, filteredAps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    iget-object v8, p0, Lcom/google/android/location/localizer/MaxLreLocalizer;->matrix:Lcom/google/android/location/localizer/MaxLreProbMatrix;

    invoke-virtual {v8}, Lcom/google/android/location/localizer/MaxLreProbMatrix;->resetMatrix()V

    .line 156
    invoke-direct {p0, v1}, Lcom/google/android/location/localizer/MaxLreLocalizer;->computeSimpleCentroid(Ljava/util/Map;)Lcom/google/android/location/data/Position;

    move-result-object v2

    .line 158
    .local v2, matrixCenter:Lcom/google/android/location/data/Position;
    iget-object v8, p0, Lcom/google/android/location/localizer/MaxLreLocalizer;->matrix:Lcom/google/android/location/localizer/MaxLreProbMatrix;

    invoke-direct {p0, v1, p2, v2, v8}, Lcom/google/android/location/localizer/MaxLreLocalizer;->runFastMaxLREWithAPRanking(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/location/data/Position;Lcom/google/android/location/localizer/MaxLreProbMatrix;)Lcom/google/android/location/data/Pair;

    move-result-object v6

    .line 161
    .local v6, resultPair:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Lcom/google/android/location/data/Position;Ljava/lang/Double;>;"
    if-nez v6, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v8

    goto :goto_0

    .line 165
    :cond_1
    iget-object v7, v6, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/location/data/Position;

    .line 166
    .local v7, userLoc:Lcom/google/android/location/data/Position;
    if-nez v7, :cond_2

    .line 167
    sget-object v8, Lcom/google/android/location/localizer/MaxLreLocalizer;->logger:Ljava/util/logging/Logger;

    const-string v9, "No location found by lre localizer"

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v8

    goto :goto_0

    .line 171
    :cond_2
    iget-object v8, v6, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 172
    .local v3, maxLreConfidence:D
    const/16 v0, 0x50

    .line 173
    .local v0, confidenceForClient:I
    const-wide v8, 0x3fd3333333333333L

    cmpg-double v8, v3, v8

    if-gtz v8, :cond_3

    .line 174
    const/16 v0, 0x4e

    .line 176
    :cond_3
    new-instance v8, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    invoke-direct {v8, v7, v0, v5}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;-><init>(Lcom/google/android/location/data/Position;ILjava/util/Set;)V

    goto :goto_0
.end method
