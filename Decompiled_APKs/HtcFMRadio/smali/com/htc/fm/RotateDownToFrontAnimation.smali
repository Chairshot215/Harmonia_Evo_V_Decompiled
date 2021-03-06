.class public Lcom/htc/fm/RotateDownToFrontAnimation;
.super Landroid/view/animation/Animation;
.source "RotateDownToFrontAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mToDegrees:F

.field private final mbIsShowWhenEnd:Z

.field private final moffsetY:F


# direct methods
.method public constructor <init>(FFFFFZF)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "IsShowwhenEnd"
    .parameter "offsetY"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 43
    iput p1, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mFromDegrees:F

    .line 44
    iput p2, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mToDegrees:F

    .line 45
    iput p3, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCenterX:F

    .line 46
    iput p4, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCenterY:F

    .line 47
    iput p5, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mDepthZ:F

    .line 48
    iput p7, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->moffsetY:F

    .line 49
    iput-boolean p6, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mbIsShowWhenEnd:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 61
    iget v4, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mFromDegrees:F

    .line 62
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 64
    .local v3, degrees:F
    iget v1, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCenterX:F

    .line 65
    .local v1, centerX:F
    iget v2, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCenterY:F

    .line 66
    .local v2, centerY:F
    iget-object v0, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCamera:Landroid/graphics/Camera;

    .line 68
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 71
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-boolean v6, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mbIsShowWhenEnd:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 82
    iget v6, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCenterY:F

    neg-float v6, v6

    iget v7, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->moffsetY:F

    mul-float/2addr v6, v7

    sub-float v7, v9, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v6, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 87
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 90
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 92
    return-void

    .line 74
    :cond_0
    sub-float v6, v9, p1

    invoke-virtual {p2, v6}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 55
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/RotateDownToFrontAnimation;->mCamera:Landroid/graphics/Camera;

    .line 56
    return-void
.end method
