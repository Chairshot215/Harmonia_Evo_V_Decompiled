.class public Lcom/htc/idlescreen/base/widget/IdleDraggable;
.super Ljava/lang/Object;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/IdleDraggable$1;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$LongTapListener;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$TapListener;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;,
        Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;
    }
.end annotation


# static fields
.field protected static final DROP_DURATION:F = 0.5f

.field protected static final FPS:F = 30.0f

.field private static final LOG_PREFIX:Ljava/lang/String; = "Draggable"

.field protected static final MIN_DROP_DIST:F = 20.0f

.field private static final WHAT_UI_BACK_TIMEOUT:I = 0x1776

.field private static final WHAT_UI_ON_BACK:I = 0x1775

.field private static final WHAT_UI_ON_MOVE:I = 0x1774

.field private static final WHAT_UI_ON_TOUCH:I = 0x1771


# instance fields
.field private mBackListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;

.field protected mCurXFrame:F

.field protected mCurYFrame:F

.field protected mDropArea:Lcom/htc/idlescreen/base/widget/IdleDropArea;

.field protected mEnable:Z

.field protected mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mInBacking:Z

.field protected mIsClick:Z

.field public mIsDrop:Z

.field private mLongPressTimeout:I

.field private mMoveListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;

.field private mName:Ljava/lang/String;

.field private mOpacityDuration:F

.field protected mOpacityOff:Lcom/htc/fusion/fx/Marker;

.field protected mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mScaleDown:Lcom/htc/fusion/fx/Marker;

.field protected mScaleUp:Lcom/htc/fusion/fx/Marker;

.field private mStartPoint:Landroid/graphics/PointF;

.field private mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

.field protected mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTouchListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;

.field private mTouchSlopSquare:I

.field protected mTouchedTime:J

.field private mUIHandler:Landroid/os/Handler;

.field private mUnlockToScale:F

.field protected mXIdle:Lcom/htc/fusion/fx/Marker;

.field protected mXLeft:Lcom/htc/fusion/fx/Marker;

.field protected mXRight:Lcom/htc/fusion/fx/Marker;

.field protected mYIdle:Lcom/htc/fusion/fx/Marker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V
    .locals 4
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "timeline_y"
    .parameter "timeline_x"
    .parameter "timeline_scale"
    .parameter "timeline_opacity"
    .parameter "hitbox"

    .prologue
    const/high16 v3, -0x3d38

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/idlescreen/base/widget/IdleDraggable$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;

    .line 77
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/idlescreen/base/widget/IdleDraggable$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mMoveListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;

    .line 80
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/idlescreen/base/widget/IdleDraggable$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mBackListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mEnable:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    .line 87
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUnlockToScale:F

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityDuration:F

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchedTime:J

    .line 224
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mIsClick:Z

    .line 379
    iput v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    .line 380
    iput v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    .line 414
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mIsDrop:Z

    .line 125
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mName:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 127
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;

    .line 128
    iput-object p4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 129
    iput-object p5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 130
    iput-object p6, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 131
    iput-object p7, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 132
    iput-object p8, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 133
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->checkControlError()V

    .line 134
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDropArea;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleDropArea;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mDropArea:Lcom/htc/idlescreen/base/widget/IdleDropArea;

    .line 143
    return-void
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/widget/IdleDraggable;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/widget/IdleDraggable;)Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleMoveEvent(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleBackEvent()V

    return-void
.end method

.method private chanegFrameOfXY(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXLeft:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXLeft:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXLeft:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float p1, v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXRight:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXRight:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXRight:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float p1, v0

    .line 391
    :cond_1
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 392
    iput p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    .line 393
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 395
    :cond_2
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 396
    iput p2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    .line 397
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 399
    :cond_3
    return-void
.end method

.method private chanegFrameOfXY(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "dif"

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    add-float/2addr v0, p3

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    sub-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 405
    :cond_0
    iput p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    .line 406
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurXFrame:F

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 408
    :cond_1
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    add-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    sub-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 410
    :cond_2
    iput p2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    .line 411
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mCurYFrame:F

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 413
    :cond_3
    return-void
.end method

.method private distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 250
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 251
    .local v0, x:F
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 252
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private handleBackEvent()V
    .locals 3

    .prologue
    .line 334
    const-string v0, "Draggable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackListener mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndBack()V

    .line 338
    :cond_0
    return-void
.end method

.method private handleMoveEvent(FF)V
    .locals 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    sget-object v2, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    if-ne v1, v2, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->isDrop()Z

    move-result v0

    .line 318
    .local v0, isDrop:Z
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onDrag(FFZ)V

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->changePosition(FF)V

    .line 331
    .end local v0           #isDrop:Z
    :cond_0
    return-void
.end method

.method private handleMoveEvent(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 308
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    .line 309
    .local v2, stroke:Lcom/htc/fusion/fx/Stroke;
    iget-object v3, v2, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v2, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v4

    .line 310
    .local v0, dx:F
    iget-object v3, v2, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v2, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 311
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleMoveEvent(FF)V

    .line 313
    return-void
.end method


# virtual methods
.method protected changePosition(FF)V
    .locals 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v4, 0x0

    .line 366
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXIdle:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    add-float v1, v3, p1

    .line 367
    .local v1, xFrame:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mYIdle:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    sub-float v2, v3, p2

    .line 368
    .local v2, yFrame:F
    invoke-direct {p0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->chanegFrameOfXY(FF)V

    .line 370
    iget v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUnlockToScale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    cmpl-float v3, p2, v4

    if-lez v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUnlockToScale:F

    mul-float/2addr v4, p2

    add-float v0, v3, v4

    .line 372
    .local v0, frame:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v0, v3

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 377
    .end local v0           #frame:F
    :cond_1
    return-void
.end method

.method protected checkControlError()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeline y position is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeline x position is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hitbox position is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    return-void
.end method

.method protected checkMarkerError()V
    .locals 4

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mDropArea:Lcom/htc/idlescreen/base/widget/IdleDropArea;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleDropArea;->checkMarkerError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Draggable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMarkerError mName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getControlName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mName:Ljava/lang/String;

    .line 585
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoot()Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0
.end method

.method public getStartPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected handleTouchEvent(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 13
    .parameter "message"

    .prologue
    .line 256
    iget v10, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 257
    const-string v10, "Draggable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TouchListener state in EVENT_PRESS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mIsClick:Z

    .line 259
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/idlescreen/base/IdleState;->getCurDraggable()Lcom/htc/idlescreen/base/widget/IdleDraggable;

    move-result-object v2

    .line 260
    .local v2, drag:Lcom/htc/idlescreen/base/widget/IdleDraggable;
    iget-boolean v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    if-nez v10, :cond_1

    if-nez v2, :cond_1

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchedTime:J

    .line 262
    iget-object v10, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    iget-object v10, v10, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iput-object v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    .line 263
    iget-object v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v10, v11}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onTouch(FF)V

    .line 305
    .end local v2           #drag:Lcom/htc/idlescreen/base/widget/IdleDraggable;
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v2       #drag:Lcom/htc/idlescreen/base/widget/IdleDraggable;
    :cond_1
    const-string v10, "Draggable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TouchListener state in EVENT_PRESS not work mInBacking:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mEnable:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mEnable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " drag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v2           #drag:Lcom/htc/idlescreen/base/widget/IdleDraggable;
    :cond_2
    iget v10, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 273
    const-string v10, "Draggable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TouchListener state in EVENT_RELEASE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->releaseCurDrag()V

    .line 275
    iget-object v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    sget-object v11, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    if-eq v10, v11, :cond_4

    .line 276
    iget-object v7, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    .line 277
    .local v7, stroke:Lcom/htc/fusion/fx/Stroke;
    iget-object v10, v7, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, v7, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float v3, v10, v11

    .line 278
    .local v3, dx:F
    iget-object v10, v7, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget-object v11, v7, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v4, v10, v11

    .line 279
    .local v4, dy:F
    invoke-direct {p0, v3, v4}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleMoveEvent(FF)V

    .line 281
    iget-object v6, v7, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    .line 282
    .local v6, point:Landroid/graphics/PointF;
    iget-object v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v6, v10}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 283
    .local v5, move:F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 284
    .local v8, time:J
    iget-wide v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchedTime:J

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 285
    .local v0, difTime:J
    const-string v10, "Draggable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TouchListener state in move:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " difTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchSlopSquare:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_3

    iget v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mLongPressTimeout:I

    int-to-long v10, v10

    cmp-long v10, v0, v10

    if-gez v10, :cond_3

    .line 288
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mIsClick:Z

    .line 289
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onClick()V

    .line 291
    :cond_3
    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v10, v11}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onRelease(FF)V

    goto/16 :goto_0

    .line 294
    .end local v0           #difTime:J
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v5           #move:F
    .end local v6           #point:Landroid/graphics/PointF;
    .end local v7           #stroke:Lcom/htc/fusion/fx/Stroke;
    .end local v8           #time:J
    :cond_4
    sget-object v10, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v10, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    goto/16 :goto_0

    .line 297
    :cond_5
    iget v10, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->releaseCurDrag()V

    .line 299
    const-string v10, "Draggable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TouchListener state in EVENT_CANCEL:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v10, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    iget-object v6, v10, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    .line 302
    .restart local v6       #point:Landroid/graphics/PointF;
    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndDrag(FFZ)V

    goto/16 :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 146
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "idle_state"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mYIdle:Lcom/htc/fusion/fx/Marker;

    .line 147
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "idle_state"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXIdle:Lcom/htc/fusion/fx/Marker;

    .line 148
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "left"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXLeft:Lcom/htc/fusion/fx/Marker;

    .line 149
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "right"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXRight:Lcom/htc/fusion/fx/Marker;

    .line 152
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->checkMarkerError()V

    .line 153
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "Scale_up"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    .line 155
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "Scale_down"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    .line 156
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v4, v4, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v5, v5, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    .line 158
    .local v0, duration:F
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mYIdle:Lcom/htc/fusion/fx/Marker;

    iget v4, v4, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mDropArea:Lcom/htc/idlescreen/base/widget/IdleDropArea;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/widget/IdleDropArea;->getYDropStart()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v3, v4

    .line 159
    .local v3, unlockDuration:F
    div-float v4, v0, v3

    iput v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUnlockToScale:F

    .line 162
    .end local v0           #duration:F
    .end local v3           #unlockDuration:F
    :cond_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "Opacity_off"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    .line 164
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    iget v4, v4, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    iget v5, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityDuration:F

    .line 166
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mBackListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 168
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEnabledGestures()I

    move-result v1

    .line 170
    .local v1, gesture:I
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 171
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mMoveListener:Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 174
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 176
    sget-object v4, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 177
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    .line 178
    .local v2, touchslop:I
    mul-int v4, v2, v2

    iput v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTouchSlopSquare:I

    .line 179
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    iput v4, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mLongPressTimeout:I

    .line 181
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->reset()V

    .line 182
    return-void
.end method

.method protected isDrop()Z
    .locals 4

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, dropInd:I
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mDropArea:Lcom/htc/idlescreen/base/widget/IdleDropArea;

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v2

    .line 419
    .local v2, y:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v1

    .line 420
    .local v1, x:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mDropArea:Lcom/htc/idlescreen/base/widget/IdleDropArea;

    invoke-virtual {v3, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleDropArea;->isDrop(FF)I

    move-result v0

    .line 429
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_0
    if-ltz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mIsDrop:Z

    .line 430
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mIsDrop:Z

    return v3

    .line 429
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method protected onDrag(FFZ)V
    .locals 0
    .parameter "dx"
    .parameter "dy"
    .parameter "isDrop"

    .prologue
    .line 500
    return-void
.end method

.method protected onDrop()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method protected onEndBack()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1776

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    .line 464
    return-void
.end method

.method protected onEndDrag(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropped"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->releaseCurDrag()V

    .line 489
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 490
    if-eqz p3, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onDrop()V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onStartBack()V

    goto :goto_0
.end method

.method protected onLongPress()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method protected onRelease(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    if-ne v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->isDrop()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndDrag(FFZ)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    goto :goto_0
.end method

.method protected onStartBack()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x41f0

    const/high16 v10, 0x3f00

    const/16 v7, 0x16

    const/4 v3, 0x0

    .line 434
    iput-boolean v12, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    .line 435
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1776

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 436
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1776

    const-wide/16 v5, 0x1f4

    invoke-static {v0, v1, v5, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 437
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v8

    .line 438
    .local v8, f1:F
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXIdle:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v9, v0

    .line 439
    .local v9, f2:F
    sub-float v0, v8, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v10

    div-float v4, v0, v11

    .line 441
    .local v4, speed:F
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v1, v8

    float-to-int v2, v9

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    .line 444
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v8

    .line 445
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mYIdle:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v9, v0

    .line 446
    sub-float v0, v8, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v10

    div-float v4, v0, v11

    .line 447
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v1, v8

    float-to-int v2, v9

    move v5, v12

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    .line 450
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUnlockToScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v8

    .line 452
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleDown:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v9, v0

    .line 454
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUnlockToScale:F

    mul-float/2addr v4, v0

    .line 455
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v1, v8

    float-to-int v2, v9

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    .line 459
    :cond_0
    return-void
.end method

.method protected onStartDrag(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 483
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/IdleState;->setCurDraggable(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    .line 484
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 485
    return-void
.end method

.method protected onTouch(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 467
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->TOUCHED:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 468
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mEnable:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onStartDrag(FF)V

    .line 471
    :cond_0
    return-void
.end method

.method public releaseCurDrag()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    .line 197
    .local v0, idleState:Lcom/htc/idlescreen/base/IdleState;
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getCurDraggable()Lcom/htc/idlescreen/base/widget/IdleDraggable;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setCurDraggable(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    .line 200
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->reset(Z)V

    .line 540
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .parameter "onlyPosition"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 514
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 515
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mXIdle:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mYIdle:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->chanegFrameOfXY(FF)V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mInBacking:Z

    .line 517
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 518
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->releaseCurDrag()V

    .line 519
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 521
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_scale:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mScaleUp:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 526
    :goto_0
    if-nez p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 529
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 536
    :cond_0
    :goto_1
    return-void

    .line 524
    :cond_1
    const-string v0, "Draggable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeline_scale or mScaleUp not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_2
    const-string v0, "Draggable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeline_opacity or mOpacityOff not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mEnable:Z

    .line 357
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->TOUCHED:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onStartDrag(FF)V

    .line 362
    :cond_0
    return-void
.end method

.method public setOpacity(FZ)V
    .locals 6
    .parameter "value"
    .parameter "animation"

    .prologue
    .line 589
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_0

    .line 590
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 591
    iget v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityDuration:F

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p1

    mul-float v1, v3, v4

    .line 592
    .local v1, dif:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mOpacityOff:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 593
    .local v2, goal:F
    if-eqz p2, :cond_1

    .line 594
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    .line 595
    .local v0, cur:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v4, v0

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 601
    .end local v0           #cur:F
    .end local v1           #dif:F
    .end local v2           #goal:F
    :cond_0
    :goto_0
    return-void

    .line 598
    .restart local v1       #dif:F
    .restart local v2       #goal:F
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_opacity:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_x:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 544
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->releaseCurDrag()V

    .line 186
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mTimeline_y:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 187
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 189
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 190
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 191
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 193
    :cond_0
    return-void
.end method
