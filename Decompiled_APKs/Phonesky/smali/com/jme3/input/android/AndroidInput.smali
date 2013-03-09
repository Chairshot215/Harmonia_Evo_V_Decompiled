.class public Lcom/jme3/input/android/AndroidInput;
.super Landroid/opengl/GLSurfaceView;
.source "AndroidInput.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/jme3/input/TouchInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/input/android/AndroidInput$1;
    }
.end annotation


# static fields
.field private static final ANDROID_TO_JME:[I

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field public dontSendHistory:Z

.field private final eventPool:Lcom/jme3/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/RingBuffer",
            "<",
            "Lcom/jme3/input/event/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/RingBuffer",
            "<",
            "Lcom/jme3/input/event/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventQueue:Lcom/jme3/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/RingBuffer",
            "<",
            "Lcom/jme3/input/event/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private isInitialized:Z

.field public keyboardEventsEnabled:Z

.field private final lastPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/math/Vector2f;",
            ">;"
        }
    .end annotation
.end field

.field private lastX:I

.field private lastY:I

.field private listener:Lcom/jme3/input/RawInputListener;

.field public mouseEventsEnabled:Z

.field public mouseEventsInvertX:Z

.field public mouseEventsInvertY:Z

.field private scaledetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/jme3/input/android/AndroidInput;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/input/android/AndroidInput;->logger:Ljava/util/logging/Logger;

    .line 53
    const/16 v0, 0x5c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/input/android/AndroidInput;->ANDROID_TO_JME:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertX:Z

    .line 37
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertY:Z

    .line 38
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->keyboardEventsEnabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->dontSendHistory:Z

    .line 41
    new-instance v0, Lcom/jme3/util/RingBuffer;

    invoke-direct {v0, v2}, Lcom/jme3/util/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    .line 42
    new-instance v0, Lcom/jme3/util/RingBuffer;

    invoke-direct {v0, v2}, Lcom/jme3/util/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    .line 43
    new-instance v0, Lcom/jme3/util/RingBuffer;

    invoke-direct {v0, v2}, Lcom/jme3/util/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->lastPositions:Ljava/util/HashMap;

    .line 51
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->isInitialized:Z

    .line 52
    iput-object v3, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    .line 160
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, v3, p0, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->detector:Landroid/view/GestureDetector;

    .line 161
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->scaledetector:Landroid/view/ScaleGestureDetector;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "ctx"
    .parameter "attribs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertX:Z

    .line 37
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertY:Z

    .line 38
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->keyboardEventsEnabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->dontSendHistory:Z

    .line 41
    new-instance v0, Lcom/jme3/util/RingBuffer;

    invoke-direct {v0, v2}, Lcom/jme3/util/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    .line 42
    new-instance v0, Lcom/jme3/util/RingBuffer;

    invoke-direct {v0, v2}, Lcom/jme3/util/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    .line 43
    new-instance v0, Lcom/jme3/util/RingBuffer;

    invoke-direct {v0, v2}, Lcom/jme3/util/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->lastPositions:Ljava/util/HashMap;

    .line 51
    iput-boolean v1, p0, Lcom/jme3/input/android/AndroidInput;->isInitialized:Z

    .line 52
    iput-object v3, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    .line 153
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, v3, p0, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->detector:Landroid/view/GestureDetector;

    .line 154
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/jme3/input/android/AndroidInput;->scaledetector:Landroid/view/ScaleGestureDetector;

    .line 156
    return-void
.end method

.method private generateEvents()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, -0x1

    .line 388
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    if-eqz v6, :cond_5

    .line 394
    :goto_0
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v6}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 395
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    monitor-enter v6

    .line 396
    :try_start_0
    iget-object v9, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v9}, Lcom/jme3/util/RingBuffer;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/input/event/TouchEvent;

    .line 397
    .local v8, event:Lcom/jme3/input/event/TouchEvent;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    if-eqz v8, :cond_0

    .line 399
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    invoke-interface {v6, v8}, Lcom/jme3/input/RawInputListener;->onTouchEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 401
    iget-boolean v6, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsEnabled:Z

    if-eqz v6, :cond_0

    .line 402
    iget-boolean v6, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertX:Z

    if-eqz v6, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v6, v9

    .line 408
    .local v1, newX:I
    :goto_1
    iget-boolean v6, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertY:Z

    if-eqz v6, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v6

    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    sub-int v2, v6, v9

    .line 414
    .local v2, newY:I
    :goto_2
    sget-object v6, Lcom/jme3/input/android/AndroidInput$1;->$SwitchMap$com$jme3$input$event$TouchEvent$Type:[I

    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getType()Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/input/event/TouchEvent$Type;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    .line 457
    .end local v1           #newX:I
    .end local v2           #newY:I
    :cond_0
    :goto_3
    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->isConsumed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 458
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    monitor-enter v6

    .line 459
    :try_start_1
    iget-object v9, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v9, v8}, Lcom/jme3/util/RingBuffer;->push(Ljava/lang/Object;)V

    .line 460
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 397
    .end local v8           #event:Lcom/jme3/input/event/TouchEvent;
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 405
    .restart local v8       #event:Lcom/jme3/input/event/TouchEvent;
    :cond_1
    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getX()F

    move-result v6

    float-to-int v1, v6

    .restart local v1       #newX:I
    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getY()F

    move-result v6

    float-to-int v2, v6

    .restart local v2       #newY:I
    goto :goto_2

    .line 417
    :pswitch_0
    new-instance v7, Lcom/jme3/input/event/MouseButtonEvent;

    const/4 v6, 0x1

    invoke-direct {v7, v5, v6, v1, v2}, Lcom/jme3/input/event/MouseButtonEvent;-><init>(IZII)V

    .line 418
    .local v7, btn:Lcom/jme3/input/event/MouseButtonEvent;
    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getTime()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/jme3/input/event/MouseButtonEvent;->setTime(J)V

    .line 419
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    invoke-interface {v6, v7}, Lcom/jme3/input/RawInputListener;->onMouseButtonEvent(Lcom/jme3/input/event/MouseButtonEvent;)V

    .line 421
    iput v11, p0, Lcom/jme3/input/android/AndroidInput;->lastX:I

    .line 422
    iput v11, p0, Lcom/jme3/input/android/AndroidInput;->lastY:I

    goto :goto_3

    .line 427
    .end local v7           #btn:Lcom/jme3/input/event/MouseButtonEvent;
    :pswitch_1
    new-instance v7, Lcom/jme3/input/event/MouseButtonEvent;

    invoke-direct {v7, v5, v5, v1, v2}, Lcom/jme3/input/event/MouseButtonEvent;-><init>(IZII)V

    .line 428
    .restart local v7       #btn:Lcom/jme3/input/event/MouseButtonEvent;
    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getTime()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/jme3/input/event/MouseButtonEvent;->setTime(J)V

    .line 429
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    invoke-interface {v6, v7}, Lcom/jme3/input/RawInputListener;->onMouseButtonEvent(Lcom/jme3/input/event/MouseButtonEvent;)V

    .line 431
    iput v11, p0, Lcom/jme3/input/android/AndroidInput;->lastX:I

    .line 432
    iput v11, p0, Lcom/jme3/input/android/AndroidInput;->lastY:I

    goto :goto_3

    .line 438
    .end local v7           #btn:Lcom/jme3/input/event/MouseButtonEvent;
    :pswitch_2
    iget v6, p0, Lcom/jme3/input/android/AndroidInput;->lastX:I

    if-eq v6, v11, :cond_3

    .line 439
    iget v6, p0, Lcom/jme3/input/android/AndroidInput;->lastX:I

    sub-int v3, v1, v6

    .line 440
    .local v3, dx:I
    iget v6, p0, Lcom/jme3/input/android/AndroidInput;->lastY:I

    sub-int v4, v2, v6

    .line 445
    .local v4, dy:I
    :goto_4
    new-instance v0, Lcom/jme3/input/event/MouseMotionEvent;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/jme3/input/event/MouseMotionEvent;-><init>(IIIIII)V

    .line 446
    .local v0, mot:Lcom/jme3/input/event/MouseMotionEvent;
    invoke-virtual {v8}, Lcom/jme3/input/event/TouchEvent;->getTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/jme3/input/event/MouseMotionEvent;->setTime(J)V

    .line 447
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    invoke-interface {v6, v0}, Lcom/jme3/input/RawInputListener;->onMouseMotionEvent(Lcom/jme3/input/event/MouseMotionEvent;)V

    .line 448
    iput v1, p0, Lcom/jme3/input/android/AndroidInput;->lastX:I

    .line 449
    iput v2, p0, Lcom/jme3/input/android/AndroidInput;->lastY:I

    goto :goto_3

    .line 442
    .end local v0           #mot:Lcom/jme3/input/event/MouseMotionEvent;
    .end local v3           #dx:I
    .end local v4           #dy:I
    :cond_3
    const/4 v3, 0x0

    .line 443
    .restart local v3       #dx:I
    const/4 v4, 0x0

    .restart local v4       #dy:I
    goto :goto_4

    .line 463
    .end local v1           #newX:I
    .end local v2           #newY:I
    .end local v3           #dx:I
    .end local v4           #dy:I
    :cond_4
    iget-object v6, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    monitor-enter v6

    .line 464
    :try_start_3
    iget-object v9, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v9, v8}, Lcom/jme3/util/RingBuffer;->push(Ljava/lang/Object;)V

    .line 465
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    .line 470
    .end local v8           #event:Lcom/jme3/input/event/TouchEvent;
    :cond_5
    return-void

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent(Z)Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    return-object v0
.end method

.method private getNextFreeTouchEvent(Z)Lcom/jme3/input/event/TouchEvent;
    .locals 6
    .parameter "wait"

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, evt:Lcom/jme3/input/event/TouchEvent;
    iget-object v5, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    monitor-enter v5

    .line 178
    :try_start_0
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->size()I

    move-result v3

    .line 179
    .local v3, size:I
    :goto_0
    if-lez v3, :cond_0

    .line 180
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/jme3/input/event/TouchEvent;

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Lcom/jme3/input/event/TouchEvent;->isConsumed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPoolUnConsumed:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4, v1}, Lcom/jme3/util/RingBuffer;->push(Ljava/lang/Object;)V

    .line 183
    const/4 v1, 0x0

    .line 187
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 189
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-nez v1, :cond_2

    .line 192
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 193
    sget-object v4, Lcom/jme3/input/android/AndroidInput;->logger:Ljava/util/logging/Logger;

    const-string v5, "eventPool buffer underrun"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    monitor-enter v5

    .line 197
    :try_start_1
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v2

    .line 198
    .local v2, isEmpty:Z
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    const-wide/16 v4, 0x32

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :goto_1
    if-nez v2, :cond_1

    .line 204
    iget-object v5, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    monitor-enter v5

    .line 205
    :try_start_3
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/jme3/input/event/TouchEvent;

    move-object v1, v0

    .line 206
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 216
    .end local v2           #isEmpty:Z
    :cond_2
    :goto_2
    return-object v1

    .line 189
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 198
    .restart local v3       #size:I
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 206
    .restart local v2       #isEmpty:Z
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 207
    .end local v2           #isEmpty:Z
    :cond_3
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    new-instance v1, Lcom/jme3/input/event/TouchEvent;

    .end local v1           #evt:Lcom/jme3/input/event/TouchEvent;
    invoke-direct {v1}, Lcom/jme3/input/event/TouchEvent;-><init>()V

    .line 209
    .restart local v1       #evt:Lcom/jme3/input/event/TouchEvent;
    sget-object v4, Lcom/jme3/input/android/AndroidInput;->logger:Ljava/util/logging/Logger;

    const-string v5, "eventPool buffer underrun"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_4
    iget-object v5, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    monitor-enter v5

    .line 212
    :try_start_7
    iget-object v4, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v4}, Lcom/jme3/util/RingBuffer;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/jme3/input/event/TouchEvent;

    move-object v1, v0

    .line 213
    monitor-exit v5

    goto :goto_2

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    .line 201
    .restart local v2       #isEmpty:Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private processEvent(Lcom/jme3/input/event/TouchEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v0, p1}, Lcom/jme3/util/RingBuffer;->push(Ljava/lang/Object;)V

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/input/android/AndroidInput;->isInitialized:Z

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v0}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v0}, Lcom/jme3/util/RingBuffer;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 354
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v0}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/jme3/input/android/AndroidInput;->eventQueue:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v0}, Lcom/jme3/util/RingBuffer;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 357
    :cond_1
    return-void
.end method

.method public getInputTimeNanos()J
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x400

    if-ge v0, v2, :cond_0

    .line 340
    new-instance v1, Lcom/jme3/input/event/TouchEvent;

    invoke-direct {v1}, Lcom/jme3/input/event/TouchEvent;-><init>()V

    .line 341
    .local v1, item:Lcom/jme3/input/event/TouchEvent;
    iget-object v2, p0, Lcom/jme3/input/android/AndroidInput;->eventPool:Lcom/jme3/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/jme3/util/RingBuffer;->push(Ljava/lang/Object;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1           #item:Lcom/jme3/input/event/TouchEvent;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jme3/input/android/AndroidInput;->isInitialized:Z

    .line 344
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 502
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 503
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 506
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 507
    const/4 v1, 0x1

    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "event"
    .parameter "event2"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 488
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->FLING:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 489
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 491
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 493
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 298
    .local v0, evt:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;)V

    .line 299
    invoke-virtual {v0, p1}, Lcom/jme3/input/event/TouchEvent;->setKeyCode(I)V

    .line 300
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setCharacters(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 304
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 307
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 308
    :cond_0
    const/4 v1, 0x0

    .line 310
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 318
    .local v0, evt:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;)V

    .line 319
    invoke-virtual {v0, p1}, Lcom/jme3/input/event/TouchEvent;->setKeyCode(I)V

    .line 320
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setCharacters(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 324
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 327
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 330
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 479
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 480
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 483
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 484
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "scaleGestureDetector"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 528
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 529
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 530
    invoke-virtual {v0, v6}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 531
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 532
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setScaleSpan(F)V

    .line 533
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setScaleFactor(F)V

    .line 534
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 537
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "scaleGestureDetector"

    .prologue
    const/4 v4, 0x0

    .line 515
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 516
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 517
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 518
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 519
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setScaleSpan(F)V

    .line 520
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setScaleFactor(F)V

    .line 521
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 524
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 6
    .parameter "scaleGestureDetector"

    .prologue
    const/4 v4, 0x0

    .line 541
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 542
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 543
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 544
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 545
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setScaleSpan(F)V

    .line 546
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setScaleFactor(F)V

    .line 547
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 548
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x0

    .line 551
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 552
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, -0x4080

    mul-float v5, p4, v4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 553
    invoke-virtual {v0, v6}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 555
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 557
    return v6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 562
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 563
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 565
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 566
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 569
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 570
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->TAP:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 573
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 574
    const/4 v1, 0x1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 224
    const/4 v7, 0x0

    .line 227
    .local v7, bWasHandled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v6, v1, 0xff

    .line 228
    .local v6, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v11, v1, 0x8

    .line 230
    .local v11, pointerIndex:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 235
    .local v10, pointerId:I
    packed-switch v6, :pswitch_data_0

    .line 288
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/jme3/input/android/AndroidInput;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    iget-object v1, p0, Lcom/jme3/input/android/AndroidInput;->scaledetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    return v7

    .line 238
    :pswitch_1
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 239
    .local v0, touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 240
    invoke-virtual {v0, v10}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 242
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPressure(F)V

    .line 243
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 245
    const/4 v7, 0x1

    .line 246
    goto :goto_0

    .line 252
    .end local v0           #touch:Lcom/jme3/input/event/TouchEvent;
    :pswitch_2
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 253
    .restart local v0       #touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->UP:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 254
    invoke-virtual {v0, v10}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 256
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPressure(F)V

    .line 257
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 260
    const/4 v7, 0x1

    .line 261
    goto :goto_0

    .line 266
    .end local v0           #touch:Lcom/jme3/input/event/TouchEvent;
    :pswitch_3
    const/4 v9, 0x0

    .local v9, p:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/jme3/input/android/AndroidInput;->lastPositions:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector2f;

    .line 268
    .local v8, lastPos:Lcom/jme3/math/Vector2f;
    if-nez v8, :cond_0

    .line 269
    new-instance v8, Lcom/jme3/math/Vector2f;

    .end local v8           #lastPos:Lcom/jme3/math/Vector2f;
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {v8, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    .line 270
    .restart local v8       #lastPos:Lcom/jme3/math/Vector2f;
    iget-object v1, p0, Lcom/jme3/input/android/AndroidInput;->lastPositions:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->getNextFreeTouchEvent()Lcom/jme3/input/event/TouchEvent;

    move-result-object v0

    .line 273
    .restart local v0       #touch:Lcom/jme3/input/event/TouchEvent;
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, v8, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v5, v12

    iget v12, v8, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 274
    invoke-virtual {v0, v10}, Lcom/jme3/input/event/TouchEvent;->setPointerId(I)V

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent;->setTime(J)V

    .line 276
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/event/TouchEvent;->setPressure(F)V

    .line 277
    invoke-direct {p0, v0}, Lcom/jme3/input/android/AndroidInput;->processEvent(Lcom/jme3/input/event/TouchEvent;)V

    .line 278
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/input/android/AndroidInput;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 266
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 280
    .end local v0           #touch:Lcom/jme3/input/event/TouchEvent;
    .end local v8           #lastPos:Lcom/jme3/math/Vector2f;
    :cond_1
    const/4 v7, 0x1

    .line 281
    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInputListener(Lcom/jme3/input/RawInputListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/jme3/input/android/AndroidInput;->listener:Lcom/jme3/input/RawInputListener;

    .line 367
    return-void
.end method

.method public setMouseEventsEnabled(Z)V
    .locals 0
    .parameter "mouseEventsEnabled"

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsEnabled:Z

    .line 603
    return-void
.end method

.method public setMouseEventsInvertX(Z)V
    .locals 0
    .parameter "mouseEventsInvertX"

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertX:Z

    .line 619
    return-void
.end method

.method public setMouseEventsInvertY(Z)V
    .locals 0
    .parameter "mouseEventsInvertY"

    .prologue
    .line 610
    iput-boolean p1, p0, Lcom/jme3/input/android/AndroidInput;->mouseEventsInvertY:Z

    .line 611
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/jme3/input/android/AndroidInput;->generateEvents()V

    .line 385
    return-void
.end method
