.class public final Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
.super Ljava/lang/Object;
.source "SimpleStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/stroke/SimpleStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VOPoint"
.end annotation


# instance fields
.field public d:D

.field public p:F

.field public ux:F

.field public uy:F

.field public x:F

.field public x1:F

.field public x2:F

.field public y:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iput p2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iput p3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->d:D

    iput-wide v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->d:D

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    return-void
.end method

.method public static final computeDistance(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 7

    iget v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v6, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float v3, v5, v6

    iget v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v6, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float v4, v5, v6

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float v2, v5, v6

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->d:D

    float-to-double v5, v3

    div-double/2addr v5, v0

    double-to-float v5, v5

    iput v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    float-to-double v5, v4

    div-double/2addr v5, v0

    double-to-float v5, v5

    iput v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    :cond_0
    return-void
.end method

.method public static distanceBetweenPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)F
    .locals 4

    iget v2, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float v0, v2, v3

    iget v2, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public equals(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)Z
    .locals 2

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
