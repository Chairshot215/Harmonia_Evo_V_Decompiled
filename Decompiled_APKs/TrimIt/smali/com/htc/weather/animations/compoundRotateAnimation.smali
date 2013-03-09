.class public Lcom/htc/weather/animations/compoundRotateAnimation;
.super Landroid/view/animation/Animation;
.source "compoundRotateAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field mDuration:J

.field private mDurs:[J

.field private mFromDegree:[F

.field private mPivotType:[I

.field private mPivotValue:[F

.field private mPivotX:[F

.field private mPivotY:[F

.field private mSeg_no:I

.field private mToDegree:[F


# direct methods
.method public constructor <init>(FFFFIF)V
    .locals 4
    .parameter "fromDegree"
    .parameter "toDegree"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "pivotType"
    .parameter "pivotValue"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    iput v3, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    .line 31
    iput v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mFromDegree:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mToDegree:[F

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotType:[I

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotValue:[F

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotX:[F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotY:[F

    .line 38
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    .line 39
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mFromDegree:[F

    aput p1, v0, v3

    .line 40
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mToDegree:[F

    aput p2, v0, v3

    .line 41
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotType:[I

    aput p5, v0, v3

    .line 42
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotValue:[F

    aput p6, v0, v3

    .line 43
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotX:[F

    aput p3, v0, v3

    .line 44
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotY:[F

    aput p4, v0, v3

    .line 45
    iget-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    iget-wide v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    aput-wide v1, v0, v3

    .line 46
    return-void
.end method

.method public constructor <init>(I[F[F[F[F[I[F)V
    .locals 1
    .parameter "n"
    .parameter "fromDegree"
    .parameter "toDegree"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "pivotType"
    .parameter "pivotValue"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    .line 59
    iput p1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    .line 60
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mFromDegree:[F

    .line 61
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mToDegree:[F

    .line 63
    if-nez p6, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotType:[I

    .line 68
    :goto_0
    if-nez p7, :cond_1

    .line 69
    const/4 p7, 0x0

    .line 73
    :goto_1
    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotX:[F

    .line 74
    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotY:[F

    .line 75
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    .line 76
    return-void

    .line 66
    :cond_0
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotType:[I

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p7}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotValue:[F

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    .line 25
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v11, 0x0

    .line 122
    iget v4, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    .line 123
    .local v4, n:I
    const-wide/16 v1, 0x0

    .line 124
    .local v1, dur:J
    iget-wide v7, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    long-to-float v7, v7

    mul-float/2addr v7, p1

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-long v5, v7

    .line 125
    .local v5, nNow:J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 126
    iget-object v7, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    aget-wide v7, v7, v3

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 127
    iget-object v7, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    aget-wide v7, v7, v3

    sub-long/2addr v5, v7

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v7, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mFromDegree:[F

    aget v7, v7, v3

    iget-object v8, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mToDegree:[F

    aget v8, v8, v3

    iget-object v9, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mFromDegree:[F

    aget v9, v9, v3

    sub-float/2addr v8, v9

    long-to-float v9, v5

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    aget-wide v9, v9, v3

    long-to-float v9, v9

    div-float/2addr v8, v9

    add-float v0, v7, v8

    .line 132
    .local v0, degrees:F
    iget-object v7, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotX:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v11

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotY:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v11

    if-nez v7, :cond_2

    .line 133
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 140
    .end local v0           #degrees:F
    :cond_1
    :goto_1
    return-void

    .line 135
    .restart local v0       #degrees:F
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotX:[F

    aget v8, v8, v3

    iget-object v9, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mPivotY:[F

    aget v9, v9, v3

    invoke-virtual {v7, v0, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1
.end method

.method public setDuration(J)V
    .locals 4
    .parameter "durationMillis"

    .prologue
    .line 79
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    iget v2, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    int-to-long v2, v2

    div-long v2, p1, v2

    aput-wide v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    return-void
.end method

.method public setDuration([J)V
    .locals 7
    .parameter "durationMillis"

    .prologue
    const-wide/16 v5, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    iput-wide v5, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    iput-wide v5, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mSeg_no:I

    if-ge v0, v1, :cond_3

    .line 103
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 104
    aget-wide v1, p1, v0

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    .line 111
    :goto_1
    iget-wide v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    iget-object v3, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDurs:[J

    aput-wide v5, v1, v0

    goto :goto_1

    .line 114
    :cond_3
    iget-wide v1, p0, Lcom/htc/weather/animations/compoundRotateAnimation;->mDuration:J

    invoke-super {p0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 115
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method
