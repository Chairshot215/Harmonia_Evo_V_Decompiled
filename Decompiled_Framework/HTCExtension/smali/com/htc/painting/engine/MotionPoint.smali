.class public Lcom/htc/painting/engine/MotionPoint;
.super Ljava/lang/Object;
.source "MotionPoint.java"


# instance fields
.field protected mActionAreaSize:F

.field protected mActionPressure:F

.field protected mDistance:F

.field protected mTimeOffset:J

.field protected mX:I

.field protected mY:I


# direct methods
.method public constructor <init>(IIFFFJ)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    iput p1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    iput p2, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    iput p3, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    iput p4, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    iput p5, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    iput-wide p6, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    return-void
.end method


# virtual methods
.method public getActionAreaSize()F
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    return v0
.end method

.method public getActionPressure()F
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    return v0
.end method

.method public getTimeOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [F

    iget v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    aget v1, v0, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    return-void
.end method
