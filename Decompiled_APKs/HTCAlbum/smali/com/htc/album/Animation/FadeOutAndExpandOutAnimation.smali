.class public Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
.super Lcom/htc/album/Animation/MultiViewAnimationSet;
.source "FadeOutAndExpandOutAnimation.java"


# instance fields
.field private mTargetChildIdx:I

.field private mView:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;I)V
    .locals 6
    .parameter "v"
    .parameter "targetChildIdx"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 18
    iput p2, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mTargetChildIdx:I

    .line 20
    const/16 v2, 0xff

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAlphaAnimation(II)V

    .line 22
    iget-object v2, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    .line 23
    .local v1, startPos:Lcom/htc/sunny2/view/Vector3F;
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 24
    .local v0, endPos:Lcom/htc/sunny2/view/Vector3F;
    iget v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v3, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    const/high16 v5, -0x3c6a

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 27
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setFillAfter(Z)V

    .line 28
    const-wide/16 v2, 0x190

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setDuration(J)V

    .line 29
    sget-object v2, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 22

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 55
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Can\'t prepare the FadeOutAndExpandOutAnimation for null GridView"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 58
    :cond_0
    invoke-super/range {p0 .. p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->onStart()V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mTargetChildIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v7

    .line 62
    .local v7, folderView:Lcom/htc/sunny2/view/SView;
    instance-of v0, v7, Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object v10, v7

    .line 63
    check-cast v10, Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    .line 65
    .local v10, item:Lcom/htc/sunny2/widget/gridview/FolderViewItem;
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->getFolderItemCount()I

    move-result v11

    .line 66
    .local v11, nImageCount:I
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->getOriginalPosition()[Lcom/htc/sunny2/view/Vector3F;

    move-result-object v14

    .line 67
    .local v14, positions:[Lcom/htc/sunny2/view/Vector3F;
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->getOriginalRotation()[Lcom/htc/sunny2/view/Vector3F;

    move-result-object v15

    .line 68
    .local v15, rotations:[Lcom/htc/sunny2/view/Vector3F;
    if-eqz v14, :cond_1

    if-eqz v15, :cond_1

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v11, v0, :cond_2

    .line 113
    .end local v10           #item:Lcom/htc/sunny2/widget/gridview/FolderViewItem;
    .end local v11           #nImageCount:I
    .end local v14           #positions:[Lcom/htc/sunny2/view/Vector3F;
    .end local v15           #rotations:[Lcom/htc/sunny2/view/Vector3F;
    :cond_1
    :goto_0
    return-void

    .line 73
    .restart local v10       #item:Lcom/htc/sunny2/widget/gridview/FolderViewItem;
    .restart local v11       #nImageCount:I
    .restart local v14       #positions:[Lcom/htc/sunny2/view/Vector3F;
    .restart local v15       #rotations:[Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    array-length v0, v14

    move/from16 v18, v0

    array-length v0, v15

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 74
    .local v12, num:I
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 76
    const/16 v4, 0x12c

    .line 77
    .local v4, duration:I
    sget-object v9, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 83
    .local v9, intpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v11, :cond_3

    .line 88
    new-instance v3, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 89
    .local v3, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 90
    invoke-virtual {v3, v9}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 91
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 93
    aget-object v16, v14, v8

    .line 94
    .local v16, startPos:Lcom/htc/sunny2/view/Vector3F;
    sget-object v18, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_POSTION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    aget-object v13, v18, v8

    .line 95
    .local v13, off:Lcom/htc/sunny2/view/Vector3F;
    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    iget v0, v13, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    iget v0, v13, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v20, v0

    iget v0, v13, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    .line 98
    .local v5, endPos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 100
    aget-object v17, v15, v8

    .line 101
    .local v17, startRot:Lcom/htc/sunny2/view/Vector3F;
    sget-object v18, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_ROTATION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    aget-object v13, v18, v8

    .line 102
    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    iget v0, v13, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    iget v0, v13, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v20, v0

    iget v0, v13, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    .line 105
    .local v6, endRote:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 107
    invoke-virtual {v10, v8, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setupSpriteAnimation(ILcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 111
    .end local v3           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v5           #endPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v6           #endRote:Lcom/htc/sunny2/view/Vector3F;
    .end local v13           #off:Lcom/htc/sunny2/view/Vector3F;
    .end local v16           #startPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v17           #startRot:Lcom/htc/sunny2/view/Vector3F;
    :cond_3
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->startAnimation()V

    goto/16 :goto_0
.end method
