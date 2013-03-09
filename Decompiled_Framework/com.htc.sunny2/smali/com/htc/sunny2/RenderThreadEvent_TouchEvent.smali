.class public Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "RenderThreadEvent_TouchEvent.java"


# static fields
.field private static RecycleEvents:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static RecycleEventsLocker:Ljava/lang/Integer;


# instance fields
.field protected mEventName:Ljava/lang/String;

.field private mMotionEvent1:Landroid/view/MotionEvent;

.field private mMotionEvent2:Landroid/view/MotionEvent;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mVariX:F

.field private mVariY:F

.field touchListener:Lcom/htc/sunny2/GLView$TouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/sunny2/Queue;

    const-string v1, "sunnyETE"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunny2/Queue;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object p2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object p2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;
    .locals 4

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;
    .locals 9

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;
    .locals 4

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method private static Recycle(Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunny2/Queue;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sunnyETE"

    const-string v2, "RecycleEvents.add() NG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object p4, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    return-void
.end method

.method private reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object p4, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iput-object p5, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iput p6, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mVariX:F

    iput p7, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mVariY:F

    return-void
.end method

.method private reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object p4, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    :cond_1
    iput-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-super {p0}, Lcom/htc/sunny2/RenderThreadEvent;->free()V

    return-void
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 5

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onSingleTapUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onSingleTapUpIRT(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onLongPress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onLongPressIRT(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iget v3, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mVariX:F

    iget v4, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mVariY:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/GLView$TouchListener;->onScrollIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onFling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iget v3, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mVariX:F

    iget v4, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mVariY:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/GLView$TouchListener;->onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onShowPress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onShowPressIRT(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onDownIRT(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onDoubleTap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onDoubleTapIRT(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onDoubleTapEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onDoubleTapEventIRT(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onSingleTapConfirmed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onSingleTapConfirmedIRT(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onScaleIRT(Landroid/view/ScaleGestureDetector;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScaleBegin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onScaleBeginIRT(Landroid/view/ScaleGestureDetector;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScaleEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onUpIRT(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScrollEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/GLView$TouchListener;->onScrollEndIRT(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public onRemovedIRT()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->free()V

    invoke-static {p0}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Recycle(Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;)V

    return-void
.end method
