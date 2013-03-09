.class public Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private direction:Z

.field private mCenterX:I

.field private mCenterY:I

.field private scaleFrome:F

.field private scaleTo:F

.field private transFrom:F

.field private transTo:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    invoke-virtual {p0, p0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 21
    return-void
.end method

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
    .line 28
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    .line 30
    iput p2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    .line 31
    iput p3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    .line 32
    iput p4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transTo:F

    .line 33
    iput p5, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterX:I

    .line 34
    iput p6, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterY:I

    .line 35
    iput-boolean p7, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->direction:Z

    .line 36
    int-to-long v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setDuration(J)V

    .line 37
    invoke-virtual {p0, p9}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillAfter(Z)V

    .line 38
    invoke-virtual {p0, p10}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillBefore(Z)V

    .line 40
    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    invoke-virtual {p0, p0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 63
    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->direction:Z

    if-nez v2, :cond_0

    .line 64
    const/high16 v2, 0x3f80

    sub-float p1, v2, p1

    .line 66
    :cond_0
    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 67
    .local v0, sx:F
    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 68
    .local v1, sy:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 69
    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transTo:F

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 70
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 75
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][DeleteAnimation][onAnimationEnd]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 81
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 86
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][DeleteAnimation][onAnimationStart]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setAttrAnimation(FFFFIIZIZZ)V
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
    .line 49
    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    .line 50
    iput p2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    .line 51
    iput p3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    .line 52
    iput p4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transTo:F

    .line 53
    iput p5, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterX:I

    .line 54
    iput p6, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterY:I

    .line 55
    iput-boolean p7, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->direction:Z

    .line 56
    int-to-long v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setDuration(J)V

    .line 57
    invoke-virtual {p0, p9}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillAfter(Z)V

    .line 58
    invoke-virtual {p0, p10}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillBefore(Z)V

    .line 59
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
