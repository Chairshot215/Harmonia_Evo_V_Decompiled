.class public Lcom/htc/customize/animation/my3dTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "my3dTranslateAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field mFromXDelta:F

.field mFromXType:I

.field mFromXValue:F

.field mFromYDelta:F

.field mFromYType:I

.field mFromYValue:F

.field mFromZDelta:F

.field mFromZType:I

.field mFromZValue:F

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

.field mToXDelta:F

.field mToXType:I

.field mToXValue:F

.field mToYDelta:F

.field mToYType:I

.field mToYValue:F

.field mToZDelta:F

.field mToZType:I

.field mToZValue:F

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"
    .parameter "fromZDelta"
    .parameter "toZDelta"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 440
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 441
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 443
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 444
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 446
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 447
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 449
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 450
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 452
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 453
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 455
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 456
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 465
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 466
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 467
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 468
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 469
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 470
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 54
    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 55
    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 56
    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 57
    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 58
    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 59
    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 61
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 62
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 63
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 64
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 65
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 66
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 68
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 69
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 70
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 71
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 72
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 73
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 74
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    .line 75
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    .line 76
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    .line 78
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 79
    return-void
.end method

.method public constructor <init>(FFFFFFFFFZ)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"
    .parameter "fromZDelta"
    .parameter "toZDelta"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "pivotZ"
    .parameter "reverse"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 440
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 441
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 443
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 444
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 446
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 447
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 449
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 450
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 452
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 453
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 455
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 456
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 465
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 466
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 467
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 468
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 469
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 470
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 110
    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 111
    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 112
    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 113
    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 114
    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 115
    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 117
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 118
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 119
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 120
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 121
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 122
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 124
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 125
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 126
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 127
    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 128
    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 129
    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 130
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    .line 131
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    .line 132
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    .line 134
    iput-boolean p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 135
    return-void
.end method

.method public constructor <init>(FFFFFFIFIFIFZ)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"
    .parameter "fromZDelta"
    .parameter "toZDelta"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"
    .parameter "pivotZType"
    .parameter "pivotZValue"
    .parameter "reverse"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 440
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 441
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 443
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 444
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 446
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 447
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 449
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 450
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 452
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 453
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 455
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 456
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 465
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 466
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 467
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 468
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 469
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 470
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 184
    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 185
    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 186
    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 187
    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 188
    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 189
    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 191
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 192
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 193
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 194
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 195
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 196
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 198
    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 199
    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 200
    iput p11, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 201
    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 202
    iput p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 203
    iput p12, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 205
    iput-boolean p13, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 206
    return-void
.end method

.method public constructor <init>(IFIFIFIFIFIFIFIFIFZ)V
    .locals 2
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"
    .parameter "fromZType"
    .parameter "fromZValue"
    .parameter "toZType"
    .parameter "toZValue"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"
    .parameter "pivotZType"
    .parameter "pivotZValue"
    .parameter "reverse"

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 440
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 441
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 443
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 444
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 446
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 447
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 449
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 450
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 452
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 453
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 455
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 456
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 465
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 466
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 467
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 468
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 469
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 470
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 353
    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 354
    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 355
    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 356
    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 357
    iput p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 358
    iput p12, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 360
    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 361
    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 362
    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 363
    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 364
    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 365
    iput p11, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 367
    iput p13, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 368
    move/from16 v0, p15

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 369
    move/from16 v0, p17

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 370
    move/from16 v0, p14

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 371
    move/from16 v0, p16

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 372
    move/from16 v0, p18

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 374
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 375
    return-void
.end method

.method public constructor <init>(IFIFIFIFIFIFZ)V
    .locals 2
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"
    .parameter "fromZType"
    .parameter "fromZValue"
    .parameter "toZType"
    .parameter "toZValue"
    .parameter "reverse"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 440
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 441
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 443
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 444
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 446
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 447
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 449
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 450
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 452
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 453
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 455
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 456
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 465
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 466
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 467
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 468
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 469
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 470
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 254
    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    .line 255
    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    .line 256
    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    .line 257
    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    .line 258
    iput p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    .line 259
    iput p12, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    .line 261
    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    .line 262
    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    .line 263
    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    .line 264
    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    .line 265
    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    .line 266
    iput p11, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    .line 268
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    .line 269
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    .line 270
    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    .line 271
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    .line 272
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    .line 273
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    .line 274
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    .line 275
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    .line 276
    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    .line 278
    iput-boolean p13, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 279
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v9, 0x0

    .line 379
    iget v2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    .line 380
    .local v2, dx:F
    iget v3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    .line 381
    .local v3, dy:F
    iget v4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    .line 382
    .local v4, dz:F
    iget-object v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 383
    .local v1, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 385
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-boolean v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    if-eqz v6, :cond_5

    const/high16 v6, 0x3f80

    sub-float v0, v6, p1

    .line 387
    .local v0, between:F
    :goto_0
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXDelta:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 388
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXDelta:F

    iget v8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v2, v6, v7

    .line 390
    :cond_0
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYDelta:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 391
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYDelta:F

    iget v8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v3, v6, v7

    .line 393
    :cond_1
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZDelta:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 394
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZDelta:F

    iget v8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v4, v6, v7

    .line 397
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 399
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 401
    invoke-virtual {v1, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 402
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 404
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_3

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_4

    .line 405
    :cond_3
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    neg-float v6, v6

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 406
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 409
    :cond_4
    return-void

    .end local v0           #between:F
    :cond_5
    move v0, p1

    .line 385
    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 414
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    .line 415
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXDelta:F

    .line 416
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    .line 417
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYDelta:F

    .line 418
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    .line 419
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZDelta:F

    .line 421
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    .line 422
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    .line 423
    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    .line 424
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 431
    return-void
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    .line 438
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
