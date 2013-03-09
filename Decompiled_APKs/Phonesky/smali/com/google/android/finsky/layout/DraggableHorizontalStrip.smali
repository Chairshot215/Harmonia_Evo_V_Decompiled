.class public abstract Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.super Landroid/view/ViewGroup;
.source "DraggableHorizontalStrip.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDeceleration:F

.field protected mIndexOfPressedChild:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mLayoutMargin:I

.field protected mOriginalPixelOffsetOfFirstChild:F

.field private mScrollAnimation:Landroid/animation/Animator;

.field private final mScrollThreshold:I

.field protected mTotalChildrenWidth:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mXDistanceScrolledSinceLastDown:F

.field private mYDistanceScrolledSinceLastDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attributeSet"
    .parameter "i"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 70
    .local v0, ppi:F
    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateScrollPosition(F)V

    return-void
.end method

.method private onTouchEventDone(FFZ)V
    .locals 18
    .parameter "x"
    .parameter "velocity"
    .parameter "isCancel"

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->resetPressedState()V

    .line 173
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 176
    .local v2, absVelocity:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v15, v2, v15

    if-lez v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    .line 178
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 179
    .local v9, duration:F
    mul-float v15, v2, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    mul-float v16, v16, v9

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v14, v15, v16

    .line 181
    .local v14, totalDistance:F
    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_1

    const/4 v11, 0x1

    .line 182
    .local v11, movingToLeft:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollPosition()F

    move-result v16

    if-eqz v11, :cond_2

    neg-float v15, v14

    :goto_1
    add-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v12

    .line 186
    .local v12, offsetAtStop:F
    if-eqz v11, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v13

    .line 196
    .local v13, target:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float v15, v13, v15

    add-float/2addr v14, v15

    .line 198
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v15

    neg-float v0, v15

    move/from16 p2, v0

    .line 213
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 215
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 217
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    .line 256
    .end local v9           #duration:F
    .end local v11           #movingToLeft:Z
    .end local v12           #offsetAtStop:F
    .end local v13           #target:F
    .end local v14           #totalDistance:F
    :cond_0
    :goto_3
    return-void

    .line 181
    .restart local v9       #duration:F
    .restart local v14       #totalDistance:F
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11       #movingToLeft:Z
    :cond_2
    move v15, v14

    .line 182
    goto :goto_1

    .line 203
    .restart local v12       #offsetAtStop:F
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v13

    .line 209
    .restart local v13       #target:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 211
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p2

    goto :goto_2

    .line 222
    .end local v9           #duration:F
    .end local v11           #movingToLeft:Z
    .end local v12           #offsetAtStop:F
    .end local v13           #target:F
    .end local v14           #totalDistance:F
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_5

    if-nez p3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollX()I

    move-result v15

    int-to-float v15, v15

    add-float v15, v15, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventTriggeredTap(F)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 226
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    goto :goto_3

    .line 229
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollPosition()F

    move-result v16

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v5

    .line 233
    .local v5, currPos:F
    const/4 v14, 0x0

    .line 234
    .restart local v14       #totalDistance:F
    const/4 v4, 0x0

    .line 235
    .local v4, currLeft:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v15

    if-ge v10, v15, :cond_6

    .line 236
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 237
    .local v3, childView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v6, v4, v15

    .line 238
    .local v6, currRight:I
    int-to-float v15, v6

    cmpl-float v15, v15, v5

    if-ltz v15, :cond_8

    .line 239
    int-to-float v15, v4

    sub-float v7, v5, v15

    .line 240
    .local v7, distToLeftEdge:F
    int-to-float v15, v6

    sub-float v8, v15, v5

    .line 241
    .local v8, distToRightEdge:F
    cmpl-float v15, v8, v7

    if-lez v15, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v13

    .line 244
    .restart local v13       #target:F
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float v14, v5, v15

    .line 250
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #currRight:I
    .end local v7           #distToLeftEdge:F
    .end local v8           #distToRightEdge:F
    .end local v13           #target:F
    :cond_6
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 251
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 253
    .restart local v9       #duration:F
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-gez v15, :cond_9

    neg-float v15, v2

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    goto/16 :goto_3

    .line 241
    .end local v9           #duration:F
    .restart local v3       #childView:Landroid/view/View;
    .restart local v6       #currRight:I
    .restart local v7       #distToLeftEdge:F
    .restart local v8       #distToRightEdge:F
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v13

    goto :goto_5

    .line 247
    .end local v7           #distToLeftEdge:F
    .end local v8           #distToRightEdge:F
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLayoutMargin:I

    add-int v4, v6, v15

    .line 235
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .end local v3           #childView:Landroid/view/View;
    .end local v6           #currRight:I
    .restart local v9       #duration:F
    :cond_9
    move v15, v2

    .line 253
    goto :goto_6
.end method

.method private onTouchEventDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 132
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 133
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 134
    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    .line 135
    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->findViewIndexAtX(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 138
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->setPressedState()V

    .line 139
    return-void
.end method

.method private onTouchEventMove(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 142
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    sub-float v1, v3, p1

    .line 143
    .local v1, scrollX:F
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    sub-float v2, v3, p2

    .line 144
    .local v2, scrollY:F
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 145
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 147
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->findViewIndexAtX(F)I

    move-result v0

    .line 148
    .local v0, indexOfPressedChild:I
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-eq v0, v3, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->resetPressedState()V

    .line 150
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 153
    :cond_0
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    .line 154
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    .line 160
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 162
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestDisallowInterceptTouchEvent(Z)V

    .line 165
    :cond_1
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollPosition()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateScrollPosition(F)V

    .line 169
    :cond_2
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-ltz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method private setPressedState()V
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-ltz v0, :cond_0

    .line 127
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method private updateScrollPosition(F)V
    .locals 2
    .parameter "targetValue"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->limitScrollPosition(F)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->scrollTo(II)V

    .line 292
    return-void
.end method


# virtual methods
.method protected clampToTotalStripWidth(F)F
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 107
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move v0, p1

    .line 116
    .end local p1
    .local v0, value:F
    :goto_0
    return v0

    .line 110
    .end local v0           #value:F
    .restart local p1
    :cond_0
    :goto_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 111
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 113
    :cond_1
    :goto_2
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 114
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr p1, v1

    goto :goto_2

    :cond_2
    move v0, p1

    .line 116
    .end local p1
    .restart local v0       #value:F
    goto :goto_0
.end method

.method protected createScrollAnimation(FJ)Landroid/animation/Animator;
    .locals 4
    .parameter "velocity"
    .parameter "scrollDurationMs"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollPosition()F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 88
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    long-to-float v3, p2

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 90
    .local v0, scrolling:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    return-object v0
.end method

.method protected findViewIndexAtX(F)I
    .locals 3
    .parameter "x"

    .prologue
    .line 364
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 365
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_0

    .line 370
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 364
    .restart local v0       #childView:Landroid/view/View;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method abstract getLeftEdgeOfChildOnLeft(F)F
.end method

.method abstract getLeftEdgeOfChildOnRight(F)F
.end method

.method protected getScrollPosition()F
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method protected limitScrollPosition(F)F
    .locals 3
    .parameter "targetValue"

    .prologue
    .line 348
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 350
    const/4 p1, 0x0

    .line 352
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 353
    .local v0, maxFromRight:I
    neg-float v1, p1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 354
    neg-int v1, v0

    int-to-float p1, v1

    .line 356
    :cond_1
    return p1
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 260
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 261
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 263
    .local v1, x:F
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 269
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    monitor-exit p0

    return v4

    .line 271
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventDown(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #y:F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 275
    .restart local v0       #action:I
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventMove(FF)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    const v6, 0x449c4000

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 281
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v1, v5, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventDone(FFZ)V

    .line 283
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 284
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 281
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method abstract onTouchEventTriggeredTap(F)Z
.end method

.method protected runScrollAnimation(FF)V
    .locals 2
    .parameter "velocity"
    .parameter "duration"

    .prologue
    .line 303
    const/high16 v0, 0x447a

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 305
    return-void
.end method

.method public setLayoutMargin(I)V
    .locals 0
    .parameter "layoutMargin"

    .prologue
    .line 360
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLayoutMargin:I

    .line 361
    return-void
.end method
