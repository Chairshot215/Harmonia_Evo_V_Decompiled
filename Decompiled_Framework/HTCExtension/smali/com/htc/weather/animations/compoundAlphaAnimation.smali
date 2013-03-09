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

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v3, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    iput v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    iget-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    aput p1, v0, v3

    iget-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    aput p2, v0, v3

    iget-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    iget-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    aput-wide v1, v0, v3

    return-void
.end method

.method public constructor <init>(I[F[F)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    iput p1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12

    iget v5, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    const-wide/16 v2, 0x0

    iget-wide v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    long-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-long v6, v8

    iget-wide v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    long-to-float v8, v8

    cmpl-float v8, p1, v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v8, v8, v4

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v8, v8, v4

    sub-long/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mFromAlpha:[F

    aget v1, v8, v4

    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v8, v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mToAlpha:[F

    aget v8, v8, v4

    cmpl-float v8, v1, v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0

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

    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0

    :cond_6
    const/high16 v8, 0x3f80

    cmpl-float v8, v0, v8

    if-lez v8, :cond_5

    const/high16 v0, 0x3f80

    goto :goto_2
.end method

.method public setDuration(J)V
    .locals 4

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    iget v2, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    int-to-long v2, v2

    div-long v2, p1, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public setDuration([J)V
    .locals 7

    const-wide/16 v5, 0x0

    if-nez p1, :cond_0

    iput-wide v5, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-wide v5, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mSeg_no:I

    if-ge v0, v1, :cond_3

    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-wide v1, p1, v0

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation duration cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    :goto_1
    iget-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    iget-object v3, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDurs:[J

    aput-wide v5, v1, v0

    goto :goto_1

    :cond_3
    iget-wide v1, p0, Lcom/htc/weather/animations/compoundAlphaAnimation;->mDuration:J

    invoke-super {p0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
