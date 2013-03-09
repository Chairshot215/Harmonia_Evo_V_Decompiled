.class public Lcom/htc/launcher/LeapController;
.super Ljava/lang/Object;
.source "LeapController.java"

# interfaces
.implements Lcom/htc/launcher/DragLeaper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/LeapController$LeapLayer;,
        Lcom/htc/launcher/LeapController$LeapAnimationPlayer;,
        Lcom/htc/launcher/LeapController$LeapListener;,
        Lcom/htc/launcher/LeapController$ScrollRunnable;,
        Lcom/htc/launcher/LeapController$ZoomDirection;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_TOUCH:Z = false

.field private static final LEAP_FINE_TUNE_ZOOM_IN_ANIMATION_DURATION:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "LeapMode"

.field public static final TOUCH_EVENT_HOLDER_MULTI_TOUCH:I = 0x2

.field public static final TOUCH_EVENT_HOLDER_NON:I = 0x0

.field public static final TOUCH_EVENT_HOLDER_SCROLLING:I = 0x1

.field private static final ZOOM_IN_ANIMATION_DURATION:I = 0x1f4

.field private static final ZOOM_OUT_ANIMATION_DURATION:I = 0x1f4

.field private static sRunnableHandler:Landroid/os/Handler;

.field private static sThumbnailScaleHorizontalRatio:F

.field private static sThumbnailScaleVerticalRatio:F


# instance fields
.field public mAnimationProgress:I

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Lcom/htc/launcher/widget/GestureDetector;

.field private mGestureListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

.field private mIsLeapMode:Z

.field private mLeapAnimationPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/LeapController$LeapAnimationPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;

.field private mLeapListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/LeapController$LeapListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingZoomInAnimation:Z

.field private mPlayingZoomOutAnimation:Z

.field private mRearrange:Z

.field private mRearrangeIndicator:Landroid/graphics/Bitmap;

.field private mRearrangeRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

.field private mSelectPage:I

.field private mTouchEventHolder:I

.field private mUIHandler:Landroid/os/Handler;

.field private mVirtualScrollX:I

.field private mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x4080

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/LeapController;->DEBUG_TOUCH:Z

    .line 63
    sput v1, Lcom/htc/launcher/LeapController;->sThumbnailScaleHorizontalRatio:F

    .line 65
    sput v1, Lcom/htc/launcher/LeapController;->sThumbnailScaleVerticalRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/LeapController$LeapLayer;)V
    .locals 3
    .parameter "context"
    .parameter "leapLayer"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/LeapController;->mUIHandler:Landroid/os/Handler;

    .line 43
    iput v2, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    .line 55
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    .line 57
    iput-boolean v2, p0, Lcom/htc/launcher/LeapController;->mRearrange:Z

    .line 59
    iput-boolean v2, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    .line 75
    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    iput-object v1, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 81
    iput v2, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 136
    new-instance v1, Lcom/htc/launcher/LeapController$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/LeapController$1;-><init>(Lcom/htc/launcher/LeapController;)V

    iput-object v1, p0, Lcom/htc/launcher/LeapController;->mGestureListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    .line 84
    iput-object p1, p0, Lcom/htc/launcher/LeapController;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;

    .line 89
    sget-object v1, Lcom/htc/launcher/LeapController;->sRunnableHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Leap animator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/launcher/LeapController;->sRunnableHandler:Landroid/os/Handler;

    .line 95
    .end local v0           #t:Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Lcom/htc/launcher/LeapController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/LeapController$ScrollRunnable;-><init>(Lcom/htc/launcher/LeapController;Z)V

    iput-object v1, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    .line 96
    new-instance v1, Lcom/htc/launcher/widget/GestureDetector;

    iget-object v2, p0, Lcom/htc/launcher/LeapController;->mGestureListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    invoke-direct {v1, p1, v2}, Lcom/htc/launcher/widget/GestureDetector;-><init>(Landroid/content/Context;Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;)V

    iput-object v1, p0, Lcom/htc/launcher/LeapController;->mGestureDetector:Lcom/htc/launcher/widget/GestureDetector;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/LeapController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$LeapLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/launcher/LeapController;->DEBUG_TOUCH:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ScrollRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/launcher/LeapController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/launcher/LeapController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mRearrange:Z

    return v0
.end method

.method static synthetic access$1500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/launcher/LeapController;->sRunnableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/launcher/LeapController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/LeapController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/LeapController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/launcher/LeapController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z

    return p1
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/htc/launcher/LeapController;->sThumbnailScaleHorizontalRatio:F

    return v0
.end method

.method static synthetic access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/launcher/LeapController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/launcher/LeapController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/launcher/LeapController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/launcher/LeapController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/launcher/LeapController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/launcher/LeapController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    return p1
.end method


# virtual methods
.method public addLeapAnimationPlayer(Lcom/htc/launcher/LeapController$LeapAnimationPlayer;)V
    .locals 1
    .parameter "animationPlayer"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public addLeapListener(Lcom/htc/launcher/LeapController$LeapListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

.method public cancelGesture()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mGestureDetector:Lcom/htc/launcher/widget/GestureDetector;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/GestureDetector;->cancelGesture()V

    .line 121
    return-void
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-eq v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController$ScrollRunnable;->stopScroll()V

    .line 424
    invoke-virtual {p0}, Lcom/htc/launcher/LeapController;->endLeapMode()V

    .line 427
    :cond_0
    return-void
.end method

.method public endLeapMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 359
    iget-boolean v2, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    if-nez v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    invoke-virtual {v2}, Lcom/htc/launcher/LeapController$ScrollRunnable;->stopScroll()V

    .line 365
    :cond_2
    iput-boolean v4, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    .line 367
    sget-object v2, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    iput-object v2, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 368
    iget-object v2, p0, Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;

    iget v3, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-interface {v2, v3}, Lcom/htc/launcher/LeapController$LeapLayer;->setCurrentPage(I)V

    .line 370
    iget-object v2, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 371
    iget-object v2, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LeapController$LeapListener;

    .line 372
    .local v1, listener:Lcom/htc/launcher/LeapController$LeapListener;
    iget v2, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-interface {v1, v2}, Lcom/htc/launcher/LeapController$LeapListener;->endLeap(I)V

    goto :goto_1

    .line 376
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/LeapController$LeapListener;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/launcher/LeapController;->setTouchEventHolder(I)V

    .line 377
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "LeapMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endLeapMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enterLeapMode()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 318
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sEnableThumbnailMode:Z

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iput-boolean v1, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    .line 321
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;

    invoke-interface {v0}, Lcom/htc/launcher/LeapController$LeapLayer;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    .line 322
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    iput-object v0, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 324
    iput-boolean v1, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z

    .line 325
    iput-boolean v4, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    .line 328
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/LeapController$LeapListener;

    .line 330
    .local v7, listener:Lcom/htc/launcher/LeapController$LeapListener;
    iget v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-interface {v7, v0}, Lcom/htc/launcher/LeapController$LeapListener;->beginLeap(I)V

    .line 331
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    invoke-interface {v7, v1, v0}, Lcom/htc/launcher/LeapController$LeapListener;->onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V

    goto :goto_1

    .line 339
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Lcom/htc/launcher/LeapController$LeapListener;
    :cond_2
    iget v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    iget-object v1, p0, Lcom/htc/launcher/LeapController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    .line 340
    iput v4, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 341
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 342
    .local v8, player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    iget v1, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    invoke-interface {v8, v0, v4, v1, v2}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomOutAnimationProgress(IIFI)V

    goto :goto_2

    .line 345
    .end local v8           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_3
    iget v0, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 346
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "LeapMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterLeapMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") by press home key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget v1, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    iget v2, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    iget v3, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v3, v3, 0x3e8

    iget v5, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v5, v5, 0x3e8

    mul-int/lit16 v5, v5, 0x1f4

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/LeapController$ScrollRunnable;->startScroll(IIIII)V

    goto/16 :goto_0

    .line 350
    :cond_5
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterLeapMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") by multi touch."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getSelectPage()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    return v0
.end method

.method public getVirtualScrollX()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    return v0
.end method

.method public isHandleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x2

    .line 107
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sEnableThumbnailMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    if-ne v0, v1, :cond_2

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mGestureDetector:Lcom/htc/launcher/widget/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/widget/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    iget v0, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    if-eqz v0, :cond_2

    .line 113
    :cond_1
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapMode()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mIsLeapMode:Z

    return v0
.end method

.method public leaveLeapMode()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSelect(), mSelectPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPlayZoomInAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sEnableThumbnailMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    if-eqz v0, :cond_2

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    iput-object v0, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 397
    iput-boolean v4, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    .line 398
    iput-boolean v3, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z

    .line 400
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/LeapController$LeapListener;

    .line 404
    .local v7, listener:Lcom/htc/launcher/LeapController$LeapListener;
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;

    invoke-interface {v7, v4, v0}, Lcom/htc/launcher/LeapController$LeapListener;->onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V

    goto :goto_1

    .line 408
    .end local v7           #listener:Lcom/htc/launcher/LeapController$LeapListener;
    :cond_4
    iput v3, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 409
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 410
    .local v8, player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget v0, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    iget v1, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    invoke-interface {v8, v0, v3, v1, v2}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomInAnimationProgress(IIFI)V

    goto :goto_2

    .line 412
    .end local v8           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_5
    iget v0, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget v1, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    iget v2, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    iget v3, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v3, v3, 0x3e8

    iget v4, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    iget-object v5, p0, Lcom/htc/launcher/LeapController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0c0045

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/htc/launcher/LeapController;->mVirtualScrollX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v5, v5, 0x3e8

    mul-int/lit16 v5, v5, 0x15e

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/LeapController$ScrollRunnable;->startScroll(IIIII)V

    goto :goto_0
.end method

.method public leaveLeapMode(I)V
    .locals 1
    .parameter "selectPage"

    .prologue
    .line 385
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sEnableThumbnailMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iput p1, p0, Lcom/htc/launcher/LeapController;->mSelectPage:I

    .line 387
    invoke-virtual {p0}, Lcom/htc/launcher/LeapController;->leaveLeapMode()V

    goto :goto_0
.end method

.method public setTouchEventHolder(I)V
    .locals 3
    .parameter "eventHolder"

    .prologue
    .line 129
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchEventHolder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iput p1, p0, Lcom/htc/launcher/LeapController;->mTouchEventHolder:I

    .line 131
    return-void
.end method

.method public zoomIn(I)V
    .locals 0
    .parameter "selectPage"

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/htc/launcher/LeapController;->leaveLeapMode(I)V

    .line 597
    return-void
.end method

.method public zoomOut()V
    .locals 0

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/htc/launcher/LeapController;->enterLeapMode()V

    .line 601
    return-void
.end method
