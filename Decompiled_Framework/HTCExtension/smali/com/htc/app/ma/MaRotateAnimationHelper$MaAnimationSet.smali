.class Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;
.super Landroid/view/animation/AnimationSet;
.source "MaRotateAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/ma/MaRotateAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaAnimationSet"
.end annotation


# instance fields
.field private mCustomOffset:J

.field private mHeight:I

.field private mTransformationCount:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mTransformationCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mCustomOffset:J

    iput p1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mWidth:I

    iput p2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mHeight:I

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mTransformationCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->getStartTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mCustomOffset:J

    :cond_0
    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mTransformationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mTransformationCount:I

    iget-wide v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mCustomOffset:J

    sub-long v0, p1, v0

    invoke-super {p0, v0, v1, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public initialize(IIII)V
    .locals 4

    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mWidth:I

    iget v1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mHeight:I

    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mWidth:I

    iget v3, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;->mHeight:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-void
.end method
