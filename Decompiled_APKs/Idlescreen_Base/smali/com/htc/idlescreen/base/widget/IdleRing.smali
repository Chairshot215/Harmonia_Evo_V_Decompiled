.class public Lcom/htc/idlescreen/base/widget/IdleRing;
.super Lcom/htc/idlescreen/base/widget/IdleDraggable;
.source "IdleRing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/IdleRing$1;,
        Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;,
        Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;,
        Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;,
        Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;,
        Lcom/htc/idlescreen/base/widget/IdleRing$RingState;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleRing"

.field private static final MARKER_UNLOCK_HEIGHT:Ljava/lang/String; = "unlock_height"

.field private static final MARKER_UNLOCK_Y:Ljava/lang/String; = "unlock_destination"

.field private static final RES_DROP_RING:Ljava/lang/String; = "t.lockscreen_ring_motion"

.field private static final WHAT_ON_DROP_BOUNCE:I = 0x9

.field private static final WHAT_ON_DROP_END:I = 0x6

.field private static final WHAT_ON_DROP_INDICATE:I = 0xa

.field private static final WHAT_ON_DROP_OUT:I = 0x8

.field private static final WHAT_ON_DROP_OVER:I = 0x7

.field private static final WHAT_ON_DROP_START:I = 0x5

.field private static final WHAT_ON_END_DRAG:I = 0x2

.field private static final WHAT_ON_RING_ENABLE:I = 0xb

.field private static final WHAT_ON_RING_PLAY_BACK:I = 0xc

.field private static final WHAT_ON_START_DRAG:I = 0x1

.field private static final WHAT_ON_UNLOCK_END:I = 0x4

.field private static final WHAT_ON_UNLOCK_START:I = 0x3


# instance fields
.field private mActiveDropIndex:I

.field private mCallbackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

.field private mDropListener:Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;

.field private mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

.field private mPlayListener:Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;

.field private mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

.field public mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mWithShadow:Z

.field private mYCenter:Lcom/htc/fusion/fx/Marker;

.field private mYUnlock:Lcom/htc/fusion/fx/Marker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V
    .locals 11
    .parameter "context"
    .parameter "scene"
    .parameter "timelineY"
    .parameter "timelineX"
    .parameter "timelineScale"
    .parameter "timelineOpacity"
    .parameter "hitbox"

    .prologue
    .line 115
    const-string v1, "idlescreen_base_ring"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/idlescreen/base/widget/IdleDraggable;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    .line 75
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/idlescreen/base/widget/IdleRing$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropListener:Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;

    .line 76
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/idlescreen/base/widget/IdleRing$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mPlayListener:Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;

    .line 79
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    .line 117
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 120
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "unlock_height"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYUnlock:Lcom/htc/fusion/fx/Marker;

    .line 121
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "unlock_destination"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYCenter:Lcom/htc/fusion/fx/Marker;

    .line 122
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "dynamicimage.shortcutoutline"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 123
    move-object v10, p2

    .line 124
    .local v10, timeline_drop:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v10}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v9

    .line 125
    .local v9, point:Lcom/htc/fusion/Point3F;
    iget v0, v9, Lcom/htc/fusion/Point3F;->z:F

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, v9, Lcom/htc/fusion/Point3F;->z:F

    .line 126
    invoke-virtual {v10, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 128
    new-instance v0, Lcom/htc/idlescreen/base/widget/RingAnimation;

    invoke-direct {v0, v10}, Lcom/htc/idlescreen/base/widget/RingAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    .line 130
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadow(Landroid/graphics/Bitmap;)V

    .line 132
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing;->handlePlaybackEvent(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/widget/IdleRing;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/widget/IdleRing;)Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing;->handleDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/widget/IdleRing;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/idlescreen/base/widget/IdleRing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->handleDropOver()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/idlescreen/base/widget/IdleRing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->handleDropOut()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/idlescreen/base/widget/IdleRing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->handleBounce()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/idlescreen/base/widget/IdleRing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->handleIndicate()V

    return-void
.end method

.method public static generateRing(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/idlescreen/base/widget/IdleRing;
    .locals 8
    .parameter "context"
    .parameter "scene"

    .prologue
    .line 97
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing;

    const-string v1, "t.lockscreen_ring_positionY"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "t.lockscreen_ring_positionX"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "t.lockscreen_ring_scale"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "t.lockscreen_ring_opacity"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "hitbox.lockscreen_ring"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/controls/FxHitbox;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/idlescreen/base/widget/IdleRing;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    .line 105
    .local v0, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    return-object v0
.end method

.method private handleBounce()V
    .locals 4

    .prologue
    .line 458
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBounce mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 464
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/RingAnimation;->bounce()V

    .line 466
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 467
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-eqz v0, :cond_0

    .line 468
    const-string v1, "touch_bounce"

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onAnimationStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 4
    .parameter "drag"

    .prologue
    .line 359
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDrop mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 361
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 362
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-eqz v0, :cond_0

    .line 363
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    .line 364
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    iget v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/RingAnimation;->drop(I)V

    .line 365
    const-string v1, "drop"

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onAnimationStart(Ljava/lang/String;)V

    .line 366
    invoke-interface {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 368
    :cond_0
    return-void
.end method

.method private handleDropOut()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 425
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDropOut mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_2

    .line 428
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-ne v1, v2, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->reset()V

    .line 431
    :cond_0
    const-string v1, "IdleRing"

    const-string v2, "handleDropOut state wrong"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 435
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    iget v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/RingAnimation;->dropOut(I)V

    .line 436
    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 437
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 438
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v4, v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 439
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 440
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-eqz v0, :cond_1

    .line 441
    const-string v1, "drop_out"

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onAnimationStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDropOver()V
    .locals 4

    .prologue
    .line 402
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDropOver mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 407
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 408
    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 409
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 410
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    iget v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/RingAnimation;->dropOver(I)V

    .line 411
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 412
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-eqz v0, :cond_0

    .line 413
    const-string v1, "drop_over"

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onAnimationStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleIndicate()V
    .locals 4

    .prologue
    .line 380
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIndicate mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_1

    .line 382
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIndicate error mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 386
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    iget v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/RingAnimation;->dropIndicate(I)V

    .line 387
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 388
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-eqz v0, :cond_0

    .line 389
    const-string v1, "Drop_indicate"

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onAnimationStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePlaybackEvent(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 495
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayListener info.name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.playbackResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "drop"

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 502
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-eqz v0, :cond_1

    .line 503
    iget-object v1, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    iget v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    invoke-interface {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onAnimationEnd(Ljava/lang/String;I)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v1, "IdleRing"

    const-string v2, "PlayListener callback null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStartUnlock()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f00

    const v13, 0x3e4ccccd

    const/4 v7, 0x3

    const/high16 v12, 0x41f0

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 194
    const/high16 v8, 0x3f00

    .line 195
    .local v8, duration:F
    const v9, 0x3e4ccccd

    .line 198
    .local v9, duration2:F
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v10

    .line 199
    .local v10, f1:F
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mXIdle:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v11, v0

    .line 200
    .local v11, f2:F
    sub-float v0, v10, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v12

    div-float v4, v0, v13

    .line 201
    .local v4, speed:F
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v1, v10

    float-to-int v2, v11

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    .line 205
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v10

    .line 206
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYCenter:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v11, v0

    .line 207
    sub-float v0, v10, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v12

    div-float v4, v0, v13

    .line 208
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v1, v10

    float-to-int v2, v11

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    .line 212
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v12

    div-float v4, v0, v14

    .line 213
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    const/4 v5, 0x1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    .line 217
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v12

    div-float v4, v0, v14

    .line 228
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 229
    return-void
.end method


# virtual methods
.method protected checkMarkerError()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYIdle:Lcom/htc/fusion/fx/Marker;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ring y idle_state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mXIdle:Lcom/htc/fusion/fx/Marker;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ring x idle_state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    return-void
.end method

.method public dropItem(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 4
    .parameter "drag"

    .prologue
    .line 348
    const-string v1, "IdleRing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropItem mRingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v1, v2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 355
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getDropIndex()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    return v0
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->init()V

    .line 145
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropListener:Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 146
    const-string v0, "IdleRing"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mPlayListener:Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/RingAnimation;->init(Lcom/htc/fusion/fx/MessageListener;)V

    .line 148
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleRing mYUnlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYUnlock:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleRing mYIdle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYIdle:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected isDrop()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v3

    .line 246
    .local v3, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->isGoningUnlock()Z

    move-result v2

    .line 247
    .local v2, isGoingToUnlock:Z
    if-nez v2, :cond_0

    if-ne v3, p0, :cond_0

    .line 248
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCurYFrame:F

    .line 249
    .local v0, f1:F
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mYUnlock:Lcom/htc/fusion/fx/Marker;

    iget v5, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v5

    .line 250
    .local v1, f2:F
    cmpl-float v5, v0, v1

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    .line 252
    .end local v0           #f1:F
    .end local v1           #f2:F
    :cond_0
    return v4
.end method

.method protected onEndBack()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndBack()V

    .line 233
    return-void
.end method

.method public onEndDrag(FFZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "dropped"

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndDrag(FFZ)V

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 186
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 187
    if-eqz p3, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleRing;->onStartUnlock()V

    .line 190
    :cond_0
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStartDrag(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onStartDrag(FF)V

    .line 343
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 344
    return-void
.end method

.method public playBounce()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v0, v1, :cond_0

    .line 450
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playBounce state wrong mRingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public playDropOut()V
    .locals 3

    .prologue
    .line 419
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDropOut mRingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 422
    return-void
.end method

.method public playDropOver()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v0, v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public playIndicate()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v0, v1, :cond_0

    .line 373
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playIndicate error mRingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    const-string v0, "IdleRing"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->reset()V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadowVisible(Z)V

    .line 167
    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setVisible(Z)V

    .line 168
    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 169
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 170
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/RingAnimation;->reset()V

    .line 171
    return-void
.end method

.method public setCallback(Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;Landroid/os/Looper;)V
    .locals 1
    .parameter "callback"
    .parameter "looper"

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 175
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    .line 177
    :cond_0
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;

    invoke-direct {v0, p0, p2}, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;-><init>(Lcom/htc/idlescreen/base/widget/IdleRing;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;

    .line 178
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 179
    return-void
.end method

.method public setDropIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 511
    iput p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mActiveDropIndex:I

    .line 512
    return-void
.end method

.method public setEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 559
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-ne v0, v1, :cond_0

    .line 560
    const-string v0, "IdleRing"

    const-string v1, "setEnable at DROPOVER"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->setEnable(Z)V

    .line 563
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public setShadow(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 519
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShadow bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    .line 521
    if-eqz p1, :cond_1

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    .line 523
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    .line 527
    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadowVisible(Z)V

    goto :goto_0
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 533
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShadow drawable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    .line 535
    if-eqz p1, :cond_1

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    .line 537
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    .line 541
    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadowVisible(Z)V

    goto :goto_0
.end method

.method public setShadowVisible(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 547
    const-string v0, "IdleRing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShadowVisible show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    .line 549
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mShadowImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->uninit()V

    .line 154
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mDropRing:Lcom/htc/idlescreen/base/widget/RingAnimation;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/RingAnimation;->uninit()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mWithShadow:Z

    .line 156
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 157
    return-void
.end method
