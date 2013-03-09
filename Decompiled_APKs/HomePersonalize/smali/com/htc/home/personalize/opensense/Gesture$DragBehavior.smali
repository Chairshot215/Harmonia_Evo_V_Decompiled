.class Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;
.super Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragBehavior"
.end annotation


# instance fields
.field gesture:I

.field mDeltaX:F

.field mDeltaY:F

.field mDownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

.field mLastX:F

.field mLastY:F

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 481
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    .line 482
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->gesture:I

    .line 483
    iput v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastX:F

    iput v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastY:F

    .line 484
    iput v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDeltaX:F

    iput v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDeltaY:F

    .line 485
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/opensense/Gesture$Event;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    const/16 v2, 0xd

    const/4 v1, 0x2

    .line 496
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 498
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$600(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    move-result-object v0

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    if-ne v0, v2, :cond_2

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Event;->copy(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 500
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastX:F

    .line 501
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastY:F

    .line 502
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$600(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    move-result-object v0

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    if-ne v0, v2, :cond_1

    .line 503
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$600(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    .line 528
    :cond_1
    :goto_0
    return-void

    .line 507
    :cond_2
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v0, v1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v0

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    if-ge v0, v1, :cond_1

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 519
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iget v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDeltaX:F

    .line 520
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iget v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDeltaY:F

    .line 523
    :cond_4
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastX:F

    .line 524
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastY:F

    .line 526
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onDrag(Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;)Z

    .line 527
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->stopBubble()V

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x4

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const-string v0, "GESTURE_DRAG"

    return-object v0
.end method

.method public getDistanceX()F
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDeltaX:F

    return v0
.end method

.method public getDistanceY()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDeltaY:F

    return v0
.end method

.method public getDragDistanceX()F
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iget v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDragDistanceY()F
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mDownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iget v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->mLastY:F

    sub-float/2addr v0, v1

    return v0
.end method
