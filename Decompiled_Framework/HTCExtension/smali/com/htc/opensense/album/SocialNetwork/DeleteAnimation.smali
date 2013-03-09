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

    const-class v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public constructor <init>(FFFFIIZIZZ)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    iput p2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    iput p3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    iput p4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transTo:F

    iput p5, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterX:I

    iput p6, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterY:I

    iput-boolean p7, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->direction:Z

    int-to-long v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setDuration(J)V

    invoke-virtual {p0, p9}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, p10}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillBefore(Z)V

    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p0}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->direction:Z

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    sub-float p1, v2, p1

    :cond_0
    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transTo:F

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][DeleteAnimation][onAnimationEnd]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][DeleteAnimation][onAnimationStart]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttrAnimation(FFFFIIZIZZ)V
    .locals 2

    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleFrome:F

    iput p2, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->scaleTo:F

    iput p3, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transFrom:F

    iput p4, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->transTo:F

    iput p5, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterX:I

    iput p6, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->mCenterY:I

    iput-boolean p7, p0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->direction:Z

    int-to-long v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setDuration(J)V

    invoke-virtual {p0, p9}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, p10}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;->setFillBefore(Z)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
