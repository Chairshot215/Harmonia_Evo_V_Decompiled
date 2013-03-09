.class public Lcom/htc/album/Animation/MultiViewCollapsedAnimation;
.super Lcom/htc/album/Animation/MultiViewAnimationSet;
.source "MultiViewCollapsedAnimation.java"


# static fields
.field private static final mNearFirst:Z = true


# instance fields
.field private mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

.field private mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mStartPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mView:Lcom/htc/sunny2/widget/gridview/GridView;

.field private mXPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mYPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 4
    .parameter "v"
    .parameter "startPosition"

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;-><init>()V

    .line 16
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    .line 17
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    .line 27
    iput-object p1, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 28
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 30
    if-nez p2, :cond_0

    .line 31
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    goto :goto_0
.end method

.method private collapse()V
    .locals 15

    .prologue
    .line 140
    iget-object v12, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v12}, Ljava/util/TreeSet;->size()I

    move-result v10

    .line 141
    .local v10, xPosCount:I
    iget-object v12, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v12}, Ljava/util/TreeSet;->size()I

    move-result v11

    .line 143
    .local v11, yPosCount:I
    add-int v12, v10, v11

    add-int/lit8 v0, v12, -0x1

    .line 144
    .local v0, batchTime:I
    const-wide/16 v3, 0x0

    .line 145
    .local v3, delayTimeUnit:J
    const/4 v12, 0x1

    if-le v0, v12, :cond_0

    .line 146
    const/16 v12, 0x190

    add-int/lit8 v13, v0, -0x1

    div-int/2addr v12, v13

    int-to-long v3, v12

    .line 149
    :cond_0
    const/4 v8, 0x0

    .line 151
    .local v8, tempSView:Lcom/htc/sunny2/view/SView;
    iget-object v5, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 152
    .local v5, endPos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v12, 0x0

    iget v13, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_1

    .line 153
    const/high16 v12, -0x3d38

    iput v12, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 156
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v0, :cond_5

    .line 157
    int-to-long v12, v6

    mul-long v1, v12, v3

    .line 159
    .local v1, delayTime:J
    const/4 v9, 0x0

    .local v9, x:I
    :goto_1
    if-ge v9, v0, :cond_4

    sub-int v12, v6, v9

    if-ltz v12, :cond_4

    .line 160
    if-ge v9, v10, :cond_2

    sub-int v12, v6, v9

    if-lt v12, v11, :cond_3

    .line 159
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 165
    :cond_3
    iget-object v12, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    add-int/lit8 v13, v11, -0x1

    sub-int v14, v6, v9

    sub-int/2addr v13, v14

    aget-object v12, v12, v13

    add-int/lit8 v13, v10, -0x1

    sub-int/2addr v13, v9

    aget-object v8, v12, v13

    .line 169
    if-eqz v8, :cond_2

    .line 170
    invoke-virtual {v8}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v7

    .line 171
    .local v7, startPos:Lcom/htc/sunny2/view/Vector3F;
    invoke-direct {p0, v7, v5, v1, v2}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->exitGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;J)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2

    .line 156
    .end local v7           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 175
    .end local v1           #delayTime:J
    .end local v9           #x:I
    :cond_5
    return-void
.end method

.method private exitGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;J)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 4
    .parameter "startPos"
    .parameter "endPos"
    .parameter "delayTime"

    .prologue
    const/high16 v2, 0x3f80

    const v3, 0x3dcccccd

    .line 178
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 180
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 181
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 182
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 185
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 186
    invoke-virtual {v0, p3, p4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 187
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEIN_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 188
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 190
    return-object v0
.end method

.method private prepare()V
    .locals 21

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 57
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Can\'t prepare the ExpandOutAnimation for null GridView"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 60
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->clear()V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->clear()V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v9

    .line 64
    .local v9, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v6

    .line 65
    .local v6, last:I
    move v4, v9

    .local v4, i:I
    :goto_0
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    sub-int v19, v4, v9

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v2

    .line 67
    .local v2, child:Lcom/htc/sunny2/view/SView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mSViewList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .end local v2           #child:Lcom/htc/sunny2/view/SView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->size()I

    move-result v19

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    const-class v19, Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    .line 74
    const/4 v13, 0x0

    .line 75
    .local v13, xPosArray:[Ljava/lang/Float;
    const/16 v16, 0x0

    .line 77
    .local v16, yPosArray:[Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 83
    .local v7, originalStartPos:Lcom/htc/sunny2/view/Vector3F;
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    .line 115
    :cond_2
    :goto_1
    array-length v14, v13

    .line 116
    .local v14, xPosCount:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 117
    .local v17, yPosCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mSViewList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/view/SView;

    .line 118
    .local v3, childView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v3}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v8

    .line 120
    .local v8, pos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v10, 0x0

    .local v10, tempX:I
    const/4 v11, 0x0

    .line 122
    .local v11, tempY:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_3
    if-ge v12, v14, :cond_3

    .line 123
    aget-object v18, v13, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_8

    .line 124
    move v10, v12

    .line 129
    :cond_3
    const/4 v15, 0x0

    .local v15, y:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 130
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_9

    .line 131
    move v11, v15

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    aput-object v3, v18, v10

    goto :goto_2

    .line 92
    .end local v3           #childView:Lcom/htc/sunny2/view/SView;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #tempX:I
    .end local v11           #tempY:I
    .end local v12           #x:I
    .end local v14           #xPosCount:I
    .end local v15           #y:I
    .end local v17           #yPosCount:I
    :cond_5
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_6

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 101
    :cond_6
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_7

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 110
    :cond_7
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 122
    .restart local v3       #childView:Lcom/htc/sunny2/view/SView;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #pos:Lcom/htc/sunny2/view/Vector3F;
    .restart local v10       #tempX:I
    .restart local v11       #tempY:I
    .restart local v12       #x:I
    .restart local v14       #xPosCount:I
    .restart local v17       #yPosCount:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 129
    .restart local v15       #y:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 137
    .end local v3           #childView:Lcom/htc/sunny2/view/SView;
    .end local v8           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #tempX:I
    .end local v11           #tempY:I
    .end local v12           #x:I
    .end local v15           #y:I
    :cond_a
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 39
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 40
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 41
    .local v0, last:I
    if-eq v1, v3, :cond_0

    if-ne v0, v3, :cond_2

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->reset()V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-super {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->onStart()V

    .line 51
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->prepare()V

    .line 52
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->collapse()V

    goto :goto_0
.end method
