.class public Lcom/htc/weather/animations/compoundAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "compoundAlphaAnimation.java"


# instance fields
.field mDuration:J

.field private mDurs:[J

.field private mFromAlpha:[F

.field private mSeg_no:I

.field private mToAlpha:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 4
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 9
    iput v3, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    .line 22
    iput v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    .line 24
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    .line 25
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    .line 26
    iget-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    aput p1, v0, v3

    .line 27
    iget-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    aput p2, v0, v3

    .line 28
    iget-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    iget-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    aput-wide v1, v0, v3

    .line 29
    return-void
.end method

.method public constructor <init>(I[F[F)V
    .locals 1
    .parameter "n"
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    .line 40
    iput p1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    .line 41
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    .line 42
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    .line 43
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    .line 18
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 90
    iget v5, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    .line 91
    .local v5, n:I
    const-wide/16 v2, 0x0

    .line 92
    .local v2, dur:J
    iget-wide v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    long-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-long v6, v8

    .line 93
    .local v6, nNow:J
    iget-wide v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    long-to-float v8, v8

    cmpl-float v8, p1, v8

    if-lez v8, :cond_1

    .line 94
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 98
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v8, v8, v4

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 99
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v8, v8, v4

    sub-long/2addr v6, v8

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    :cond_2
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    aget v1, v8, v4

    .line 103
    .local v1, alpha:F
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v8, v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    aget v8, v8, v4

    cmpl-float v8, v1, v8

    if-nez v8, :cond_4

    .line 104
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    aget v8, v8, v4

    sub-float/2addr v8, v1

    long-to-float v9, v6

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v9, v9, v4

    long-to-float v9, v9

    div-float/2addr v8, v9

    add-float v0, v1, v8

    .line 107
    .local v0, a:F
    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_6

    const/4 v0, 0x0

    .line 109
    :cond_5
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0

    .line 108
    :cond_6
    const/high16 v8, 0x3f80

    cmpl-float v8, v0, v8

    if-lez v8, :cond_5

    const/high16 v0, 0x3f80

    goto :goto_2
.end method

.method public setDuration(J)V
    .locals 4
    .parameter "durationMillis"

    .prologue
    .line 47
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    iget v2, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    int-to-long v2, v2

    div-long v2, p1, v2

    aput-wide v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54
    return-void
.end method

.method public setDuration([J)V
    .locals 7
    .parameter "durationMillis"

    .prologue
    const-wide/16 v5, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 66
    iput-wide v5, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    iput-wide v5, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    if-ge v0, v1, :cond_3

    .line 71
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 72
    aget-wide v1, p1, v0

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    .line 79
    :goto_1
    iget-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    iget-object v3, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aput-wide v5, v1, v0

    goto :goto_1

    .line 82
    :cond_3
    iget-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    invoke-super {p0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method
