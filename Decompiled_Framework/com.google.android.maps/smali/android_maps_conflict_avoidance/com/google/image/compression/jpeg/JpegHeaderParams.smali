.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
.super Ljava/lang/Object;
.source "JpegHeaderParams.java"


# instance fields
.field private headerLength:I

.field private height:I

.field private quality:I

.field private qualityAlgorithm:I

.field private variant:I

.field private width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qualityAlgorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->variant:I

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->width:I

    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->height:I

    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->quality:I

    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->qualityAlgorithm:I

    iput p6, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->headerLength:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->height:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->quality:I

    return v0
.end method

.method public getQualityAlgorithm()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->qualityAlgorithm:I

    return v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->variant:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->width:I

    return v0
.end method
