.class public final Lcom/scalado/caps/autorama/Lens;
.super Ljava/lang/Object;
.source "Lens.java"


# instance fields
.field private distortion1:F

.field private distortion2:F

.field private distortion3:F

.field private distortion4:F

.field private distortion5:F

.field private focalLength1:F

.field private focalLength2:F

.field private height:I

.field private principalPoint1:F

.field private principalPoint2:F

.field private skew:F

.field private width:I


# direct methods
.method public constructor <init>(FFFFFFFFFFII)V
    .locals 2
    .parameter "focalLength1"
    .parameter "focalLength2"
    .parameter "principalPoint1"
    .parameter "principalPoint2"
    .parameter "skew"
    .parameter "distortion1"
    .parameter "distortion2"
    .parameter "distortion3"
    .parameter "distortion4"
    .parameter "distortion5"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-ltz p11, :cond_0

    if-gez p12, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lens parameters out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput p1, p0, Lcom/scalado/caps/autorama/Lens;->focalLength1:F

    .line 94
    iput p2, p0, Lcom/scalado/caps/autorama/Lens;->focalLength2:F

    .line 95
    iput p3, p0, Lcom/scalado/caps/autorama/Lens;->principalPoint1:F

    .line 96
    iput p4, p0, Lcom/scalado/caps/autorama/Lens;->principalPoint2:F

    .line 97
    iput p5, p0, Lcom/scalado/caps/autorama/Lens;->skew:F

    .line 98
    iput p6, p0, Lcom/scalado/caps/autorama/Lens;->distortion1:F

    .line 99
    iput p7, p0, Lcom/scalado/caps/autorama/Lens;->distortion2:F

    .line 100
    iput p8, p0, Lcom/scalado/caps/autorama/Lens;->distortion3:F

    .line 101
    iput p9, p0, Lcom/scalado/caps/autorama/Lens;->distortion4:F

    .line 102
    iput p10, p0, Lcom/scalado/caps/autorama/Lens;->distortion5:F

    .line 103
    iput p11, p0, Lcom/scalado/caps/autorama/Lens;->width:I

    .line 104
    iput p12, p0, Lcom/scalado/caps/autorama/Lens;->height:I

    .line 105
    return-void
.end method
