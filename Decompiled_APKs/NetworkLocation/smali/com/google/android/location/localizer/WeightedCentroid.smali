.class Lcom/google/android/location/localizer/WeightedCentroid;
.super Ljava/lang/Object;
.source "WeightedCentroid.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWeightSum([D)D
    .locals 7
    .parameter "weights"

    .prologue
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .local v3, sum:D
    move-object v0, p1

    .local v0, arr$:[D
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v5, v0, v1

    .line 62
    .local v5, weight:D
    add-double/2addr v3, v5

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v5           #weight:D
    :cond_0
    return-wide v3
.end method


# virtual methods
.method public getEstimation(Ljava/util/List;[D)Lcom/google/android/location/data/LatLng;
    .locals 15
    .parameter
    .parameter "weights"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/LatLng;",
            ">;[D)",
            "Lcom/google/android/location/data/LatLng;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, positionlist:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/LatLng;>;"
    const-wide/16 v9, 0x0

    .line 28
    .local v9, weightsum:D
    const-wide/16 v1, 0x0

    .line 29
    .local v1, cumulativeLat:D
    const-wide/16 v3, 0x0

    .line 32
    .local v3, cumulativeLng:D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v0, p2

    array-length v12, v0

    if-eq v11, v12, :cond_0

    .line 33
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Required List<Position>.size() == weights.length. Input was List<Position>=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and weights.length=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 38
    :cond_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/WeightedCentroid;->getWeightSum([D)D

    move-result-wide v9

    .line 39
    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-nez v11, :cond_1

    .line 40
    const/4 v11, 0x0

    .line 51
    :goto_0
    return-object v11

    .line 42
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 43
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/location/data/LatLng;

    .line 44
    .local v8, pos:Lcom/google/android/location/data/LatLng;
    aget-wide v11, p2, v5

    iget v13, v8, Lcom/google/android/location/data/LatLng;->latE7:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 45
    aget-wide v11, p2, v5

    iget v13, v8, Lcom/google/android/location/data/LatLng;->lngE7:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 49
    .end local v8           #pos:Lcom/google/android/location/data/LatLng;
    :cond_2
    div-double v11, v1, v9

    double-to-int v6, v11

    .line 50
    .local v6, latE7:I
    div-double v11, v3, v9

    double-to-int v7, v11

    .line 51
    .local v7, lngE7:I
    new-instance v11, Lcom/google/android/location/data/LatLng;

    invoke-direct {v11, v6, v7}, Lcom/google/android/location/data/LatLng;-><init>(II)V

    goto :goto_0
.end method
