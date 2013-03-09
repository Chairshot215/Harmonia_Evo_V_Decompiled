.class Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointerTracker"
.end annotation


# static fields
.field private static final COEFFICIENT_ACTIVE_POINTER:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PointerTracker"


# instance fields
.field private mActivePointers:I

.field private mHasMovingActivePointer:Z

.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEventAction:I

.field private mLastReceivedUpPointerActive:Z

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerId:I

.field private mPrimaryActivePointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field private final mThresholdActivePointer:D

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x20

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedHoverEventAction:I

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mThresholdActivePointer:D

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z

    move-result v0

    return v0
.end method

.method private computePointerDeltaMove(ILandroid/view/MotionEvent;)F
    .locals 7

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    aget v4, v4, v2

    sub-float v0, v3, v4

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    aget v4, v4, v2

    sub-float v1, v3, v4

    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private detectActivePointers(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->computePointerDeltaMove(ILandroid/view/MotionEvent;)F

    move-result v2

    float-to-double v5, v2

    iget-wide v7, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mThresholdActivePointer:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    shl-int v3, v9, v4

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    iput-boolean v9, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private findPrimaryActivePointer()I
    .locals 8

    const/4 v6, -0x1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    array-length v0, v7

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v1, v7, v3

    cmp-long v7, v1, v4

    if-gez v7, :cond_0

    move-wide v4, v1

    move v6, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method private handleInjectedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    return-void
.end method

.method private handleInjectedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedDownEventTime:J

    :cond_0
    return-void
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v1

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    iput-boolean v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    if-nez v2, :cond_0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    goto :goto_0
.end method

.method private handleReceivedPointerMove(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->detectActivePointers(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    aput v4, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    aput v4, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    if-ne v2, v1, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    :cond_1
    return-void
.end method

.method private isActiveOrWasLastActiveUpPointer(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    return-void
.end method

.method public getActivePointerCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointerDownCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverAction()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedHoverEventAction:I

    return v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerId()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    return v0
.end method

.method public getNotInjectedActivePointerCount()I
    .locals 3

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    xor-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    return v1
.end method

.method public getPrimaryActivePointerId()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->findPrimaryActivePointer()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isActivePointer(I)Z
    .locals 3

    const/4 v1, 0x1

    shl-int v0, v1, p1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInjectedPointerDown(I)Z
    .locals 3

    const/4 v1, 0x1

    shl-int v0, v1, p1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReceivedPointerDown(I)Z
    .locals 3

    const/4 v1, 0x1

    shl-int v0, v1, p1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerDown(ILandroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedDownEventTime:J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedHoverEventAction:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public populateActivePointerIds([I)V
    .locals 4

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nActive pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPrimary active pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasLastReceivedUpPointerActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    return v0
.end method
