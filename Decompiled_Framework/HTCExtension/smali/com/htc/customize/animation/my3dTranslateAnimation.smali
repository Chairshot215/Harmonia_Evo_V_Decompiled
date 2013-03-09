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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    return-void
.end method

.method public constructor <init>(FFFFFFFFFZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    iput-boolean p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    return-void
.end method

.method public constructor <init>(FFFFFFIFIFIFZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput p11, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput p12, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput-boolean p13, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    return-void
.end method

.method public constructor <init>(IFIFIFIFIFIFIFIFIFZ)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput p12, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput p11, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput p13, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    move/from16 v0, p15

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    move/from16 v0, p17

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    move/from16 v0, p14

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    move/from16 v0, p16

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    move/from16 v0, p18

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    return-void
.end method

.method public constructor <init>(IFIFIFIFIFIFZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput p2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    iput p4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    iput p6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    iput p8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    iput p10, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    iput p12, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    iput p1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iput p3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iput p5, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iput p7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iput p9, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iput p11, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iput v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZType:I

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    iput-boolean p13, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    const/4 v9, 0x0

    iget v2, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    iget v3, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    iget v4, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    iget-object v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    if-eqz v6, :cond_5

    const/high16 v6, 0x3f80

    sub-float v0, v6, p1

    :goto_0
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXDelta:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXDelta:F

    iget v8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v2, v6, v7

    :cond_0
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYDelta:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYDelta:F

    iget v8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v3, v6, v7

    :cond_1
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZDelta:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZDelta:F

    iget v8, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v4, v6, v7

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v1, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_3

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_4

    :cond_3
    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    neg-float v6, v6

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v6, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    iget v7, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    return-void

    :cond_5
    move v0, p1

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromXDelta:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToXDelta:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromYDelta:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToYDelta:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mFromZDelta:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mToZDelta:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotX:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYType:I

    iget v1, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/htc/customize/animation/my3dTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotY:F

    iget v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZValue:F

    iput v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mPivotZ:F

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method

.method public reverse()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/customize/animation/my3dTranslateAnimation;->mReverse:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
