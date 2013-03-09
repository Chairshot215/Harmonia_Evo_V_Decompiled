.class public Lcom/htc/fusion/Point3F;
.super Ljava/lang/Object;
.source "Point3F.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/fusion/Point3F;->x:F

    iput p2, p0, Lcom/htc/fusion/Point3F;->y:F

    iput p3, p0, Lcom/htc/fusion/Point3F;->z:F

    return-void
.end method

.method public static length(FFF)F
    .locals 2

    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final equals(FFF)Z
    .locals 1

    iget v0, p0, Lcom/htc/fusion/Point3F;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/fusion/Point3F;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/fusion/Point3F;->z:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final length()F
    .locals 3

    iget v0, p0, Lcom/htc/fusion/Point3F;->x:F

    iget v1, p0, Lcom/htc/fusion/Point3F;->y:F

    iget v2, p0, Lcom/htc/fusion/Point3F;->z:F

    invoke-static {v0, v1, v2}, Lcom/htc/fusion/Point3F;->length(FFF)F

    move-result v0

    return v0
.end method

.method public final negate()V
    .locals 1

    iget v0, p0, Lcom/htc/fusion/Point3F;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/fusion/Point3F;->x:F

    iget v0, p0, Lcom/htc/fusion/Point3F;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/fusion/Point3F;->y:F

    iget v0, p0, Lcom/htc/fusion/Point3F;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/fusion/Point3F;->z:F

    return-void
.end method

.method public final offset(FFF)V
    .locals 1

    iget v0, p0, Lcom/htc/fusion/Point3F;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/fusion/Point3F;->x:F

    iget v0, p0, Lcom/htc/fusion/Point3F;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/fusion/Point3F;->y:F

    iget v0, p0, Lcom/htc/fusion/Point3F;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/htc/fusion/Point3F;->z:F

    return-void
.end method

.method public final set(FFF)V
    .locals 0

    iput p1, p0, Lcom/htc/fusion/Point3F;->x:F

    iput p2, p0, Lcom/htc/fusion/Point3F;->y:F

    iput p3, p0, Lcom/htc/fusion/Point3F;->z:F

    return-void
.end method

.method public final set(Lcom/htc/fusion/Point3F;)V
    .locals 1

    iget v0, p1, Lcom/htc/fusion/Point3F;->x:F

    iput v0, p0, Lcom/htc/fusion/Point3F;->x:F

    iget v0, p1, Lcom/htc/fusion/Point3F;->y:F

    iput v0, p0, Lcom/htc/fusion/Point3F;->y:F

    iget v0, p1, Lcom/htc/fusion/Point3F;->z:F

    iput v0, p0, Lcom/htc/fusion/Point3F;->z:F

    return-void
.end method
