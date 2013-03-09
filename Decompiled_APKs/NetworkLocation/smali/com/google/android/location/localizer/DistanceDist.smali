.class public Lcom/google/android/location/localizer/DistanceDist;
.super Ljava/lang/Object;
.source "DistanceDist.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INDEX_OFFSET_FIELD_ID:I = 0x3

.field private static final METRIC_VALUE_FIELD_ID:I = 0x2

.field private static final NUM_SAMPLES_FIELD_ID:I = 0x5

.field private static final PROB_FIELD_ID:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final indexOffset:I

.field final metricValue:I

.field final numSamples:I

.field final prob:[F


# direct methods
.method constructor <init>(III[F)V
    .locals 0
    .parameter "metricValue"
    .parameter "numSamples"
    .parameter "indexOffset"
    .parameter "prob"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/android/location/localizer/DistanceDist;->metricValue:I

    .line 45
    iput p3, p0, Lcom/google/android/location/localizer/DistanceDist;->indexOffset:I

    .line 46
    iput p2, p0, Lcom/google/android/location/localizer/DistanceDist;->numSamples:I

    .line 47
    iput-object p4, p0, Lcom/google/android/location/localizer/DistanceDist;->prob:[F

    .line 48
    return-void
.end method

.method static fromProto(Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/android/location/localizer/DistanceDist;
    .locals 9
    .parameter "protoBuf"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 56
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 58
    .local v2, metricValue:I
    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 60
    .local v1, indexOffset:I
    :goto_0
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 62
    .local v3, numSamples:I
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 63
    .local v5, probCount:I
    new-array v4, v5, [F

    .line 64
    .local v4, prob:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 65
    invoke-virtual {p0, v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    aput v6, v4, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0           #i:I
    .end local v1           #indexOffset:I
    .end local v3           #numSamples:I
    .end local v4           #prob:[F
    .end local v5           #probCount:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    .restart local v0       #i:I
    .restart local v1       #indexOffset:I
    .restart local v3       #numSamples:I
    .restart local v4       #prob:[F
    .restart local v5       #probCount:I
    :cond_1
    new-instance v6, Lcom/google/android/location/localizer/DistanceDist;

    invoke-direct {v6, v2, v3, v1, v4}, Lcom/google/android/location/localizer/DistanceDist;-><init>(III[F)V

    return-object v6
.end method
