.class public Lcom/htc/dockmode/widget/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 44
    iput p1, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mFromDegrees:F

    .line 45
    iput p2, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mToDegrees:F

    .line 46
    iput p3, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mCenterX:F

    .line 47
    iput p4, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mCenterY:F

    .line 48
    iput p5, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mDepthZ:F

    .line 49
    iput-boolean p6, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mReverse:Z

    .line 50
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 61
    iget v4, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mFromDegrees:F

    .line 62
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 65
    .local v3, degrees:F
    iget v1, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mCenterX:F

    .line 66
    .local v1, centerX:F
    iget v2, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mCenterY:F

    .line 67
    .local v2, centerY:F
    iget-object v0, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 69
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 71
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 77
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 81
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 82
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 56
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/widget/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 57
    return-void
.end method
