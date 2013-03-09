.class public Lcom/htc/album/Animation/ExpandingAnimation;
.super Ljava/lang/Object;
.source "ExpandingAnimation.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandingAnimation"


# instance fields
.field private mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

.field private mAllGridSViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/view/SView;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationEndCount:I

.field private mAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field private mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mGridItemsDistanceMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/view/SView;",
            ">;"
        }
    .end annotation
.end field

.field private mNearFirst:Z

.field private mStartPosition:Lcom/htc/sunny2/view/Vector3F;

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
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    .line 27
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    .line 28
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    .line 30
    const/4 v0, 0x0

    check-cast v0, [[Lcom/htc/sunny2/view/SView;

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mNearFirst:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    .line 42
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v1, 0x4387

    const/high16 v2, -0x3c10

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 43
    return-void
.end method

.method private calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;
    .locals 8
    .parameter "startPos"
    .parameter "endPos"
    .parameter "divideBase"

    .prologue
    .line 432
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v3, v6, v7

    .line 433
    .local v3, xOffset:F
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 434
    .local v4, yOffset:F
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v5, v6, v7

    .line 438
    .local v5, zOffset:F
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 439
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float v0, v6, v3

    .line 445
    .local v0, newXstartPos:F
    :goto_0
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 446
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float v1, v6, v4

    .line 452
    .local v1, newYstartPos:F
    :goto_1
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 453
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    add-float v2, v6, v5

    .line 459
    .local v2, newZstartPos:F
    :goto_2
    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    return-object v6

    .line 442
    .end local v0           #newXstartPos:F
    .end local v1           #newYstartPos:F
    .end local v2           #newZstartPos:F
    :cond_0
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v0, v6, v3

    .restart local v0       #newXstartPos:F
    goto :goto_0

    .line 449
    :cond_1
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v1, v6, v4

    .restart local v1       #newYstartPos:F
    goto :goto_1

    .line 456
    :cond_2
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float v2, v6, v5

    .restart local v2       #newZstartPos:F
    goto :goto_2
.end method

.method private closeGridView(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 18
    .parameter "targetEndPos"

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->clear()V

    .line 298
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    .line 301
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunny2/view/SView;

    .line 303
    .local v14, tempSView:Lcom/htc/sunny2/view/SView;
    if-eqz v14, :cond_1

    .line 304
    invoke-virtual {v14}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v13

    .line 305
    .local v13, startPos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/htc/album/Animation/ExpandingAnimation;->viewDisplacement(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)I

    move-result v5

    .line 306
    .local v5, dist:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 307
    .local v6, distInteger:Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 308
    add-int/lit8 v5, v5, 0x1

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 311
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v5           #dist:I
    .end local v6           #distInteger:Ljava/lang/Integer;
    .end local v13           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const-string v15, "ExpandingAnimation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closeGridView, i = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", tempSView is null."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 318
    .end local v14           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_2
    const/4 v8, 0x3

    .line 319
    .local v8, groupMemberCount:I
    const/4 v12, 0x0

    .line 321
    .local v12, keyCount:I
    const-wide/16 v3, 0x0

    .line 322
    .local v3, delayTime:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 324
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 325
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 326
    .local v11, key:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunny2/view/SView;

    .line 328
    .restart local v14       #tempSView:Lcom/htc/sunny2/view/SView;
    if-eqz v14, :cond_3

    .line 329
    invoke-virtual {v14}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v13

    .line 330
    .restart local v13       #startPos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v7, p1

    .line 333
    .local v7, endPos:Lcom/htc/sunny2/view/Vector3F;
    div-int v2, v12, v8

    .line 334
    .local v2, delayStage:I
    mul-int/lit8 v15, v2, 0x64

    int-to-long v3, v15

    .line 336
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v3, v4}, Lcom/htc/album/Animation/ExpandingAnimation;->exitGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;J)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 338
    add-int/lit8 v12, v12, 0x1

    .line 339
    goto :goto_3

    .line 341
    .end local v2           #delayStage:I
    .end local v7           #endPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v13           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_3
    const-string v15, "ExpandingAnimation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closeGridView, key = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", tempSView is null."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 345
    .end local v11           #key:Ljava/lang/Object;
    .end local v14           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_4
    return-void
.end method

.method private closeGridView2(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 13
    .parameter "OriginalStartPos"

    .prologue
    .line 194
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 195
    :cond_0
    const-string v10, "ExpandingAnimation"

    const-string v11, "closeGridView2, mXPosSet.size()>0 || mYPosSet.size()>0, don\'t need to prepare Animation again."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    .line 203
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v8

    .line 204
    .local v8, xPosCount:I
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v9

    .line 206
    .local v9, yPosCount:I
    const-wide/16 v1, 0x0

    .line 207
    .local v1, delayTime:J
    add-int v10, v8, v9

    add-int/lit8 v0, v10, -0x1

    .line 208
    .local v0, batchTime:I
    const/4 v6, 0x0

    .line 210
    .local v6, tempSView:Lcom/htc/sunny2/view/SView;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_6

    .line 211
    const/4 v7, 0x0

    .local v7, x:I
    :goto_2
    if-ge v7, v0, :cond_5

    sub-int v10, v4, v7

    if-ltz v10, :cond_5

    .line 212
    if-ge v7, v8, :cond_1

    sub-int v10, v4, v7

    if-lt v10, v9, :cond_3

    .line 211
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 198
    .end local v0           #batchTime:I
    .end local v1           #delayTime:J
    .end local v4           #i:I
    .end local v6           #tempSView:Lcom/htc/sunny2/view/SView;
    .end local v7           #x:I
    .end local v8           #xPosCount:I
    .end local v9           #yPosCount:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/album/Animation/ExpandingAnimation;->prepareAnimation(Lcom/htc/sunny2/view/Vector3F;)V

    goto :goto_0

    .line 216
    .restart local v0       #batchTime:I
    .restart local v1       #delayTime:J
    .restart local v4       #i:I
    .restart local v6       #tempSView:Lcom/htc/sunny2/view/SView;
    .restart local v7       #x:I
    .restart local v8       #xPosCount:I
    .restart local v9       #yPosCount:I
    :cond_3
    iget-boolean v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mNearFirst:Z

    if-eqz v10, :cond_4

    .line 217
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    add-int/lit8 v11, v9, -0x1

    sub-int v12, v4, v7

    sub-int/2addr v11, v12

    aget-object v10, v10, v11

    add-int/lit8 v11, v8, -0x1

    sub-int/2addr v11, v7

    aget-object v6, v10, v11

    .line 221
    :goto_4
    if-eqz v6, :cond_1

    .line 222
    invoke-virtual {v6}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v5

    .line 223
    .local v5, startPos:Lcom/htc/sunny2/view/Vector3F;
    move-object v3, p1

    .line 224
    .local v3, endPos:Lcom/htc/sunny2/view/Vector3F;
    mul-int/lit8 v10, v4, 0x64

    int-to-long v1, v10

    .line 225
    invoke-direct {p0, v5, v3, v1, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->exitGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;J)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_3

    .line 219
    .end local v3           #endPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v5           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_4
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    sub-int v11, v4, v7

    aget-object v10, v10, v11

    aget-object v6, v10, v7

    goto :goto_4

    .line 210
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 229
    .end local v7           #x:I
    :cond_6
    return-void
.end method

.method private enterGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;FIJ)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 4
    .parameter "startPos"
    .parameter "endPos"
    .parameter "startScale"
    .parameter "startAplha"
    .parameter "delayTime"

    .prologue
    const/high16 v3, 0x3f80

    .line 471
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 473
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1, p3, p3, p3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 474
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 475
    const/16 v1, 0xff

    invoke-virtual {v0, p4, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 476
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 477
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 478
    invoke-virtual {v0, p5, p6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 479
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 481
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 483
    return-object v0
.end method

.method private exitGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;J)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 4
    .parameter "startPos"
    .parameter "endPos"
    .parameter "delayTime"

    .prologue
    const/high16 v2, 0x3f80

    const v3, 0x3e99999a

    .line 487
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 489
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 490
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 491
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 492
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 493
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 494
    invoke-virtual {v0, p3, p4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 495
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 496
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 498
    return-object v0
.end method

.method private expandGridView(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 20
    .parameter "OriginalStartPos"

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 351
    const-string v2, "ExpandingAnimation"

    const-string v18, "expandGridView, OriginalStartPos is null"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    return-void

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    .line 359
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/sunny2/view/SView;

    .line 362
    .local v17, tempSView:Lcom/htc/sunny2/view/SView;
    if-eqz v17, :cond_3

    .line 363
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 364
    .local v4, endPos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/album/Animation/ExpandingAnimation;->viewDisplacement(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)I

    move-result v10

    .line 365
    .local v10, dist:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 366
    .local v11, distInteger:Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v11}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    add-int/lit8 v10, v10, 0x1

    .line 368
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v4           #endPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #dist:I
    .end local v11           #distInteger:Ljava/lang/Integer;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 373
    :cond_3
    const-string v2, "ExpandingAnimation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expandGridView, i = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tempSView is null."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 377
    .end local v17           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_4
    const/4 v12, 0x3

    .line 378
    .local v12, groupMemberCount:I
    const/16 v16, 0x0

    .line 380
    .local v16, keyCount:I
    const-wide/16 v7, 0x0

    .line 381
    .local v7, delayTime:J
    const v5, 0x3dcccccd

    .line 382
    .local v5, startScale:F
    const/4 v6, 0x0

    .line 383
    .local v6, startAplha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 385
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 387
    .local v15, key:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/sunny2/view/SView;

    .line 389
    .restart local v17       #tempSView:Lcom/htc/sunny2/view/SView;
    if-eqz v17, :cond_9

    .line 391
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 393
    .restart local v4       #endPos:Lcom/htc/sunny2/view/Vector3F;
    add-int/lit8 v16, v16, 0x1

    .line 394
    const-wide/16 v7, 0xc8

    .line 397
    const/4 v2, 0x1

    move/from16 v0, v16

    if-gt v0, v2, :cond_5

    .line 399
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 400
    .local v3, startPos:Lcom/htc/sunny2/view/Vector3F;
    const/high16 v5, 0x3f00

    .line 401
    const/16 v6, 0x28

    .line 421
    :goto_4
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    move-object/from16 v2, p0

    .line 422
    invoke-direct/range {v2 .. v8}, Lcom/htc/album/Animation/ExpandingAnimation;->enterGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;FIJ)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_3

    .line 404
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v16

    if-gt v0, v2, :cond_6

    .line 406
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 407
    .restart local v3       #startPos:Lcom/htc/sunny2/view/Vector3F;
    const v5, 0x3ecccccd

    .line 408
    const/16 v6, 0x14

    .line 409
    const-wide/16 v18, 0x32

    add-long v7, v7, v18

    goto :goto_4

    .line 412
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_6
    move-object/from16 v3, p1

    .line 413
    .restart local v3       #startPos:Lcom/htc/sunny2/view/Vector3F;
    const v5, 0x3e99999a

    .line 414
    const/4 v6, 0x0

    .line 415
    div-int v18, v16, v12

    rem-int/lit8 v2, v16, 0x3

    if-lez v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    add-int v2, v2, v18

    add-int/lit8 v9, v2, -0x2

    .line 416
    .local v9, delayStage:I
    if-gez v9, :cond_7

    .line 417
    const/4 v9, 0x0

    .line 418
    :cond_7
    mul-int/lit8 v2, v9, 0x64

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    goto :goto_4

    .line 415
    .end local v9           #delayStage:I
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 425
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v4           #endPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_9
    const-string v2, "ExpandingAnimation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expandGridView, key = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tempSView is null."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private expandGridView2(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 18
    .parameter "OriginalStartPos"

    .prologue
    .line 232
    if-nez p1, :cond_1

    .line 234
    const-string v2, "ExpandingAnimation"

    const-string v16, "expandGridView2, OriginalStartPos is null"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return-void

    .line 238
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/Animation/ExpandingAnimation;->prepareAnimation(Lcom/htc/sunny2/view/Vector3F;)V

    .line 240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v14

    .line 243
    .local v14, xPosCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v15

    .line 245
    .local v15, yPosCount:I
    const-wide/16 v7, 0x0

    .line 246
    .local v7, delayTime:J
    const v5, 0x3dcccccd

    .line 247
    .local v5, startScale:F
    const/4 v6, 0x0

    .line 248
    .local v6, startAplha:I
    add-int v2, v14, v15

    add-int/lit8 v9, v2, -0x1

    .line 249
    .local v9, batchTime:I
    const/4 v12, 0x0

    .line 251
    .local v12, tempSView:Lcom/htc/sunny2/view/SView;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 252
    const/4 v13, 0x0

    .local v13, x:I
    :goto_1
    if-ge v13, v9, :cond_7

    sub-int v2, v11, v13

    if-ltz v2, :cond_7

    .line 253
    if-ge v13, v14, :cond_2

    sub-int v2, v11, v13

    if-lt v2, v15, :cond_3

    .line 252
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 256
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    sub-int v16, v11, v13

    aget-object v2, v2, v16

    aget-object v12, v2, v13

    .line 258
    if-eqz v12, :cond_2

    .line 260
    invoke-virtual {v12}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 262
    .local v4, endPos:Lcom/htc/sunny2/view/Vector3F;
    const-wide/16 v7, 0xc8

    .line 265
    if-nez v11, :cond_4

    .line 266
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 267
    .local v3, startPos:Lcom/htc/sunny2/view/Vector3F;
    const/high16 v5, 0x3f00

    .line 268
    const/16 v6, 0x28

    .line 287
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    move-object/from16 v2, p0

    .line 288
    invoke-direct/range {v2 .. v8}, Lcom/htc/album/Animation/ExpandingAnimation;->enterGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;FIJ)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2

    .line 271
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_4
    const/4 v2, 0x1

    if-ne v11, v2, :cond_5

    .line 272
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 273
    .restart local v3       #startPos:Lcom/htc/sunny2/view/Vector3F;
    const v5, 0x3ecccccd

    .line 274
    const/16 v6, 0x14

    .line 275
    const-wide/16 v16, 0x32

    add-long v7, v7, v16

    goto :goto_3

    .line 278
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_5
    move-object/from16 v3, p1

    .line 279
    .restart local v3       #startPos:Lcom/htc/sunny2/view/Vector3F;
    const v5, 0x3e99999a

    .line 280
    const/4 v6, 0x0

    .line 281
    add-int/lit8 v10, v11, -0x1

    .line 282
    .local v10, delayStage:I
    if-gez v10, :cond_6

    .line 283
    const/4 v10, 0x0

    .line 284
    :cond_6
    mul-int/lit8 v2, v10, 0x64

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v7, v7, v16

    goto :goto_3

    .line 251
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v4           #endPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #delayStage:I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private prepareAnimation(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 14
    .parameter "OriginalStartPos"

    .prologue
    const/4 v13, 0x0

    .line 118
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->clear()V

    .line 119
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->clear()V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 123
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 124
    .local v1, tempSView:Lcom/htc/sunny2/view/SView;
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-instance v11, Ljava/lang/Float;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v12

    iget v12, v12, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    new-instance v11, Ljava/lang/Float;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v12

    iget v12, v12, Lcom/htc/sunny2/view/Vector3F;->mY:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_0
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v11

    filled-new-array {v10, v11}, [I

    move-result-object v10

    const-class v11, Lcom/htc/sunny2/view/SView;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/htc/sunny2/view/SView;

    iput-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    .line 130
    const/4 v5, 0x0

    .line 131
    .local v5, xPosArray:[Ljava/lang/Float;
    const/4 v8, 0x0

    .line 138
    .local v8, yPosArray:[Ljava/lang/Float;
    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    .line 139
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    .line 140
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    .line 170
    :cond_1
    :goto_1
    array-length v6, v5

    .line 171
    .local v6, xPosCount:I
    array-length v9, v8

    .line 172
    .local v9, yPosCount:I
    const/4 v0, 0x0

    :goto_2
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_9

    .line 173
    const/4 v2, 0x0

    .local v2, tempX:I
    const/4 v3, 0x0

    .line 174
    .local v3, tempY:I
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 175
    .restart local v1       #tempSView:Lcom/htc/sunny2/view/SView;
    const/4 v4, 0x0

    .local v4, x:I
    :goto_3
    if-ge v4, v6, :cond_2

    .line 176
    aget-object v10, v5, v4

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v11

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_7

    .line 177
    move v2, v4

    .line 182
    :cond_2
    const/4 v7, 0x0

    .local v7, y:I
    :goto_4
    if-ge v7, v9, :cond_3

    .line 183
    aget-object v10, v8, v7

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v11

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_8

    .line 184
    move v3, v7

    .line 188
    :cond_3
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    aget-object v10, v10, v3

    aput-object v1, v10, v2

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    .end local v1           #tempSView:Lcom/htc/sunny2/view/SView;
    .end local v2           #tempX:I
    .end local v3           #tempY:I
    .end local v4           #x:I
    .end local v6           #xPosCount:I
    .end local v7           #y:I
    .end local v9           #yPosCount:I
    :cond_4
    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 148
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    .line 149
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    goto :goto_1

    .line 156
    :cond_5
    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 157
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    .line 158
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 165
    :cond_6
    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    iget v10, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    iget v11, v11, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 166
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    .line 167
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 175
    .restart local v1       #tempSView:Lcom/htc/sunny2/view/SView;
    .restart local v2       #tempX:I
    .restart local v3       #tempY:I
    .restart local v4       #x:I
    .restart local v6       #xPosCount:I
    .restart local v9       #yPosCount:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 182
    .restart local v7       #y:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 190
    .end local v1           #tempSView:Lcom/htc/sunny2/view/SView;
    .end local v2           #tempX:I
    .end local v3           #tempY:I
    .end local v4           #x:I
    .end local v7           #y:I
    :cond_9
    return-void
.end method

.method private viewDisplacement(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)I
    .locals 7
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, distance:I
    iget v5, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v1, v5

    .line 465
    .local v1, xDist:D
    iget v5, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v3, v5

    .line 466
    .local v3, yDist:D
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-int v0, v5

    .line 467
    return v0
.end method


# virtual methods
.method public addSView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "sView"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addSView(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/htc/sunny2/view/SView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, sViewList:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/htc/sunny2/view/SView;>;"
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 98
    .local v1, tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->cancelAnimation()V

    goto :goto_0

    .line 100
    .end local v1           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/Animation/ExpandingAnimation;->clear()V

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 115
    :cond_3
    return-void
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "ExpandingAnimation"

    const-string v1, "fadeIn, mStartPosition is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {p0, v0}, Lcom/htc/album/Animation/ExpandingAnimation;->expandGridView2(Lcom/htc/sunny2/view/Vector3F;)V

    goto :goto_0
.end method

.method public fadeOut()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "ExpandingAnimation"

    const-string v1, "fadeOut, mStartPosition is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {p0, v0}, Lcom/htc/album/Animation/ExpandingAnimation;->closeGridView2(Lcom/htc/sunny2/view/Vector3F;)V

    goto :goto_0
.end method

.method public getStartPosition()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    .line 518
    iget v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 521
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 512
    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 503
    return-void
.end method

.method public setCenterPosition(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 47
    return-void
.end method

.method public setStartPosition(Lcom/htc/sunny2/view/Vector3F;)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 51
    return-void
.end method
