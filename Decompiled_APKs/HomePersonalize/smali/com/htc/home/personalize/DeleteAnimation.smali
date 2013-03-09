.class public Lcom/htc/home/personalize/DeleteAnimation;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# instance fields
.field private direction:Z

.field private mCenterX:I

.field private mCenterY:I

.field private scaleFrome:F

.field private scaleTo:F

.field private transFrom:F

.field private transTo:F


# direct methods
.method public constructor <init>(FFFFIIZIZZ)V
    .locals 2
    .parameter "scaleFrom"
    .parameter "scaleTo"
    .parameter "transFrom"
    .parameter "transTo"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "directionIn"
    .parameter "duration"
    .parameter "fillBefore"
    .parameter "fillAfter"

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 14
    iput p1, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleFrome:F

    .line 15
    iput p2, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleTo:F

    .line 16
    iput p3, p0, Lcom/htc/home/personalize/DeleteAnimation;->transFrom:F

    .line 17
    iput p4, p0, Lcom/htc/home/personalize/DeleteAnimation;->transTo:F

    .line 18
    iput p5, p0, Lcom/htc/home/personalize/DeleteAnimation;->mCenterX:I

    .line 19
    iput p6, p0, Lcom/htc/home/personalize/DeleteAnimation;->mCenterY:I

    .line 20
    iput-boolean p7, p0, Lcom/htc/home/personalize/DeleteAnimation;->direction:Z

    .line 21
    int-to-long v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/DeleteAnimation;->setDuration(J)V

    .line 22
    invoke-virtual {p0, p9}, Lcom/htc/home/personalize/DeleteAnimation;->setFillAfter(Z)V

    .line 23
    invoke-virtual {p0, p10}, Lcom/htc/home/personalize/DeleteAnimation;->setFillBefore(Z)V

    .line 25
    new-instance v0, Lcom/htc/home/personalize/MyInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/MyInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/DeleteAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 30
    iget-boolean v2, p0, Lcom/htc/home/personalize/DeleteAnimation;->direction:Z

    if-nez v2, :cond_0

    .line 31
    const/high16 v2, 0x3f80

    sub-float p1, v2, p1

    .line 33
    :cond_0
    iget v2, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleFrome:F

    iget v3, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleTo:F

    iget v4, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleFrome:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 34
    .local v0, sx:F
    iget v2, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleFrome:F

    iget v3, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleTo:F

    iget v4, p0, Lcom/htc/home/personalize/DeleteAnimation;->scaleFrome:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 35
    .local v1, sy:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/DeleteAnimation;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/home/personalize/DeleteAnimation;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 36
    iget v2, p0, Lcom/htc/home/personalize/DeleteAnimation;->transFrom:F

    iget v3, p0, Lcom/htc/home/personalize/DeleteAnimation;->transTo:F

    iget v4, p0, Lcom/htc/home/personalize/DeleteAnimation;->transFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 37
    return-void
.end method
