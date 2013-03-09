.class public Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityInputFilter$Explorer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    }
.end annotation


# static fields
.field private static final ACTIVATION_TIME_SLOP:J = 0x7d0L

.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DELAY_SEND_HOVER_ENTER:J = 0xc8L

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG_INJECTED:Ljava/lang/String; = "TouchExplorer-INJECTED"

.field private static final LOG_TAG_RECEIVED:Ljava/lang/String; = "TouchExplorer-RECEIVED"

.field private static final LOG_TAG_STATE:Ljava/lang/String; = "TouchExplorer-STATE"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCurrentState:I

.field private mDraggingPointerId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInputFilter:Lcom/android/server/wm/InputFilter;

.field private mLastTouchExploreEvent:Landroid/view/MotionEvent;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private final mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

.field private final mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

.field private final mTempPointerIds:[I

.field private final mTouchExplorationTapSlop:I

.field private mTouchExploreGestureInProgress:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputFilter;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInputFilter:Lcom/android/server/wm/InputFilter;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchExplorationTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/accessibility/TouchExplorer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private computeInjectionAction(II)I
    .locals 3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private ensureHoverExitSent(Landroid/view/MotionEvent;II)V
    .locals 3

    const/16 v2, 0xa

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_0
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "STATE_TOUCH_EXPLORING"

    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, "STATE_DRAGGING"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_DELEGATING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V

    return-void

    :pswitch_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getNotInjectedActivePointerCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v2

    if-nez v2, :cond_0

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v1, v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Dragging state can be reached only if two pointers are already down"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    :pswitch_7
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;I)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    packed-switch v10, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The must always be one active pointer intouch exploring state!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    const/4 v3, 0x1

    shl-int v6, v3, v29

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v22

    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    const/16 v5, 0x9

    const-wide/16 v8, 0xc8

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->post(Landroid/view/MotionEvent;IIIJ)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v23

    sub-long v14, v27, v23

    const-wide/16 v3, 0x7d0

    cmp-long v3, v14, v3

    if-gtz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;IJ)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v30

    const/4 v3, 0x1

    shl-int v6, v3, v29

    packed-switch v10, :pswitch_data_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-nez v3, :cond_6

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-double v3, v3

    cmpl-double v3, v25, v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v22

    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_4

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_4
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #calls: Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPenidng()Z
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-float v3, v3

    cmpl-float v3, v25, v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastReceivedUpPointerId()I

    move-result v29

    const/4 v3, 0x1

    shl-int v6, v3, v29

    packed-switch v10, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_d

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastReceivedUpPointerDownTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    sub-long v12, v18, v20

    const-wide/16 v3, 0x7d0

    cmp-long v3, v12, v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    const/4 v3, 0x1

    shl-int v6, v3, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    invoke-virtual {v12, v11}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->populateActivePointerIds([I)V

    const/16 v21, 0x0

    aget v21, v11, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    const/16 v21, 0x1

    aget v21, v11, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    invoke-virtual {v12, v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v21

    sub-float v3, v7, v21

    invoke-virtual {v12, v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v21

    sub-float v4, v8, v21

    const/16 v21, 0x0

    cmpl-float v21, v3, v21

    if-nez v21, :cond_0

    const/16 v21, 0x0

    cmpl-float v21, v4, v21

    if-nez v21, :cond_0

    const/16 v21, 0x1

    :goto_0
    return v21

    :cond_0
    mul-float v21, v3, v3

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v5, v0

    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-lez v21, :cond_1

    div-float v9, v3, v5

    :goto_1
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-lez v21, :cond_2

    div-float v10, v4, v5

    :goto_2
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v21

    sub-float v13, v17, v21

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v21

    sub-float v14, v18, v21

    const/16 v21, 0x0

    cmpl-float v21, v13, v21

    if-nez v21, :cond_3

    const/16 v21, 0x0

    cmpl-float v21, v14, v21

    if-nez v21, :cond_3

    const/16 v21, 0x1

    goto :goto_0

    :cond_1
    move v9, v3

    goto :goto_1

    :cond_2
    move v10, v4

    goto :goto_2

    :cond_3
    mul-float v21, v13, v13

    mul-float v22, v14, v14

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v15, v0

    const/16 v21, 0x0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_4

    div-float v19, v13, v15

    :goto_3
    const/16 v21, 0x0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_5

    div-float v20, v14, v15

    :goto_4
    mul-float v21, v9, v19

    mul-float v22, v10, v20

    add-float v2, v21, v22

    const v21, 0x3f067b80

    cmpg-float v21, v2, v21

    if-gez v21, :cond_6

    const/16 v21, 0x0

    goto :goto_0

    :cond_4
    move/from16 v19, v13

    goto :goto_3

    :cond_5
    move/from16 v20, v14

    goto :goto_4

    :cond_6
    const/16 v21, 0x1

    goto :goto_0
.end method

.method private sendAccessibilityEvent(I)V
    .locals 2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    shl-int v1, v3, v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method private sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-eqz v6, :cond_0

    shl-int v6, v7, v3

    or-int/2addr v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_2

    shl-int v6, v7, v3

    or-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    move-object v0, p1

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    :goto_1
    const/high16 v1, 0x4000

    or-int/2addr p4, v1

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInputFilter:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/wm/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1
.end method

.method private sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {p0, p1, v7, v8, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    #calls: Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z
    invoke-static {v6, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    #calls: Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z
    invoke-static {v6, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    shl-int/2addr v7, v3

    or-int/2addr v4, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-direct {p0, p1, v7, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    return-void
.end method

.method public clear(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->onReceivedMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;I)V

    :goto_0
    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
