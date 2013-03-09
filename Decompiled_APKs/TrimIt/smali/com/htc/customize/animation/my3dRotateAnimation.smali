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

    .prologue
    .line 395
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
    .parameter "fromDegreesX"
    .parameter "toDegreesX"
    .parameter "fromDegreesY"
    .parameter "toDegreesY"
    .parameter "fromDegreesZ"
    .parameter "toDegreesZ"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    .line 369
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 370
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 371
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 372
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 373
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 374
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 380
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 54
    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    .line 55
    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    .line 56
    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    .line 57
    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    .line 58
    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    .line 59
    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    .line 61
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 63
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 64
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 65
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 66
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 67
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 68
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 69
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    .line 70
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    .line 71
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    .line 72
    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 2
    .parameter "fromDegreesX"
    .parameter "toDegreesX"
    .parameter "fromDegreesY"
    .parameter "toDegreesY"
    .parameter "fromDegreesZ"
    .parameter "toDegreesZ"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "pivotZ"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    .line 369
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 370
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 371
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 372
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 373
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 374
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 380
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 110
    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    .line 111
    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    .line 112
    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    .line 113
    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    .line 114
    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    .line 115
    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    .line 117
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 119
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 120
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 121
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 122
    iput p7, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 123
    iput p8, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 124
    iput p9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 125
    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    .line 126
    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    .line 127
    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    .line 128
    return-void
.end method

.method public constructor <init>(FFFFFFIFIFIF)V
    .locals 2
    .parameter "fromDegreesX"
    .parameter "toDegreesX"
    .parameter "fromDegreesY"
    .parameter "toDegreesY"
    .parameter "fromDegreesZ"
    .parameter "toDegreesZ"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"
    .parameter "pivotZType"
    .parameter "pivotZValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    .line 369
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 370
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 371
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 372
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 373
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 374
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 380
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 183
    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    .line 184
    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    .line 185
    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    .line 186
    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    .line 187
    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    .line 188
    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    .line 190
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 192
    iput p8, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 193
    iput p7, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 194
    iput p10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 195
    iput p9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 196
    iput p12, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 197
    iput p11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 201
    return-void
.end method

.method public constructor <init>(FFFFFFIFIFIFI)V
    .locals 2
    .parameter "fromDegreesX"
    .parameter "toDegreesX"
    .parameter "fromDegreesY"
    .parameter "toDegreesY"
    .parameter "fromDegreesZ"
    .parameter "toDegreesZ"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"
    .parameter "pivotZType"
    .parameter "pivotZValue"
    .parameter "rotateSequence"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    .line 369
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 370
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 371
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 372
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 373
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 374
    iput v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 380
    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 259
    iput p1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    .line 260
    iput p2, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    .line 261
    iput p3, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    .line 262
    iput p4, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    .line 263
    iput p5, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    .line 264
    iput p6, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    .line 266
    iput p8, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    .line 267
    iput p7, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    .line 268
    iput p10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    .line 269
    iput p9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    .line 270
    iput p12, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    .line 271
    iput p11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZType:I

    .line 273
    iput p13, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    .line 274
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v12, 0x0

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, degreesX:F
    const/4 v3, 0x0

    .line 280
    .local v3, degreesY:F
    const/4 v4, 0x0

    .line 282
    .local v4, degreesZ:F
    iget-boolean v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    if-eqz v9, :cond_1

    const/high16 v9, 0x3f80

    sub-float v0, v9, p1

    .line 284
    .local v0, between:F
    :goto_0
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesX:F

    iget v11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesX:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v2, v9, v10

    .line 287
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesY:F

    iget v11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesY:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v3, v9, v10

    .line 290
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mToDegreesZ:F

    iget v11, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mFromDegreesZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v4, v9, v10

    .line 294
    iget-object v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 295
    .local v1, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 299
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 301
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    neg-float v9, v9

    invoke-virtual {v1, v12, v12, v9}, Landroid/graphics/Camera;->translate(FFF)V

    .line 304
    sget-object v9, Lcom/htc/customize/animation/my3dRotateAnimation;->seq_table:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mRotateSequence:I

    aget-object v8, v9, v10

    .line 306
    .local v8, str:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 307
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v7, v9, -0x30

    .line 308
    .local v7, nAxis:I
    if-nez v7, :cond_2

    .line 309
    cmpl-float v9, v2, v12

    if-eqz v9, :cond_0

    .line 310
    neg-float v9, v2

    invoke-virtual {v1, v9}, Landroid/graphics/Camera;->rotateX(F)V

    .line 306
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #between:F
    .end local v1           #camera:Landroid/graphics/Camera;
    .end local v5           #i:I
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v7           #nAxis:I
    .end local v8           #str:Ljava/lang/String;
    :cond_1
    move v0, p1

    .line 282
    goto :goto_0

    .line 313
    .restart local v0       #between:F
    .restart local v1       #camera:Landroid/graphics/Camera;
    .restart local v5       #i:I
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v7       #nAxis:I
    .restart local v8       #str:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 314
    cmpl-float v9, v3, v12

    if-eqz v9, :cond_0

    .line 315
    invoke-virtual {v1, v3}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_2

    .line 319
    :cond_3
    cmpl-float v9, v4, v12

    if-eqz v9, :cond_0

    .line 320
    neg-float v9, v4

    invoke-virtual {v1, v9}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_2

    .line 326
    .end local v7           #nAxis:I
    :cond_4
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_5

    .line 327
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    invoke-virtual {v1, v12, v12, v9}, Landroid/graphics/Camera;->translate(FFF)V

    .line 330
    :cond_5
    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 331
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 333
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_6

    .line 334
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    neg-float v9, v9

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    neg-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 335
    iget v9, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    iget v10, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 339
    :cond_6
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 345
    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dRotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotX:F

    .line 346
    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dRotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotY:F

    .line 347
    iget v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mPivotZ:F

    .line 350
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 353
    return-void
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dRotateAnimation;->mReverse:Z

    .line 360
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
