.class public Lcom/google/android/location/localizer/LocalizerUtil;
.super Ljava/lang/Object;
.source "LocalizerUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 10
    .parameter "latDeg1"
    .parameter "lngDeg1"
    .parameter "latDeg2"
    .parameter "lngDeg2"

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v0

    .line 62
    .local v0, lat1:D
    invoke-static {p4, p5}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v4

    .line 63
    .local v4, lat2:D
    invoke-static {p2, p3}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v2

    .line 64
    .local v2, lng1:D
    invoke-static/range {p6 .. p7}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v6

    .line 65
    .local v6, lng2:D
    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMetersFromRadians(DDDD)D

    move-result-wide v8

    return-wide v8
.end method

.method public static accurateDistanceMetersFromRadians(DDDD)D
    .locals 10
    .parameter "latRad1"
    .parameter "lngRad1"
    .parameter "latRad2"
    .parameter "lngRad2"

    .prologue
    .line 74
    sub-double v4, p4, p0

    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 75
    .local v0, alpha:D
    sub-double v4, p6, p2

    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 76
    .local v2, gamma:D
    mul-double v4, v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, v2

    mul-double/2addr v6, v2

    add-double v0, v4, v6

    .line 77
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 78
    const-wide/high16 v0, 0x3ff0

    .line 80
    :cond_0
    const-wide/high16 v4, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double v2, v4, v6

    .line 81
    const-wide v4, 0x415849c600000000L

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-double v4, v4

    return-wide v4
.end method

.method public static computeDistance(Lcom/google/android/location/data/Position$PositionBuilder;Lcom/google/android/location/data/Position;)I
    .locals 8
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/location/data/Position$PositionBuilder;->lngE7:I

    invoke-static {v2}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v2

    iget v4, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v4}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v4

    iget v6, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v6}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMeters(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static computeDistance(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)I
    .locals 8
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v2}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v2

    iget v4, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v4}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v4

    iget v6, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v6}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMeters(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static degreesToE7(D)I
    .locals 2
    .parameter "deg"

    .prologue
    .line 52
    const-wide v0, 0x416312d000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static degreesToRadians(D)D
    .locals 4
    .parameter "deg"

    .prologue
    .line 40
    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static e7ToDegrees(I)D
    .locals 4
    .parameter "e7"

    .prologue
    .line 48
    int-to-double v0, p0

    const-wide v2, 0x3e7ad7f29abcaf48L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static e7ToRad(I)D
    .locals 4
    .parameter "degreeE7"

    .prologue
    .line 290
    int-to-double v0, p0

    const-wide v2, 0x416312d000000000L

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 20
    .parameter "latDeg1"
    .parameter "lngDeg1"
    .parameter "latDeg2"
    .parameter "lngDeg2"

    .prologue
    .line 142
    invoke-static/range {p2 .. p3}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v6

    .line 143
    .local v6, lngRad1:D
    invoke-static/range {p6 .. p7}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v8

    .line 144
    .local v8, lngRad2:D
    invoke-static/range {p0 .. p1}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v2

    .line 145
    .local v2, latRad1:D
    invoke-static/range {p4 .. p5}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v4

    .line 147
    .local v4, latRad2:D
    sub-double v16, v2, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3f91df46a2529d39L

    cmpl-double v16, v16, v18

    if-gtz v16, :cond_0

    sub-double v16, v6, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3f91df46a2529d39L

    cmpl-double v16, v16, v18

    if-lez v16, :cond_1

    .line 149
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMeters(DDDD)D

    move-result-wide v16

    .line 165
    :goto_0
    return-wide v16

    .line 152
    :cond_1
    sub-double v10, v2, v4

    .line 155
    .local v10, sineLat:D
    sub-double v12, v6, v8

    .line 159
    .local v12, sineLng:D
    add-double v16, v2, v4

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 160
    .local v0, cosTerms:D
    mul-double/2addr v0, v0

    .line 161
    mul-double v16, v10, v10

    mul-double v18, v0, v12

    mul-double v18, v18, v12

    add-double v14, v16, v18

    .line 162
    .local v14, trigTerm:D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 165
    const-wide v16, 0x415849c600000000L

    mul-double v16, v16, v14

    goto :goto_0
.end method

.method public static fastDistanceMeters(Lcom/google/android/location/data/Position$PositionBuilder;Lcom/google/android/location/data/Position;)D
    .locals 8
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/location/data/Position$PositionBuilder;->lngE7:I

    invoke-static {v2}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v2

    iget v4, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v4}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v4

    iget v6, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v6}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/LocalizerUtil;->fastDistanceMeters(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fastDistanceMeters(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D
    .locals 8
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v2}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v2

    iget v4, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v4}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v4

    iget v6, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v6}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/LocalizerUtil;->fastDistanceMeters(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatRadians(Lcom/google/android/location/data/LatLng;)D
    .locals 2
    .parameter "latLng"

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/location/data/LatLng;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatRadians(Lcom/google/android/location/data/Position;)D
    .locals 2
    .parameter "pos"

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLngRadians(Lcom/google/android/location/data/LatLng;)D
    .locals 2
    .parameter "latLng"

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/location/data/LatLng;->lngE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLngRadians(Lcom/google/android/location/data/Position;)D
    .locals 2
    .parameter "pos"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static hasSaneValues(Lcom/google/android/location/data/Position;)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 310
    iget v1, p0, Lcom/google/android/location/data/Position;->accuracyMm:I

    const v2, 0x989680

    if-le v1, v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    iget v1, p0, Lcom/google/android/location/data/Position;->latE7:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/location/data/Position;->lngE7:I

    if-eqz v1, :cond_0

    .line 314
    :cond_2
    iget v1, p0, Lcom/google/android/location/data/Position;->latE7:I

    const v2, 0x35a4e900

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/data/Position;->latE7:I

    const v2, -0x35a4e900

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/data/Position;->lngE7:I

    const v2, 0x6b49d200

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/data/Position;->lngE7:I

    const v2, -0x6b49d200

    if-lt v1, v2, :cond_0

    .line 318
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static metersToMm(I)I
    .locals 1
    .parameter "valueInMeters"

    .prologue
    .line 276
    const v0, 0x20c49b

    if-le p0, v0, :cond_0

    .line 278
    const v0, 0x7fffffff

    .line 280
    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0x3e8

    goto :goto_0
.end method

.method public static mmToMeters(I)I
    .locals 1
    .parameter "valueInMm"

    .prologue
    .line 269
    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static normalizeLatRadians(D)D
    .locals 4
    .parameter "latRadians"

    .prologue
    .line 217
    const-wide v0, -0x4006de04abbbd2e8L

    const-wide v2, 0x3ff921fb54442d18L

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normalizeLngRadians(D)D
    .locals 2
    .parameter "lngRadians"

    .prologue
    .line 221
    const-wide v0, 0x401921fb54442d18L

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static radToDegreesE7(D)I
    .locals 4
    .parameter "rad"

    .prologue
    .line 299
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static relativeLatLngToAbsolutePosition(IILcom/google/android/location/data/Position;)Lcom/google/android/location/data/LatLng;
    .locals 15
    .parameter "latMeters"
    .parameter "lngMeters"
    .parameter "p"

    .prologue
    .line 257
    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v5}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v1

    .line 258
    .local v1, latDeg:D
    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v5}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v3

    .line 259
    .local v3, lngDeg:D
    const-wide v13, 0x3f847ae147ae147bL

    const-wide v5, 0x3f847ae147ae147bL

    add-double/2addr v5, v1

    move-wide v7, v3

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMeters(DDDD)D

    move-result-wide v5

    div-double v9, v13, v5

    .line 260
    .local v9, oneMeterLat:D
    const-wide v13, 0x3f847ae147ae147bL

    const-wide v5, 0x3f847ae147ae147bL

    add-double v7, v3, v5

    move-wide v5, v1

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMeters(DDDD)D

    move-result-wide v5

    div-double v11, v13, v5

    .line 261
    .local v11, oneMeterLng:D
    new-instance v5, Lcom/google/android/location/data/LatLng;

    int-to-double v6, p0

    mul-double/2addr v6, v9

    add-double/2addr v6, v1

    invoke-static {v6, v7}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToE7(D)I

    move-result v6

    move/from16 v0, p1

    int-to-double v7, v0

    mul-double/2addr v7, v11

    add-double/2addr v7, v3

    invoke-static {v7, v8}, Lcom/google/android/location/localizer/LocalizerUtil;->degreesToE7(D)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/location/data/LatLng;-><init>(II)V

    return-object v5
.end method

.method public static relativeLatMeters(Lcom/google/android/location/data/LatLng;Lcom/google/android/location/data/Position;)D
    .locals 6
    .parameter "target"
    .parameter "centroid"

    .prologue
    .line 232
    invoke-static {p0}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/LatLng;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 233
    .local v0, deltaLat:D
    const-wide v2, 0x415849c600000000L

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public static relativeLatMeters(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D
    .locals 6
    .parameter "target"
    .parameter "centroid"

    .prologue
    .line 243
    invoke-static {p0}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 244
    .local v0, deltaLat:D
    const-wide v2, 0x415849c600000000L

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public static relativeLngMeters(Lcom/google/android/location/data/LatLng;Lcom/google/android/location/data/Position;)D
    .locals 8
    .parameter "target"
    .parameter "centroid"

    .prologue
    .line 199
    invoke-static {p0}, Lcom/google/android/location/localizer/LocalizerUtil;->getLngRadians(Lcom/google/android/location/data/LatLng;)D

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/location/localizer/LocalizerUtil;->getLngRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 200
    .local v0, deltaLng:D
    invoke-static {p0}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/LatLng;)D

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double v2, v4, v6

    .line 201
    .local v2, latAvg:D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    const-wide v6, 0x415849c600000000L

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public static relativeLngMeters(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/Position;)D
    .locals 8
    .parameter "target"
    .parameter "centroid"

    .prologue
    .line 211
    invoke-static {p0}, Lcom/google/android/location/localizer/LocalizerUtil;->getLngRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/location/localizer/LocalizerUtil;->getLngRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 212
    .local v0, deltaLng:D
    invoke-static {p0}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/location/localizer/LocalizerUtil;->getLatRadians(Lcom/google/android/location/data/Position;)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double v2, v4, v6

    .line 213
    .local v2, latAvg:D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    const-wide v6, 0x415849c600000000L

    mul-double/2addr v4, v6

    return-wide v4
.end method
