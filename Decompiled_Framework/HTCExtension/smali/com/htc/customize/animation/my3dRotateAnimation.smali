.class public Lcom/htc/customize/animation/my3dRotateAnimation;
.super Landroid/view/animation/Animation;
.source "my3dRotateAnimation.java"


# static fields
.field protected static final MY3DROTATE_AXIS_X:I = 0x0

.field protected static final MY3DROTATE_AXIS_Y:I = 0x1

.field protected static final MY3DROTATE_AXIS_Z:I = 0x2

.field public static final MY3DROTATE_BY_XYZ:I = 0x1

.field public static final MY3DROTATE_BY_XZY:I = 0x5

.field public static final MY3DROTATE_BY_YXZ:I = 0x0

.field public static final MY3DROTATE_BY_YZX:I = 0x4

.field public static final MY3DROTATE_BY_ZXY:I = 0x2

.field public static final MY3DROTATE_BY_ZYX:I = 0x3

.field protected static final seq_table:[Ljava/lang/String;


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field mFromDegreesX:F

.field mFromDegreesY:F

.field mFromDegreesZ:F

.field mPivotX:F

.field mPivotXType:I

.field mPivotXValue:F

.field mPivotY:F

.field mPivotYType:I

.field mPivotYValue:F

.field mPivotZ:F

.field mPivotZType:I

.field mPivotZValue:F

.field private mReverse:Z

.field protected mRotateSequence:I

.field mToDegreesX:F

.field mToDegreesY:F

.field mToDegreesZ:F

.field public sName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "102"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "012"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "201"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "210"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "120"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "021"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/customize/animation/my3dRotateAnimation;->seq_table:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput p7, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput p8, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput p9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    return-void
.end method

.method public constructor <init>(FFFFFFIFIFIF)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput p8, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput p7, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput p10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput p9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput p12, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput p11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    return-void
.end method

.method public constructor <init>(FFFFFFIFIFIFI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    iput p8, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput p7, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iput p10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    iput p9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iput p12, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput p11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    iput p13, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    if-eqz v9, :cond_1

    const/high16 v9, 0x3f80

    sub-float v0, v9, p1

    :goto_0
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    iget v11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v2, v9, v10

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    iget v11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v3, v9, v10

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    iget v11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v4, v9, v10

    iget-object v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    neg-float v9, v9

    invoke-virtual {v1, v12, v12, v9}, Landroid/graphics/Camera;->translate(FFF)V

    sget-object v9, Lcom/htc/customize/animation/my3dRotateAnimation;->seq_table:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    aget-object v8, v9, v10

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v7, v9, -0x30

    if-nez v7, :cond_2

    cmpl-float v9, v2, v12

    if-eqz v9, :cond_0

    neg-float v9, v2

    invoke-virtual {v1, v9}, Landroid/graphics/Camera;->rotateX(F)V

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    cmpl-float v9, v3, v12

    if-eqz v9, :cond_0

    invoke-virtual {v1, v3}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_2

    :cond_3
    cmpl-float v9, v4, v12

    if-eqz v9, :cond_0

    neg-float v9, v4

    invoke-virtual {v1, v9}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_2

    :cond_4
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    invoke-virtual {v1, v12, v12, v9}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_5
    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    neg-float v9, v9

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    neg-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_6
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dRotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dRotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method

.method public reverse()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
