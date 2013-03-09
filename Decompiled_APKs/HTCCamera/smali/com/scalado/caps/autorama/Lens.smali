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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-ltz p11, :cond_0

    if-gez p12, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lens parameters out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/caps/autorama/Lens;->focalLength1:F

    iput p2, p0, Lcom/scalado/caps/autorama/Lens;->focalLength2:F

    iput p3, p0, Lcom/scalado/caps/autorama/Lens;->principalPoint1:F

    iput p4, p0, Lcom/scalado/caps/autorama/Lens;->principalPoint2:F

    iput p5, p0, Lcom/scalado/caps/autorama/Lens;->skew:F

    iput p6, p0, Lcom/scalado/caps/autorama/Lens;->distortion1:F

    iput p7, p0, Lcom/scalado/caps/autorama/Lens;->distortion2:F

    iput p8, p0, Lcom/scalado/caps/autorama/Lens;->distortion3:F

    iput p9, p0, Lcom/scalado/caps/autorama/Lens;->distortion4:F

    iput p10, p0, Lcom/scalado/caps/autorama/Lens;->distortion5:F

    iput p11, p0, Lcom/scalado/caps/autorama/Lens;->width:I

    iput p12, p0, Lcom/scalado/caps/autorama/Lens;->height:I

    return-void
.end method
