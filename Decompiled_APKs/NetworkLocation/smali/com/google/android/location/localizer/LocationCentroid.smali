.class public Lcom/google/android/location/localizer/LocationCentroid;
.super Ljava/lang/Object;
.source "LocationCentroid.java"


# instance fields
.field private mCentroidLat:D

.field private mCentroidLng:D

.field private mConfidence:I

.field private mLatSum:D

.field private mLats:[D

.field private mLngSum:D

.field private mLngs:[D

.field private mNumber:I

.field private mRadii:[I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xa

    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLatSum:D

    .line 21
    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngSum:D

    .line 22
    iput v3, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    .line 23
    iput v3, p0, Lcom/google/android/location/localizer/LocationCentroid;->mConfidence:I

    .line 25
    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLat:D

    .line 26
    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLng:D

    .line 29
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLats:[D

    .line 30
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngs:[D

    .line 31
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    .line 34
    invoke-virtual {p0}, Lcom/google/android/location/localizer/LocationCentroid;->reset()V

    .line 35
    return-void
.end method


# virtual methods
.method public addLocation(DDII)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter "accuracy"
    .parameter "confidence"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1388

    if-gt p5, v0, :cond_1

    .line 55
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLatSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLatSum:D

    .line 56
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngSum:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngSum:D

    .line 57
    iget v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mConfidence:I

    if-le p6, v0, :cond_0

    .line 58
    iput p6, p0, Lcom/google/android/location/localizer/LocationCentroid;->mConfidence:I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLats:[D

    iget v1, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    aput-wide p1, v0, v1

    .line 62
    iget-object v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngs:[D

    iget v1, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    aput-wide p3, v0, v1

    .line 63
    iget-object v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    iget v1, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    aput p5, v0, v1

    .line 64
    iget v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    .line 66
    :cond_1
    return-void
.end method

.method public addLocation(Lcom/google/android/location/data/Position;)V
    .locals 7
    .parameter "position"

    .prologue
    .line 69
    iget v0, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v1

    iget v0, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->e7ToDegrees(I)D

    move-result-wide v3

    iget v0, p1, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-static {v0}, Lcom/google/android/location/localizer/LocalizerUtil;->mmToMeters(I)I

    move-result v5

    iget v6, p1, Lcom/google/android/location/data/Position;->confidence:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/localizer/LocationCentroid;->addLocation(DDII)V

    .line 72
    return-void
.end method

.method public getAccuracy()I
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v14, 0x0

    .line 97
    iget v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    if-nez v4, :cond_0

    move v4, v14

    .line 129
    :goto_0
    return v4

    .line 101
    :cond_0
    iget v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    if-ne v4, v5, :cond_1

    .line 102
    iget-object v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    aget v4, v4, v14

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/localizer/LocationCentroid;->getCentroidLat()D

    move-result-wide v0

    .line 106
    .local v0, cLat:D
    invoke-virtual {p0}, Lcom/google/android/location/localizer/LocationCentroid;->getCentroidLng()D

    move-result-wide v2

    .line 108
    .local v2, cLng:D
    const/4 v10, 0x0

    .line 109
    .local v10, meanDistanceSum:I
    const/16 v12, 0x1388

    .line 110
    .local v12, smallestCircle:I
    const/16 v13, 0x1388

    .line 111
    .local v13, smallestCircleDistance:I
    new-array v8, v5, [F

    .line 112
    .local v8, distance:[F
    const/4 v11, 0x0

    .line 114
    .local v11, outlierExists:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    if-ge v9, v4, :cond_4

    .line 115
    iget-object v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLats:[D

    aget-wide v4, v4, v9

    iget-object v6, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngs:[D

    aget-wide v6, v6, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/LocalizerUtil;->accurateDistanceMeters(DDDD)D

    .line 116
    aget v4, v8, v14

    float-to-int v4, v4

    add-int/2addr v10, v4

    .line 117
    aget v4, v8, v14

    iget-object v5, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    aget v5, v5, v9

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 118
    const/4 v11, 0x1

    .line 120
    :cond_2
    iget-object v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    aget v4, v4, v9

    if-ge v4, v12, :cond_3

    .line 121
    iget-object v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    aget v12, v4, v9

    .line 122
    aget v4, v8, v14

    float-to-int v13, v4

    .line 114
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 126
    :cond_4
    if-eqz v11, :cond_5

    .line 127
    iget v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    div-int v4, v10, v4

    goto :goto_0

    .line 129
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0
.end method

.method public getCentroidLat()D
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLat:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    if-eqz v0, :cond_0

    .line 80
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLatSum:D

    iget v2, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLat:D

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLat:D

    return-wide v0
.end method

.method public getCentroidLng()D
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLng:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    if-eqz v0, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngSum:D

    iget v2, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLng:D

    .line 89
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLng:D

    return-wide v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/location/localizer/LocationCentroid;->mConfidence:I

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 38
    iput-wide v2, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLatSum:D

    .line 39
    iput-wide v2, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngSum:D

    .line 40
    iput v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mNumber:I

    .line 41
    iput v4, p0, Lcom/google/android/location/localizer/LocationCentroid;->mConfidence:I

    .line 43
    iput-wide v2, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLat:D

    .line 44
    iput-wide v2, p0, Lcom/google/android/location/localizer/LocationCentroid;->mCentroidLng:D

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLats:[D

    aput-wide v2, v1, v0

    .line 48
    iget-object v1, p0, Lcom/google/android/location/localizer/LocationCentroid;->mLngs:[D

    aput-wide v2, v1, v0

    .line 49
    iget-object v1, p0, Lcom/google/android/location/localizer/LocationCentroid;->mRadii:[I

    aput v4, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
