.class public Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;
.super Lcom/htc/idlescreen/base/widget/IdleDraggable;
.source "IdleDragControlImpl.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_CLICK:Ljava/lang/String; = "click"

.field private static final ANIMATION_DROP:Ljava/lang/String; = "drop"

.field private static final ANIMATION_PRESS:Ljava/lang/String; = "press"

.field private static final ANIMATION_RELEASE:Ljava/lang/String; = "release"

.field private static final ANIMATION_UNLOCK:Ljava/lang/String; = "unlock"

.field private static final DELTA_Z1:F = 0.5f

.field private static final DELTA_Z2:F = 1.0f

.field protected static final DROP_DURATION:F = 0.2f

.field protected static final FPS:F = 30.0f

.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleDragControl"

.field protected static final MIN_DRAG_DIST:F = 20.0f

.field private static final WHAT_UI_RING_BACK:I = 0x12d


# instance fields
.field private mAbove:Z

.field private mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

.field private mBackListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;

.field private mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

.field protected mClickDirect:I

.field private mDragListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;

.field private mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

.field private mDropPrepare:Z

.field private mFakeDrawable:Landroid/graphics/drawable/Drawable;

.field private mGoldenRate:Z

.field private mOnDrag:Z

.field private mPlayAnimation:Z

.field private mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

.field private mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

.field private mShadow:Landroid/graphics/Bitmap;

.field private mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V
    .locals 2
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "timeline_y"
    .parameter "timeline_x"
    .parameter "timeline_scale"
    .parameter "timeline_opacity"
    .parameter "hitbox"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p8}, Lcom/htc/idlescreen/base/widget/IdleDraggable;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    .line 53
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAbove:Z

    .line 54
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mOnDrag:Z

    .line 55
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 56
    iput v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickDirect:I

    .line 61
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mGoldenRate:Z

    .line 62
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    .line 484
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;-><init>(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    .line 91
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUIHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->ringBack()V

    return-void
.end method

.method private isInCurrentMode()Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method private ringBack()V
    .locals 3

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isInCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "IdleDragControl"

    const-string v2, "ringBack"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v0

    .line 573
    .local v0, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->playDropOut()V

    .line 577
    .end local v0           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    :cond_0
    return-void
.end method


# virtual methods
.method protected changePosition(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-nez v0, :cond_0

    .line 233
    const/4 p2, 0x0

    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->changePosition(FF)V

    .line 236
    return-void
.end method

.method public clearClickAnime()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->uninit()V

    .line 449
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 450
    return-void
.end method

.method public clearDropAnime()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->uninit()V

    .line 457
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 458
    return-void
.end method

.method public clearPressAnime()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->uninit()V

    .line 465
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 466
    return-void
.end method

.method public clearReleaseAnime()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->uninit()V

    .line 473
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 474
    return-void
.end method

.method public clearUnlockAnime()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->uninit()V

    .line 481
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 482
    return-void
.end method

.method public dragCancel()V
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    .line 626
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->ringBack()V

    .line 628
    :cond_0
    return-void
.end method

.method public equals(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 3
    .parameter "control"

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->getName()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, name:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->getName()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, name2:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const/4 v2, 0x1

    .line 510
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->getControlName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->init()V

    .line 105
    return-void
.end method

.method protected isDrop()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, ringDropOver:Z
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v0

    .line 613
    .local v0, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v0, :cond_0

    .line 614
    iget-object v3, v0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v4, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 617
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 618
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->isDrop()Z

    move-result v2

    .line 620
    :cond_1
    return v2

    :cond_2
    move v1, v2

    .line 614
    goto :goto_0
.end method

.method public isNeedGoldenRate()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mGoldenRate:Z

    return v0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onClick()V

    .line 159
    const-string v2, "IdleDragControl"

    const-string v3, "onClick"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mEnable:Z

    if-eqz v2, :cond_1

    .line 161
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v1

    .line 162
    .local v1, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v1, :cond_0

    .line 163
    iget v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickDirect:I

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setDropIndex(I)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->playClickAnime()V

    .line 166
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-nez v2, :cond_1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->playDropOver()V

    .line 172
    .end local v1           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

    .line 173
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;
    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0, p0}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;->onClick(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 176
    :cond_2
    return-void
.end method

.method protected onDrag(FFZ)V
    .locals 5
    .parameter "dx"
    .parameter "dy"
    .parameter "inDropArea"

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onDrag(FFZ)V

    .line 207
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDragListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;

    .line 208
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isNeedGoldenRate()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-nez v4, :cond_3

    .line 209
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 210
    .local v2, xValue:F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 212
    .local v3, yValue:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    const/high16 v4, 0x4120

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_1

    :cond_0
    const/high16 v4, 0x42c8

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 214
    :cond_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v1

    .line 215
    .local v1, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v1, :cond_2

    .line 216
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    .line 217
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->playDropOver()V

    .line 220
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->updateShortcutVisible(Z)V

    .line 226
    .end local v1           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    .end local v2           #xValue:F
    .end local v3           #yValue:F
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 227
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;->onMoveDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)V

    .line 229
    :cond_4
    return-void

    .line 223
    .restart local v2       #xValue:F
    .restart local v3       #yValue:F
    :cond_5
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected onDrop()V
    .locals 3

    .prologue
    .line 277
    const-string v1, "IdleDragControl"

    const-string v2, "onDrop"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isInCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->playUnlockAnime()V

    .line 280
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v0

    .line 281
    .local v0, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->dropItem(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 284
    .end local v0           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    :cond_0
    return-void
.end method

.method protected onEndBack()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndBack()V

    .line 273
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 274
    return-void
.end method

.method protected onEndDrag(FFZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "dropped"

    .prologue
    const/16 v7, 0x12d

    .line 239
    const-string v4, "IdleDragControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endDrag dropped:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mOnDrag:Z

    .line 243
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDragListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;

    .line 244
    .local v3, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
    const/4 v2, 0x0

    .line 245
    .local v2, handlered:Z
    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v3, p0, p1, p2, p3}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;->onEndDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)Z

    move-result v2

    .line 248
    :cond_0
    if-nez v2, :cond_4

    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndDrag(FFZ)V

    .line 255
    :goto_0
    if-nez p3, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isNeedGoldenRate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->updateShortcutVisible(Z)V

    .line 261
    :cond_1
    const-wide/16 v0, 0x0

    .line 262
    .local v0, delay:J
    iget-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mIsClick:Z

    if-eqz v4, :cond_2

    .line 263
    const-wide/16 v0, 0x1f4

    .line 265
    :cond_2
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v7}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 266
    if-nez p3, :cond_3

    .line 267
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v7, v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 269
    :cond_3
    return-void

    .line 252
    .end local v0           #delay:J
    :cond_4
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/IdleState;->skipShowHint()V

    goto :goto_0
.end method

.method protected onLongPress()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onLongPress()V

    .line 150
    const-string v1, "IdleDragControl"

    const-string v2, "onLongPress"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

    .line 152
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p0}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;->onLongPress(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onRelease(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onRelease(FF)V

    .line 140
    const-string v1, "IdleDragControl"

    const-string v2, "onRelease"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->showHint()V

    .line 142
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

    .line 143
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p0, p1, p2}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;->onRelease(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onStartBack()V
    .locals 3

    .prologue
    .line 287
    const-string v1, "IdleDragControl"

    const-string v2, "onStartBack"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onStartBack()V

    .line 289
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mBackListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;

    .line 290
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;
    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0, p0}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;->onStartBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onStartDrag(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onStartDrag(FF)V

    .line 180
    iput-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mOnDrag:Z

    .line 181
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    .line 182
    const-string v2, "IdleDragControl"

    const-string v3, "startDrag"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 184
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDragListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;

    .line 185
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p0, p1, p2}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;->onStartDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isInCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v1

    .line 191
    .local v1, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v1, :cond_1

    .line 192
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadow(Landroid/graphics/Bitmap;)V

    .line 193
    iget v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickDirect:I

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setDropIndex(I)V

    .line 194
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isNeedGoldenRate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    iput-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    .line 196
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->playDropOver()V

    .line 200
    .end local v1           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    :cond_1
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->isNeedGoldenRate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {p0, v4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->updateShortcutVisible(Z)V

    .line 203
    :cond_2
    return-void
.end method

.method protected onTouch(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onTouch(FF)V

    .line 126
    const-string v1, "IdleDragControl"

    const-string v2, "onTouch"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mEnable:Z

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    const v2, 0x7f040021

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 129
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/IdleState;->setTouchItem(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

    .line 133
    .local v0, listener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0, p0, p1, p2}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;->onPress(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V

    .line 136
    :cond_1
    return-void
.end method

.method protected playClickAnime()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 341
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 342
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->startPlay(Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void
.end method

.method protected playDropAnime()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 298
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 299
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    const-string v1, "drop"

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->startPlay(Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->reset()V

    goto :goto_0
.end method

.method protected playPressAnime()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 326
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 327
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    const-string v1, "press"

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->startPlay(Ljava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method

.method protected playReleaseAnime()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 334
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 335
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->startPlay(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method protected playUnlockAnime()V
    .locals 4

    .prologue
    .line 307
    const-string v1, "IdleDragControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playUnlockAnime mFakeDrawable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setDragItemVisible(Z)V

    .line 310
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v0

    .line 311
    .local v0, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadow(Landroid/graphics/drawable/Drawable;)V

    .line 321
    .end local v0           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 318
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 319
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    const-string v2, "unlock"

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->startPlay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 2
    .parameter "onlyPosition"

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->reset(Z)V

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setDragItemVisible(Z)V

    .line 516
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    .line 517
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mOnDrag:Z

    .line 518
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 519
    return-void
.end method

.method public setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "container"
    .parameter "timeline"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 383
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 384
    return-void
.end method

.method public setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .parameter "container"
    .parameter "timeline"
    .parameter "marker"
    .parameter "hideDragWhenPlay"
    .parameter "direct"

    .prologue
    .line 391
    invoke-virtual {p1, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 392
    .local v0, ctrl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZI)V

    .line 393
    return-void
.end method

.method public setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
    .locals 1
    .parameter "dropTl"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZI)V

    .line 388
    return-void
.end method

.method public setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZI)V
    .locals 2
    .parameter "dropTl"
    .parameter "marker"
    .parameter "hideDragWhenPlay"
    .parameter "direct"

    .prologue
    .line 398
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZLcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 399
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->init()V

    .line 400
    return-void
.end method

.method protected setDragItemVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 365
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    .line 366
    return-void
.end method

.method public setDropAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "container"
    .parameter "timeline"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 374
    invoke-virtual {p1, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 375
    .local v0, ctrl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {p0, v0, p3, p4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setDropAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 376
    return-void
.end method

.method public setDropAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
    .locals 2
    .parameter "dropTl"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 379
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZLcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 380
    return-void
.end method

.method public setDropIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 552
    iput p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mClickDirect:I

    .line 553
    return-void
.end method

.method public setEnableGoldenRate(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mGoldenRate:Z

    .line 597
    return-void
.end method

.method public setFakeImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/htc/idlescreen/base/util/ImageUtil;->getShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mShadow:Landroid/graphics/Bitmap;

    .line 587
    :cond_0
    return-void
.end method

.method public setFakeImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    if-eqz p1, :cond_0

    .line 592
    invoke-static {p1}, Lcom/htc/idlescreen/base/util/ImageUtil;->getShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mShadow:Landroid/graphics/Bitmap;

    .line 593
    :cond_0
    return-void
.end method

.method public setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mBackListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;

    .line 548
    return-void
.end method

.method public setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDragListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;

    .line 370
    return-void
.end method

.method public setOnTouchListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

    .line 543
    return-void
.end method

.method public setPressAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "container"
    .parameter "timeline"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 405
    invoke-virtual {p1, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 406
    .local v0, ctrl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {p0, v0, p3, p4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setPressAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 407
    return-void
.end method

.method public setPressAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
    .locals 2
    .parameter "PressTl"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 412
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZLcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 413
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPressAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->init()V

    .line 414
    return-void
.end method

.method public setReleaseAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "container"
    .parameter "timeline"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 419
    invoke-virtual {p1, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 420
    .local v0, ctrl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {p0, v0, p3, p4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setReleaseAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 421
    return-void
.end method

.method public setReleaseAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ReleaseTl"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 426
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZLcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 427
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mReleaseAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->init()V

    .line 428
    return-void
.end method

.method public setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "container"
    .parameter "timeline"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 433
    invoke-virtual {p1, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 434
    .local v0, ctrl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {p0, v0, p3, p4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 435
    return-void
.end method

.method public setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
    .locals 2
    .parameter "unlockTl"
    .parameter "marker"
    .parameter "hideDragWhenPlay"

    .prologue
    .line 440
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAnimationCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZLcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    .line 441
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUnlockAnimation:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->init()V

    .line 442
    return-void
.end method

.method public setZOrder()V
    .locals 5

    .prologue
    .line 523
    iget-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mOnDrag:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 524
    .local v0, above:Z
    :goto_0
    iget-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAbove:Z

    if-eq v4, v0, :cond_1

    .line 525
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAbove:Z

    .line 526
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->getRoot()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v3

    .line 527
    .local v3, root:Lcom/htc/fusion/fx/FxTimelineControl;
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mAbove:Z

    .line 528
    if-eqz v0, :cond_3

    const/high16 v1, 0x3f80

    .line 529
    .local v1, dz:F
    :goto_1
    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    .line 530
    .local v2, p:Lcom/htc/fusion/Point3F;
    iget v4, v2, Lcom/htc/fusion/Point3F;->z:F

    add-float/2addr v4, v1

    iput v4, v2, Lcom/htc/fusion/Point3F;->z:F

    .line 531
    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 533
    .end local v1           #dz:F
    .end local v2           #p:Lcom/htc/fusion/Point3F;
    .end local v3           #root:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_1
    return-void

    .line 523
    .end local v0           #above:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    .restart local v0       #above:Z
    .restart local v3       #root:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_3
    const/high16 v1, -0x4080

    goto :goto_1
.end method

.method public uninit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDropPrepare:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->ringBack()V

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;

    .line 112
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mDragListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;

    .line 113
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mBackListener:Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;

    .line 114
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->clearClickAnime()V

    .line 115
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->clearDropAnime()V

    .line 116
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->clearPressAnime()V

    .line 117
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->clearReleaseAnime()V

    .line 118
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->clearUnlockAnime()V

    .line 119
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mShadow:Landroid/graphics/Bitmap;

    .line 120
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mFakeDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->uninit()V

    .line 122
    return-void
.end method

.method public updateShortcutVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 604
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    move-result-object v0

    .line 605
    .local v0, shortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
    if-eqz v0, :cond_0

    .line 606
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 608
    :cond_0
    return-void
.end method
