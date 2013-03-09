.class Lcom/htc/opensense/widget/Gesture$DragBehavior;
.super Lcom/htc/opensense/widget/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragBehavior"
.end annotation


# instance fields
.field gesture:I

.field mDeltaX:F

.field mDeltaY:F

.field mDownEvt:Lcom/htc/opensense/widget/Gesture$Event;

.field mLastX:F

.field mLastY:F

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->gesture:I

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastX:F

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastY:F

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDeltaX:F

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDeltaY:F

    new-instance v0, Lcom/htc/opensense/widget/Gesture$Event;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/Gesture$Event;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 3

    const/16 v2, 0xd

    const/4 v1, 0x2

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$600(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    move-result-object v0

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->gesture:I

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/Gesture$Event;->copy(Lcom/htc/opensense/widget/Gesture$Event;)V

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastX:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastY:F

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$600(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    move-result-object v0

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->gesture:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$600(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->gesture:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$200(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$200(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v0

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    if-ge v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$200(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDeltaX:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDeltaY:F

    :cond_4
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastX:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastY:F

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    invoke-interface {v0, p0}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onDrag(Lcom/htc/opensense/widget/Gesture$DragBehavior;)Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->stopBubble()V

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    const-string v0, "GESTURE_DRAG"

    return-object v0
.end method

.method public getDistanceX()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDeltaX:F

    return v0
.end method

.method public getDistanceY()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDeltaY:F

    return v0
.end method

.method public getDragDistanceX()F
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDragDistanceY()F
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mDownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$DragBehavior;->mLastY:F

    sub-float/2addr v0, v1

    return v0
.end method
