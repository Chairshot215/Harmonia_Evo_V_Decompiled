.class Lcom/google/android/location/localizer/WifiLocationEstimator;
.super Ljava/lang/Object;
.source "WifiLocationEstimator.java"

# interfaces
.implements Lcom/google/android/location/localizer/WifiLocalizerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/localizer/WifiLocationEstimator$1;,
        Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;,
        Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/google/android/location/localizer/WifiLocationEstimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/WifiLocationEstimator;->LOGGER:Ljava/util/logging/Logger;

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/WifiLocationEstimator;->NULL_OUTLIERS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    return-void
.end method

.method private computeBearing(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D
    .locals 17
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 542
    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v11}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToRad(I)D

    move-result-wide v1

    .line 543
    .local v1, lat1Rad:D
    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v11}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToRad(I)D

    move-result-wide v3

    .line 545
    .local v3, lat2Rad:D
    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/location/data/Position;->lngE7:I

    int-to-double v11, v11

    const-wide v13, 0x416312d000000000L

    div-double/2addr v11, v13

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/location/data/Position;->lngE7:I

    int-to-double v13, v13

    const-wide v15, 0x416312d000000000L

    div-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 546
    .local v5, lngDiff:D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v9, v11, v13

    .line 547
    .local v9, y:D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double v7, v11, v13

    .line 550
    .local v7, x:D
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    return-wide v11
.end method

.method private computeCenter(Lcom/google/android/location/data/Pair;Lcom/google/android/location/data/Pair;)Lcom/google/android/location/data/Pair;
    .locals 26
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, point1:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local p2, point2:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 520
    .local v8, lat1:D
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 521
    .local v10, lat2:D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 522
    .local v14, lon1:D
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 523
    .local v16, lon2:D
    sub-double v6, v16, v14

    .line 525
    .local v6, dLon:D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v2, v20, v22

    .line 526
    .local v2, bx:D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v4, v20, v22

    .line 527
    .local v4, by:D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    add-double v22, v22, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    add-double v24, v24, v2

    mul-double v22, v22, v24

    mul-double v24, v4, v4

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 530
    .local v12, lat3:D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    add-double v20, v20, v2

    move-wide/from16 v0, v20

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    add-double v18, v14, v20

    .line 533
    .local v18, lon3:D
    new-instance v20, Lcom/google/android/location/data/Pair;

    invoke-static {v12, v13}, Lcom/google/android/location/localizer/LocalizerUtil;->normalizeLatRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-static/range {v18 .. v19}, Lcom/google/android/location/localizer/LocalizerUtil;->normalizeLngRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/google/android/location/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v20
.end method

.method private computeCircleSize(IILcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;ILcom/google/android/location/data/Pair;)D
    .locals 18
    .parameter "radiusMeters1"
    .parameter "radiusMeters2"
    .parameter "pos1"
    .parameter "pos2"
    .parameter "dist"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/location/data/Position;",
            "Lcom/google/android/location/data/Position;",
            "I",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 490
    .local p6, center:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-int v11, p5, p5

    .line 491
    .local v11, distSquare:I
    mul-int v16, p1, p1

    .line 492
    .local v16, radius1Square:I
    mul-int v17, p2, p2

    .line 494
    .local v17, radius2Square:I
    invoke-static/range {p3 .. p3}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v1

    .line 495
    .local v1, latRadians:D
    invoke-static/range {p3 .. p3}, Lcom/google/android/location/localizer/LocalizerUtil;->getLngRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v3

    .line 497
    .local v3, lngRadians:D
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMetersFromRadians(DDDD)D

    move-result-wide v5

    double-to-int v12, v5

    .line 499
    .local v12, distanceToCenter:I
    mul-int v13, v12, v12

    .line 501
    .local v13, distanceToCenterSquare:I
    add-int v5, v11, v16

    sub-int v5, v5, v17

    int-to-double v5, v5

    mul-int/lit8 v7, p1, 0x2

    mul-int v7, v7, p5

    int-to-double v7, v7

    div-double v9, v5, v7

    .line 503
    .local v9, cosAngle:D
    add-int v5, v16, v13

    int-to-double v5, v5

    mul-int/lit8 v7, p1, 0x2

    mul-int/2addr v7, v12

    int-to-double v7, v7

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 506
    .local v14, height:D
    return-wide v14
.end method

.method private computeGroupIntersection(Ljava/util/List;)Lcom/google/android/location/data/Position;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;)",
            "Lcom/google/android/location/data/Position;"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    invoke-virtual {v3}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v1

    .line 383
    .local v1, intersection:Lcom/google/android/location/data/Position;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 384
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    invoke-virtual {v3}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v2

    .line 385
    .local v2, pos:Lcom/google/android/location/data/Position;
    invoke-direct {p0, v1, v2}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeIntersection(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)Lcom/google/android/location/data/Position;

    move-result-object v1

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v2           #pos:Lcom/google/android/location/data/Position;
    :cond_0
    return-object v1
.end method

.method private computeIntersection(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)Lcom/google/android/location/data/Position;
    .locals 28
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 414
    invoke-static/range {p1 .. p2}, Lcom/google/android/location/localizer/LocalizerUtil;->computeDistance(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)I

    move-result v20

    .line 415
    .local v20, distanceBetweenCenters:I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v3}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v16

    .line 416
    .local v16, accuracy1Meters:I
    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v3}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v17

    .line 418
    .local v17, accuracy2Meters:I
    sub-int v3, v16, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v20

    if-gt v0, v3, :cond_1

    .line 420
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 467
    .end local v17           #accuracy2Meters:I
    .end local p1
    :goto_0
    return-object p1

    .restart local v17       #accuracy2Meters:I
    .restart local p1
    :cond_0
    move-object/from16 p1, p2

    .line 423
    goto :goto_0

    .line 428
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeBearing(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D

    move-result-wide v7

    .line 429
    .local v7, bearing:D
    add-int v3, v20, v17

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 432
    .local v6, radiusMeters1:I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/location/data/Position;->latE7:I

    .line 433
    .local v4, lat1:I
    move-object/from16 v0, p2

    iget v10, v0, Lcom/google/android/location/data/Position;->latE7:I

    .line 434
    .local v10, lat2:I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/location/data/Position;->lngE7:I

    .line 435
    .local v5, lng1:I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/location/data/Position;->lngE7:I

    .local v11, lng2:I
    move-object/from16 v3, p0

    .line 436
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/location/localizer/WifiLocationEstimator;->distanceHeadingToLatLng(IIID)Lcom/google/android/location/data/Pair;

    move-result-object v26

    .line 440
    .local v26, radiusEdgeCoordinates1:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const-wide v18, 0x400921fb54442d18L

    add-double v13, v18, v7

    .line 441
    .local v13, heading2:D
    add-int v3, v20, v16

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, radiusMeters2:I
    move-object/from16 v9, p0

    .line 444
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/location/localizer/WifiLocationEstimator;->distanceHeadingToLatLng(IIID)Lcom/google/android/location/data/Pair;

    move-result-object v27

    .line 448
    .local v27, radiusEdgeCoordinates2:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeCenter(Lcom/google/android/location/data/Pair;Lcom/google/android/location/data/Pair;)Lcom/google/android/location/data/Pair;

    move-result-object v23

    .line 451
    .local v23, center:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    add-int v3, v16, v17

    move/from16 v0, v20

    if-le v0, v3, :cond_2

    .line 456
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    .end local v17           #accuracy2Meters:I
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v15 .. v22}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMetersFromRadians(DDDD)D

    move-result-wide v24

    .line 467
    .local v24, distanceMeters:D
    :goto_1
    new-instance p1, Lcom/google/android/location/data/Position;

    .end local p1
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/location/localizer/LocalizerUtil;->radToDegreesE7(D)I

    move-result v9

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/location/localizer/LocalizerUtil;->radToDegreesE7(D)I

    move-result v3

    move-wide/from16 v0, v24

    double-to-int v15, v0

    invoke-static {v15}, Lcom/google/android/location/localizer/LocalizerUtil;->metersToMm(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-direct {v0, v9, v3, v15}, Lcom/google/android/location/data/Position;-><init>(III)V

    goto/16 :goto_0

    .end local v24           #distanceMeters:D
    .restart local v17       #accuracy2Meters:I
    .restart local p1
    :cond_2
    move-object/from16 v15, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v21, v23

    .line 462
    invoke-direct/range {v15 .. v21}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeCircleSize(IILcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;ILcom/google/android/location/data/Pair;)D

    move-result-wide v24

    .restart local v24       #distanceMeters:D
    goto :goto_1
.end method

.method private computeLocation(Ljava/util/List;)Lcom/google/android/location/data/Position;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;)",
            "Lcom/google/android/location/data/Position;"
        }
    .end annotation

    .prologue
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    const v9, 0x249f0

    .line 260
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 262
    .local v2, candidateGroups:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .line 263
    .local v1, candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    invoke-direct {p0, v2, v1}, Lcom/google/android/location/localizer/WifiLocationEstimator;->findGroup(Ljava/util/Set;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)Ljava/util/List;

    move-result-object v3

    .line 264
    .local v3, group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    if-nez v3, :cond_0

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .restart local v3       #group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v1           #candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    .end local v3           #group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v4, groupIntersections:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Position;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 275
    .restart local v3       #group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    invoke-direct {p0, v3}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeGroupIntersection(Ljava/util/List;)Lcom/google/android/location/data/Position;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    .end local v3           #group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    :cond_2
    const/4 v6, 0x0

    .line 279
    .local v6, position:Lcom/google/android/location/data/Position;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 283
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #position:Lcom/google/android/location/data/Position;
    check-cast v6, Lcom/google/android/location/data/Position;

    .line 290
    .restart local v6       #position:Lcom/google/android/location/data/Position;
    :goto_2
    iget v7, v6, Lcom/google/android/location/data/Position;->accuracyMm:I

    if-ge v7, v9, :cond_3

    .line 292
    new-instance v0, Lcom/google/android/location/data/Position$PositionBuilder;

    invoke-direct {v0, v6}, Lcom/google/android/location/data/Position$PositionBuilder;-><init>(Lcom/google/android/location/data/Position;)V

    .line 293
    .local v0, builder:Lcom/google/android/location/data/Position$PositionBuilder;
    iput v9, v0, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 294
    invoke-virtual {v0}, Lcom/google/android/location/data/Position$PositionBuilder;->build()Lcom/google/android/location/data/Position;

    move-result-object v6

    .line 296
    .end local v0           #builder:Lcom/google/android/location/data/Position$PositionBuilder;
    :cond_3
    return-object v6

    .line 287
    :cond_4
    invoke-direct {p0, v4}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeWeightedCentroid(Ljava/util/List;)Lcom/google/android/location/data/Position;

    move-result-object v6

    goto :goto_2
.end method

.method private computePrefetchOutliers(Lcom/google/android/location/data/Position;Ljava/util/Map;)Ljava/util/Set;
    .locals 6
    .parameter "computedLocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Position;",
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
    .line 239
    .local p2, accessPoints:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v3, prefetchOutliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 241
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/Position;

    .line 242
    .local v2, position:Lcom/google/android/location/data/Position;
    invoke-static {v2, p1}, Lcom/google/android/location/localizer/LocalizerUtil;->computeDistance(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)I

    move-result v4

    const/16 v5, 0xfa

    if-le v4, v5, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v2           #position:Lcom/google/android/location/data/Position;
    :cond_1
    return-object v3
.end method

.method private computeWeightedCentroid(Ljava/util/List;)Lcom/google/android/location/data/Position;
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/Position;",
            ">;)",
            "Lcom/google/android/location/data/Position;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, groupIntersections:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/Position;>;"
    const/16 v16, 0x0

    .line 329
    .local v16, centroid:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_1

    .line 330
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/location/data/Position;

    .line 331
    .local v19, groupIntersection:Lcom/google/android/location/data/Position;
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/location/data/Position;

    .line 332
    .local v20, groupIntersection2:Lcom/google/android/location/data/Position;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeBearing(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D

    move-result-wide v7

    .line 334
    .local v7, bearing:D
    move-object/from16 v0, v19

    iget v4, v0, Lcom/google/android/location/data/Position;->latE7:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/google/android/location/data/Position;->lngE7:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v3}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/location/localizer/WifiLocationEstimator;->distanceHeadingToLatLng(IIID)Lcom/google/android/location/data/Pair;

    move-result-object v24

    .line 337
    .local v24, radiusEdgeCoordinates1:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v0, v20

    iget v10, v0, Lcom/google/android/location/data/Position;->latE7:I

    move-object/from16 v0, v20

    iget v11, v0, Lcom/google/android/location/data/Position;->lngE7:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v3}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v12

    const-wide v3, 0x400921fb54442d18L

    add-double v13, v3, v7

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/location/localizer/WifiLocationEstimator;->distanceHeadingToLatLng(IIID)Lcom/google/android/location/data/Pair;

    move-result-object v25

    .line 341
    .local v25, radiusEdgeCoordinates2:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeCenter(Lcom/google/android/location/data/Pair;Lcom/google/android/location/data/Pair;)Lcom/google/android/location/data/Pair;

    move-result-object v15

    .line 343
    .local v15, centerBetweenTwoGroups:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    if-nez v16, :cond_0

    .line 344
    move-object/from16 v16, v15

    .line 329
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 346
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeCenter(Lcom/google/android/location/data/Pair;Lcom/google/android/location/data/Pair;)Lcom/google/android/location/data/Pair;

    move-result-object v16

    goto :goto_1

    .line 349
    .end local v7           #bearing:D
    .end local v15           #centerBetweenTwoGroups:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v19           #groupIntersection:Lcom/google/android/location/data/Position;
    .end local v20           #groupIntersection2:Lcom/google/android/location/data/Position;
    .end local v24           #radiusEdgeCoordinates1:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v25           #radiusEdgeCoordinates2:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1
    new-instance v4, Lcom/google/android/location/data/Position$PositionBuilder;

    invoke-direct {v4}, Lcom/google/android/location/data/Position$PositionBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/location/localizer/LocalizerUtil;->radToDegreesE7(D)I

    move-result v5

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/location/localizer/LocalizerUtil;->radToDegreesE7(D)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/google/android/location/data/Position$PositionBuilder;->latLng(II)Lcom/google/android/location/data/Position$PositionBuilder;

    move-result-object v17

    .line 355
    .local v17, centroidPosition:Lcom/google/android/location/data/Position$PositionBuilder;
    const v23, 0x7fffffff

    .line 356
    .local v23, minDistance:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/location/data/Position;

    .line 357
    .restart local v19       #groupIntersection:Lcom/google/android/location/data/Position;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->computeDistance(Lcom/google/android/location/data/Position$PositionBuilder;Lcom/google/android/location/data/Position;)I

    move-result v18

    .line 358
    .local v18, distance:I
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 359
    move/from16 v23, v18

    goto :goto_2

    .line 362
    .end local v18           #distance:I
    .end local v19           #groupIntersection:Lcom/google/android/location/data/Position;
    :cond_3
    invoke-static/range {v23 .. v23}, Lcom/google/android/location/localizer/LocalizerUtil;->metersToMm(I)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 363
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/location/data/Position$PositionBuilder;->build()Lcom/google/android/location/data/Position;

    move-result-object v3

    return-object v3
.end method

.method private createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/location/localizer/WifiLocationEstimator;->NULL_OUTLIERS:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;-><init>(Lcom/google/android/location/data/Position;ILjava/util/Set;)V

    return-object v0
.end method

.method private determineIntersectCountBounds(Ljava/util/List;)Lcom/google/android/location/data/Pair;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;)",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    const v3, 0x7fffffff

    .line 197
    .local v3, minIntersectionCount:I
    const/high16 v2, -0x8000

    .line 198
    .local v2, maxIntersectionCount:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .line 199
    .local v0, candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    invoke-virtual {v0}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getIntersectionCount()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 200
    invoke-virtual {v0}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getIntersectionCount()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 203
    .end local v0           #candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    :cond_0
    new-instance v4, Lcom/google/android/location/data/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/location/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private findGroup(Ljava/util/Set;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;>;",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, candidateGroups:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 400
    .local v0, group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    invoke-direct {p0, v2, p2}, Lcom/google/android/location/localizer/WifiLocationEstimator;->intersects(Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    .end local v0           #group:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private intersects(Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)Z
    .locals 5
    .parameter "candidate1"
    .parameter "candidate2"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v1

    .line 213
    .local v1, position1:Lcom/google/android/location/data/Position;
    invoke-virtual {p2}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getPosition()Lcom/google/android/location/data/Position;

    move-result-object v2

    .line 215
    .local v2, position2:Lcom/google/android/location/data/Position;
    invoke-static {v1, v2}, Lcom/google/android/location/localizer/LocalizerUtil;->computeDistance(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)I

    move-result v0

    .line 216
    .local v0, distanceBetween:I
    iget v3, v1, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v3}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v3

    iget v4, v2, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v4}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v4

    add-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeOutliers(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "minIntersectCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .line 227
    .local v0, candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    invoke-virtual {v0}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getIntersectionCount()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 231
    .end local v0           #candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    :cond_1
    return-void
.end method

.method private updateIntersectCount(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .line 172
    .local v0, candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->setIntersectionCount(I)V

    goto :goto_0

    .line 175
    .end local v0           #candidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 176
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .line 177
    .local v5, thisCandidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    add-int/lit8 v3, v1, 0x1

    .local v3, j:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 178
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .line 179
    .local v4, thatCandidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    invoke-direct {p0, v5, v4}, Lcom/google/android/location/localizer/WifiLocationEstimator;->intersects(Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-virtual {v5}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->incIntersectionCount()V

    .line 181
    invoke-virtual {v4}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->incIntersectionCount()V

    .line 177
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    .end local v4           #thatCandidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v3           #j:I
    .end local v5           #thisCandidate:Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method distanceHeadingToLatLng(IIID)Lcom/google/android/location/data/Pair;
    .locals 19
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "distanceMeters"
    .parameter "headingRad"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIID)",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    move/from16 v0, p3

    int-to-double v11, v0

    const-wide v13, 0x4158554c00000000L

    div-double v1, v11, v13

    .line 568
    .local v1, distanceRatio:D
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToRad(I)D

    move-result-wide v3

    .line 569
    .local v3, lat:D
    invoke-static/range {p2 .. p2}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToRad(I)D

    move-result-wide v7

    .line 572
    .local v7, lng:D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    .line 576
    .local v5, lat2:D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    add-double v9, v7, v11

    .line 580
    .local v9, lng2:D
    const-wide v11, 0x400921fb54442d18L

    add-double/2addr v11, v9

    const-wide v13, 0x401921fb54442d18L

    rem-double/2addr v11, v13

    const-wide v13, 0x400921fb54442d18L

    sub-double v9, v11, v13

    .line 582
    new-instance v11, Lcom/google/android/location/data/Pair;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/android/location/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public getEstimatedPosition(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    .locals 13
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
    .line 88
    .local p1, accessPoints:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .local p2, signalStrengths:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/localizer/WifiLocationEstimator;->createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v10

    .line 154
    :goto_0
    return-object v10

    .line 93
    :cond_1
    const/4 v6, 0x1

    .line 94
    .local v6, keepDerivedPositions:Z
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/location/data/WifiApPosition;

    .line 95
    .local v8, pos:Lcom/google/android/location/data/WifiApPosition;
    iget-object v10, v8, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    sget-object v11, Lcom/google/android/location/data/WifiApPosition$PositionType;->MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-eq v10, v11, :cond_3

    iget-object v10, v8, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    sget-object v11, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-ne v10, v11, :cond_2

    .line 97
    :cond_3
    const/4 v6, 0x0

    .line 102
    .end local v8           #pos:Lcom/google/android/location/data/WifiApPosition;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 106
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/location/data/WifiApPosition;

    .line 107
    .restart local v8       #pos:Lcom/google/android/location/data/WifiApPosition;
    if-nez v6, :cond_6

    iget-object v10, v8, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    sget-object v11, Lcom/google/android/location/data/WifiApPosition$PositionType;->MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-eq v10, v11, :cond_6

    iget-object v10, v8, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    sget-object v11, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    if-ne v10, v11, :cond_5

    .line 109
    :cond_6
    new-instance v12, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/location/data/Position;

    invoke-direct {v12, v10, v11}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;-><init>(Ljava/lang/Long;Lcom/google/android/location/data/Position;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v8           #pos:Lcom/google/android/location/data/WifiApPosition;
    :cond_7
    new-instance v10, Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;-><init>(Lcom/google/android/location/localizer/WifiLocationEstimator;Lcom/google/android/location/localizer/WifiLocationEstimator$1;)V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/WifiLocationEstimator;->updateIntersectCount(Ljava/util/List;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/WifiLocationEstimator;->determineIntersectCountBounds(Ljava/util/List;)Lcom/google/android/location/data/Pair;

    move-result-object v5

    .line 126
    .local v5, intersectCountBounds:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v5, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    iget-object v11, v5, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    if-eq v10, v11, :cond_a

    const/4 v7, 0x1

    .line 127
    .local v7, outliersExist:Z
    :goto_2
    if-eqz v7, :cond_9

    .line 129
    iget-object v10, v5, Lcom/google/android/location/data/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v0, v10}, Lcom/google/android/location/localizer/WifiLocationEstimator;->removeOutliers(Ljava/util/List;I)V

    .line 131
    :cond_9
    if-nez v7, :cond_8

    .line 134
    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computeLocation(Ljava/util/List;)Lcom/google/android/location/data/Position;

    move-result-object v1

    .line 136
    .local v1, computedLocation:Lcom/google/android/location/data/Position;
    iget v10, v1, Lcom/google/android/location/data/Position;->accuracyMm:I

    const v11, 0x16e360

    if-le v10, v11, :cond_b

    .line 138
    sget-object v10, Lcom/google/android/location/localizer/WifiLocationEstimator;->LOGGER:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring computed location since accuracy too high: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mm."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/location/localizer/WifiLocationEstimator;->createEmptyReply()Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    move-result-object v10

    goto/16 :goto_0

    .line 126
    .end local v1           #computedLocation:Lcom/google/android/location/data/Position;
    .end local v7           #outliersExist:Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_2

    .line 144
    .restart local v1       #computedLocation:Lcom/google/android/location/data/Position;
    .restart local v7       #outliersExist:Z
    :cond_b
    const/16 v2, 0x50

    .line 150
    .local v2, confidence:I
    invoke-direct {p0, v1, p1}, Lcom/google/android/location/localizer/WifiLocationEstimator;->computePrefetchOutliers(Lcom/google/android/location/data/Position;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v9

    .line 151
    .local v9, prefetchOutliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 152
    sget-object v10, Lcom/google/android/location/localizer/WifiLocationEstimator;->LOGGER:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not returning location for the following outliers: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 154
    :cond_c
    new-instance v10, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;

    invoke-direct {v10, v1, v2, v9}, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;-><init>(Lcom/google/android/location/data/Position;ILjava/util/Set;)V

    goto/16 :goto_0
.end method
