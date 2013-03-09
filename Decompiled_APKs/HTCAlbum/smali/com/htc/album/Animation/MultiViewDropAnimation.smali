.class public Lcom/htc/album/Animation/MultiViewDropAnimation;
.super Lcom/htc/album/Animation/MultiViewAnimationSet;
.source "MultiViewDropAnimation.java"


# instance fields
.field private mView:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 15
    return-void
.end method

.method private createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 9
    .parameter "view"
    .parameter "delayTime"

    .prologue
    const/4 v8, 0x0

    .line 41
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 43
    .local v1, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 44
    .local v2, pos:Lcom/htc/sunny2/view/Vector3F;
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    iget v4, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    const/high16 v7, 0x4316

    add-float/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 46
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getAlpha()F

    move-result v0

    .line 47
    .local v0, alpha:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v8, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 49
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 51
    invoke-virtual {v1, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 52
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 53
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 54
    invoke-virtual {v1, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 18
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-nez v5, :cond_0

    .line 19
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Can\'t prepare the ExpandOutAnimation for null GridView"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 22
    :cond_0
    invoke-super {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->onStart()V

    .line 24
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 25
    .local v4, start:I
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    .line 26
    .local v3, last:I
    if-eq v4, v6, :cond_1

    if-ne v3, v6, :cond_4

    .line 27
    :cond_1
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v5, :cond_2

    .line 28
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v5}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewDropAnimation;->reset()V

    .line 38
    :cond_3
    return-void

    .line 33
    :cond_4
    move v2, v4

    .local v2, i:I
    const/4 v1, 0x0

    .local v1, delayTime:I
    :goto_0
    add-int/lit8 v5, v3, 0x1

    if-ge v2, v5, :cond_3

    .line 34
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    sub-int v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 35
    .local v0, child:Lcom/htc/sunny2/view/SView;
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewDropAnimation;->mSViewList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/htc/album/Animation/MultiViewDropAnimation;->createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x64

    goto :goto_0
.end method
