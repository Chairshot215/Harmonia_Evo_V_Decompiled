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
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "touchSize"
    .parameter "distance"
    .parameter "timeOffset"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    .line 8
    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    .line 9
    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    .line 10
    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    .line 11
    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    .line 29
    iput p1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    .line 30
    iput p2, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    .line 31
    iput p3, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    .line 32
    iput p4, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    .line 33
    iput p5, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    .line 34
    iput-wide p6, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    .line 35
    return-void
.end method


# virtual methods
.method public getActionAreaSize()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    return v0
.end method

.method public getActionPressure()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    return v0
.end method

.method public getTimeOffset()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4
    .parameter "m"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 93
    .local v0, point:[F
    iget v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 94
    iget v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 95
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 96
    aget v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    .line 97
    aget v1, v0, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    .line 98
    return-void
.end method
