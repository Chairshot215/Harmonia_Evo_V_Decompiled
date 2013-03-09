.class public Lcom/android/browser/NavTabScroller;
.super Lcom/android/browser/view/ScrollerView;
.source "NavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/NavTabScroller$ContentLayout;,
        Lcom/android/browser/NavTabScroller$OnLayoutListener;,
        Lcom/android/browser/NavTabScroller$OnRemoveListener;
    }
.end annotation


# static fields
.field static final INVALID_POSITION:I = -0x1

.field private static final MIN_VELOCITY:F = 1500.0f

.field static final PULL_FACTOR:[F


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

.field mCubic:Landroid/view/animation/DecelerateInterpolator;

.field private mFlingVelocity:F

.field private mGap:I

.field private mGapAnimator:Landroid/animation/ObjectAnimator;

.field private mGapPosition:I

.field private mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

.field private mNeedsScroll:Z

.field mPullValue:I

.field private mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;

.field private mScrollPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/NavTabScroller;->PULL_FACTOR:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/browser/NavTabScroller;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/browser/NavTabScroller;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/browser/NavTabScroller;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NavTabScroller;)Lcom/android/browser/NavTabScroller$OnRemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/NavTabScroller;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/NavTabScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/NavTabScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    return p1
.end method

.method private adjustViewGap(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    if-ge p2, v0, :cond_2

    .line 381
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_3

    .line 382
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 387
    :cond_2
    :goto_0
    return-void

    .line 384
    :cond_3
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private animateOut(Landroid/view/View;F)V
    .locals 2
    .parameter "v"
    .parameter "velocity"

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 267
    .local v0, start:F
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/NavTabScroller;->animateOut(Landroid/view/View;FF)V

    .line 268
    return-void

    .line 266
    .end local v0           #start:F
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method private animateOut(Landroid/view/View;FF)V
    .locals 26
    .parameter "v"
    .parameter "velocity"
    .parameter "start"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->indexOfChild(Landroid/view/View;)I

    move-result v13

    .line 273
    .local v13, position:I
    const/16 v18, 0x0

    .line 274
    .local v18, target:I
    const/16 v22, 0x0

    cmpg-float v22, p2, v22

    if-gez v22, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getHeight()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v18, v0

    .line 279
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    :goto_2
    sub-int v6, v18, v22

    .line 280
    .local v6, distance:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v23

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-long v7, v0

    .line 281
    .local v7, duration:J
    const/4 v14, 0x0

    .line 282
    .local v14, scroll:I
    const/16 v21, 0x0

    .line 283
    .local v21, translate:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 284
    .local v10, gap:I
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/NavTabScroller;->getViewCenter(Landroid/view/View;)I

    move-result v5

    .line 285
    .local v5, centerView:I
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getScreenCenter()I

    move-result v4

    .line 286
    .local v4, centerScreen:I
    const/4 v11, -0x1

    .line 287
    .local v11, newpos:I
    div-int/lit8 v22, v10, 0x2

    sub-int v22, v4, v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_c

    .line 289
    sub-int v22, v4, v5

    sub-int v22, v22, v10

    move/from16 v0, v22

    neg-int v14, v0

    .line 290
    if-lez v13, :cond_b

    move/from16 v21, v10

    .line 291
    :goto_4
    move v11, v13

    .line 307
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    .line 308
    move v12, v11

    .line 309
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    sget-object v22, Lcom/android/browser/NavTabScroller;->TRANSLATION_Y:Landroid/util/Property;

    :goto_6
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput p3, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 311
    .local v19, trans:Landroid/animation/ObjectAnimator;
    sget-object v22, Lcom/android/browser/NavTabScroller;->ALPHA:Landroid/util/Property;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/browser/NavTabScroller;->getAlpha(Landroid/view/View;F)F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/browser/NavTabScroller;->getAlpha(Landroid/view/View;F)F

    move-result v25

    aput v25, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 313
    .local v3, alpha:Landroid/animation/ObjectAnimator;
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 314
    .local v16, set1:Landroid/animation/AnimatorSet;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    const/16 v23, 0x1

    aput-object v3, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 315
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 316
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    .line 317
    const/16 v20, 0x0

    .line 318
    .local v20, trans2:Landroid/animation/ObjectAnimator;
    const/4 v15, 0x0

    .line 319
    .local v15, scroll1:Landroid/animation/ObjectAnimator;
    if-eqz v14, :cond_3

    .line 320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 321
    const-string v22, "scrollX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getScrollX()I

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getScrollX()I

    move-result v25

    add-int v25, v25, v14

    aput v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 326
    :cond_3
    :goto_7
    if-eqz v21, :cond_4

    .line 327
    const-string v22, "gap"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    const/16 v24, 0x1

    aput v21, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 329
    :cond_4
    const/16 v9, 0xc8

    .line 330
    .local v9, duration2:I
    if-eqz v15, :cond_12

    .line 331
    if-eqz v20, :cond_11

    .line 332
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 333
    .local v17, set2:Landroid/animation/AnimatorSet;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    aput-object v20, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 334
    const-wide/16 v22, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v17, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 346
    .end local v17           #set2:Landroid/animation/AnimatorSet;
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/browser/NavTabScroller$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v12}, Lcom/android/browser/NavTabScroller$2;-><init>(Lcom/android/browser/NavTabScroller;II)V

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 275
    .end local v3           #alpha:Landroid/animation/ObjectAnimator;
    .end local v4           #centerScreen:I
    .end local v5           #centerView:I
    .end local v6           #distance:I
    .end local v7           #duration:J
    .end local v9           #duration2:I
    .end local v10           #gap:I
    .end local v11           #newpos:I
    .end local v12           #pos:I
    .end local v14           #scroll:I
    .end local v15           #scroll1:Landroid/animation/ObjectAnimator;
    .end local v16           #set1:Landroid/animation/AnimatorSet;
    .end local v19           #trans:Landroid/animation/ObjectAnimator;
    .end local v20           #trans2:Landroid/animation/ObjectAnimator;
    .end local v21           #translate:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getWidth()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .line 277
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getHeight()I

    move-result v18

    :goto_9
    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getWidth()I

    move-result v18

    goto :goto_9

    .line 279
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    goto/16 :goto_2

    .line 283
    .restart local v6       #distance:I
    .restart local v7       #duration:J
    .restart local v14       #scroll:I
    .restart local v21       #translate:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    goto/16 :goto_3

    .line 290
    .restart local v4       #centerScreen:I
    .restart local v5       #centerView:I
    .restart local v10       #gap:I
    .restart local v11       #newpos:I
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 292
    :cond_c
    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v4

    move/from16 v0, v22

    if-le v5, v0, :cond_d

    .line 294
    add-int v22, v4, v10

    sub-int v22, v22, v5

    move/from16 v0, v22

    neg-int v14, v0

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    .line 296
    neg-int v0, v10

    move/from16 v21, v0

    goto/16 :goto_5

    .line 300
    :cond_d
    sub-int v22, v4, v5

    move/from16 v0, v22

    neg-int v14, v0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_e

    .line 302
    neg-int v0, v10

    move/from16 v21, v0

    goto/16 :goto_5

    .line 304
    :cond_e
    sub-int/2addr v14, v10

    goto/16 :goto_5

    .line 309
    .restart local v12       #pos:I
    :cond_f
    sget-object v22, Lcom/android/browser/NavTabScroller;->TRANSLATION_X:Landroid/util/Property;

    goto/16 :goto_6

    .line 323
    .restart local v3       #alpha:Landroid/animation/ObjectAnimator;
    .restart local v15       #scroll1:Landroid/animation/ObjectAnimator;
    .restart local v16       #set1:Landroid/animation/AnimatorSet;
    .restart local v19       #trans:Landroid/animation/ObjectAnimator;
    .restart local v20       #trans2:Landroid/animation/ObjectAnimator;
    :cond_10
    const-string v22, "scrollY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getScrollY()I

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getScrollY()I

    move-result v25

    add-int v25, v25, v14

    aput v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    goto/16 :goto_7

    .line 337
    .restart local v9       #duration2:I
    :cond_11
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v15, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_8

    .line 341
    :cond_12
    if-eqz v20, :cond_5

    .line 342
    const-wide/16 v22, 0xc8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v20, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_8
.end method

.method private calcPadding()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v2, v4}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, v:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x2

    .line 142
    .local v0, pad:I
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v2, v0, v4, v0, v4}, Lcom/android/browser/NavTabScroller$ContentLayout;->setPadding(IIII)V

    .line 148
    .end local v0           #pad:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x2

    .line 145
    .restart local v0       #pad:I
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v2, v4, v0, v4, v0}, Lcom/android/browser/NavTabScroller$ContentLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private ease(Landroid/view/animation/DecelerateInterpolator;FFFF)F
    .locals 1
    .parameter "inter"
    .parameter "value"
    .parameter "start"
    .parameter "dist"
    .parameter "duration"

    .prologue
    .line 478
    div-float v0, p2, p5

    invoke-virtual {p1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p4

    add-float/2addr v0, p3

    return v0
.end method

.method private getAlpha(Landroid/view/View;F)F
    .locals 3
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 473
    const/high16 v1, 0x3f80

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float v0, v2, v0

    sub-float v0, v1, v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getScreenCenter()I
    .locals 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 393
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/browser/NavTabScroller;->mCubic:Landroid/view/animation/DecelerateInterpolator;

    .line 89
    iput v3, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/browser/NavTabScroller;->setHorizontalScrollBarEnabled(Z)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/browser/NavTabScroller;->setVerticalScrollBarEnabled(Z)V

    .line 92
    new-instance v0, Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-direct {v0, p1, p0}, Lcom/android/browser/NavTabScroller$ContentLayout;-><init>(Landroid/content/Context;Lcom/android/browser/NavTabScroller;)V

    iput-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    .line 93
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v0, v2}, Lcom/android/browser/NavTabScroller$ContentLayout;->setOrientation(I)V

    .line 94
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabScroller;->addView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabScroller;->setGap(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x44bb8000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/browser/NavTabScroller;->mFlingVelocity:F

    .line 101
    return-void
.end method

.method private offsetView(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 464
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavTabScroller;->getAlpha(Landroid/view/View;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 465
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method


# virtual methods
.method adjustGap()V
    .locals 3

    .prologue
    .line 372
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v2}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0, v1}, Lcom/android/browser/NavTabScroller;->adjustViewGap(Landroid/view/View;I)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected animateOut(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mFlingVelocity:F

    neg-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/NavTabScroller;->animateOut(Landroid/view/View;F)V

    goto :goto_0
.end method

.method clearTabs()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v0}, Lcom/android/browser/NavTabScroller$ContentLayout;->removeAllViews()V

    .line 239
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 407
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->adjustGap()V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/view/ScrollerView;->draw(Landroid/graphics/Canvas;)V

    .line 411
    return-void
.end method

.method protected findViewAt(II)Landroid/view/View;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 415
    iget v3, p0, Lcom/android/browser/NavTabScroller;->mScrollX:I

    add-int/2addr p1, v3

    .line 416
    iget v3, p0, Lcom/android/browser/NavTabScroller;->mScrollY:I

    add-int/2addr p2, v3

    .line 417
    iget-object v3, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v3}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildCount()I

    move-result v1

    .line 418
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 419
    iget-object v3, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v3, v2}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 420
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 427
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    .line 418
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 427
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected finishScroller()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 221
    return-void
.end method

.method protected getContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    return-object v0
.end method

.method public getGap()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    return v0
.end method

.method protected getRelativeChildTop(I)I
    .locals 2
    .parameter "ix"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/android/browser/NavTabScroller;->mScrollY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getScrollValue()I
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/browser/NavTabScroller;->mScrollX:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mScrollY:I

    goto :goto_0
.end method

.method protected getTabView(I)Lcom/android/browser/NavTabView;
    .locals 1
    .parameter "pos"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/NavTabView;

    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 191
    return-void
.end method

.method handleDataChanged(I)V
    .locals 10
    .parameter "newscroll"

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 194
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getScrollValue()I

    move-result v2

    .line 195
    .local v2, scroll:I
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mGapAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mGapAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v4}, Lcom/android/browser/NavTabScroller$ContentLayout;->removeAllViews()V

    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 200
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v4, v0, v6, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, v:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    :goto_1
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 204
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v4, v3, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget v4, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    if-le v4, v9, :cond_1

    .line 206
    invoke-direct {p0, v3, v0}, Lcom/android/browser/NavTabScroller;->adjustViewGap(Landroid/view/View;I)V

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 203
    goto :goto_1

    .line 209
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #v:Landroid/view/View;
    :cond_3
    if-le p1, v9, :cond_4

    .line 210
    iget-object v4, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 211
    iput-boolean v5, p0, Lcom/android/browser/NavTabScroller;->mNeedsScroll:Z

    .line 212
    iput p1, p0, Lcom/android/browser/NavTabScroller;->mScrollPosition:I

    .line 213
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->requestLayout()V

    .line 217
    :goto_2
    return-void

    .line 215
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/browser/NavTabScroller;->setScrollValue(I)V

    goto :goto_2
.end method

.method protected isHorizontal()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-super/range {p0 .. p5}, Lcom/android/browser/view/ScrollerView;->onLayout(ZIIII)V

    .line 226
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mNeedsScroll:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 228
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mScrollPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/NavTabScroller;->snapToSelected(IZ)V

    .line 229
    iput-boolean v2, p0, Lcom/android/browser/NavTabScroller;->mNeedsScroll:Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/browser/NavTabScroller$OnLayoutListener;->onLayout(IIII)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    .line 235
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "wspec"
    .parameter "hspec"

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/browser/view/ScrollerView;->onMeasure(II)V

    .line 134
    invoke-direct {p0}, Lcom/android/browser/NavTabScroller;->calcPadding()V

    .line 135
    return-void
.end method

.method protected onOrthoDrag(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 432
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavTabScroller;->offsetView(Landroid/view/View;F)V

    .line 435
    :cond_0
    return-void
.end method

.method protected onOrthoDragFinished(Landroid/view/View;)V
    .locals 3
    .parameter "downView"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/NavTabScroller;->mIsOrthoDragged:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 442
    iget-boolean v1, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 443
    .local v0, diff:F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-boolean v1, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_2
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    .line 445
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Lcom/android/browser/NavTabScroller;->mFlingVelocity:F

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/browser/NavTabScroller;->animateOut(Landroid/view/View;FF)V

    goto :goto_0

    .line 442
    .end local v0           #diff:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_1

    .line 443
    .restart local v0       #diff:F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_2

    .line 448
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/browser/NavTabScroller;->offsetView(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected onOrthoFling(Landroid/view/View;F)V
    .locals 3
    .parameter "v"
    .parameter "velocity"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/browser/NavTabScroller;->mFlingVelocity:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavTabScroller;->animateOut(Landroid/view/View;F)V

    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/NavTabScroller;->offsetView(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected onPull(I)V
    .locals 20
    .parameter "delta"

    .prologue
    .line 483
    const/4 v13, 0x0

    .line 484
    .local v13, layer:Z
    const/4 v8, 0x2

    .line 485
    .local v8, count:I
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    if-nez v1, :cond_1

    .line 537
    :cond_0
    return-void

    .line 486
    :cond_1
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    if-eqz v1, :cond_a

    .line 488
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    if-gez v1, :cond_4

    move v1, v11

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 492
    .local v7, child:Landroid/view/View;
    if-nez v7, :cond_5

    .line 506
    .end local v7           #child:Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    .line 513
    .end local v11           #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getWidth()I

    move-result v10

    .line 514
    .local v10, height:I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 515
    .local v14, oscroll:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    if-gtz v1, :cond_d

    const/4 v9, 0x1

    .line 516
    .local v9, factor:I
    :goto_4
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v8, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    if-gez v1, :cond_e

    move v1, v11

    :goto_6
    invoke-virtual {v2, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 520
    .restart local v7       #child:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 521
    if-eqz v13, :cond_3

    .line 523
    :cond_3
    sget-object v1, Lcom/android/browser/NavTabScroller;->PULL_FACTOR:[F

    aget v12, v1, v11

    .line 524
    .local v12, k:F
    neg-int v1, v9

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/NavTabScroller;->mCubic:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v3, v14

    const/4 v4, 0x0

    const/high16 v1, 0x4000

    mul-float v5, v12, v1

    int-to-float v6, v10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/browser/NavTabScroller;->ease(Landroid/view/animation/DecelerateInterpolator;FFFF)F

    move-result v1

    mul-float v15, v19, v1

    .line 525
    .local v15, rot:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/NavTabScroller;->mCubic:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v3, v14

    const/4 v4, 0x0

    const/high16 v1, 0x41a0

    mul-float v5, v12, v1

    int-to-float v6, v10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/browser/NavTabScroller;->ease(Landroid/view/animation/DecelerateInterpolator;FFFF)F

    move-result v1

    float-to-int v1, v1

    mul-int v18, v9, v1

    .line 526
    .local v18, y:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_f

    .line 527
    move/from16 v0, v18

    int-to-float v1, v0

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 531
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_10

    .line 532
    neg-float v1, v15

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotationY(F)V

    .line 516
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 489
    .end local v7           #child:Landroid/view/View;
    .end local v9           #factor:I
    .end local v10           #height:I
    .end local v12           #k:F
    .end local v14           #oscroll:I
    .end local v15           #rot:F
    .end local v18           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v11

    goto/16 :goto_1

    .line 493
    .restart local v7       #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_6

    const-string v1, "translationX"

    :goto_9
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getTranslationX()F

    move-result v2

    :goto_a
    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v7, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 497
    .local v17, trans:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_8

    const-string v1, "rotationY"

    :goto_b
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getRotationY()F

    move-result v2

    :goto_c
    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v7, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 501
    .local v15, rot:Landroid/animation/ObjectAnimator;
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 502
    .local v16, set:Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v17, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 503
    const-wide/16 v1, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 504
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 488
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 493
    .end local v15           #rot:Landroid/animation/ObjectAnimator;
    .end local v16           #set:Landroid/animation/AnimatorSet;
    .end local v17           #trans:Landroid/animation/ObjectAnimator;
    :cond_6
    const-string v1, "translationY"

    goto :goto_9

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getTranslationY()F

    move-result v2

    goto :goto_a

    .line 497
    .restart local v17       #trans:Landroid/animation/ObjectAnimator;
    :cond_8
    const-string v1, "rotationX"

    goto :goto_b

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getRotationX()F

    move-result v2

    goto :goto_c

    .line 508
    .end local v7           #child:Landroid/view/View;
    .end local v11           #i:I
    .end local v17           #trans:Landroid/animation/ObjectAnimator;
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    if-nez v1, :cond_b

    .line 509
    const/4 v13, 0x1

    .line 511
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/browser/NavTabScroller;->mPullValue:I

    goto/16 :goto_2

    .line 513
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/NavTabScroller;->getHeight()I

    move-result v10

    goto/16 :goto_3

    .line 515
    .restart local v10       #height:I
    .restart local v14       #oscroll:I
    :cond_d
    const/4 v9, -0x1

    goto/16 :goto_4

    .line 517
    .restart local v9       #factor:I
    .restart local v11       #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v11

    goto/16 :goto_6

    .line 529
    .restart local v7       #child:Landroid/view/View;
    .restart local v12       #k:F
    .local v15, rot:F
    .restart local v18       #y:I
    :cond_f
    move/from16 v0, v18

    int-to-float v1, v0

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_7

    .line 534
    :cond_10
    invoke-virtual {v7, v15}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_8
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/NavTabScroller;->setAdapter(Landroid/widget/BaseAdapter;I)V

    .line 152
    return-void
.end method

.method protected setAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "selection"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    .line 165
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    new-instance v1, Lcom/android/browser/NavTabScroller$1;

    invoke-direct {v1, p0}, Lcom/android/browser/NavTabScroller$1;-><init>(Lcom/android/browser/NavTabScroller;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 179
    return-void
.end method

.method public setGap(I)V
    .locals 2
    .parameter "gap"

    .prologue
    .line 361
    iget v0, p0, Lcom/android/browser/NavTabScroller;->mGapPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 362
    iput p1, p0, Lcom/android/browser/NavTabScroller;->mGap:I

    .line 363
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->postInvalidate()V

    .line 365
    :cond_0
    return-void
.end method

.method public setOnLayoutListener(Lcom/android/browser/NavTabScroller$OnLayoutListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    .line 161
    return-void
.end method

.method public setOnRemoveListener(Lcom/android/browser/NavTabScroller$OnRemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;

    .line 157
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 120
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabScroller$ContentLayout;->setOrientation(I)V

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :goto_0
    invoke-super {p0, p1}, Lcom/android/browser/view/ScrollerView;->setOrientation(I)V

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/browser/NavTabScroller$ContentLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected setScrollValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    move v0, p1

    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/NavTabScroller;->scrollTo(II)V

    .line 109
    return-void

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1
.end method

.method snapToSelected(IZ)V
    .locals 5
    .parameter "pos"
    .parameter "smooth"

    .prologue
    .line 242
    if-gez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/android/browser/NavTabScroller;->mContentView:Lcom/android/browser/NavTabScroller$ContentLayout;

    invoke-virtual {v3, p1}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 245
    .local v0, sx:I
    const/4 v1, 0x0

    .line 246
    .local v1, sy:I
    iget-boolean v3, p0, Lcom/android/browser/NavTabScroller;->mHorizontal:Z

    if-eqz v3, :cond_3

    .line 247
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 251
    :goto_1
    iget v3, p0, Lcom/android/browser/NavTabScroller;->mScrollX:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/android/browser/NavTabScroller;->mScrollY:I

    if-eq v1, v3, :cond_0

    .line 252
    :cond_2
    if-eqz p2, :cond_4

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/NavTabScroller;->smoothScrollTo(II)V

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    goto :goto_1

    .line 255
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/NavTabScroller;->scrollTo(II)V

    goto :goto_0
.end method
