.class Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
.super Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomBehavior"
.end annotation


# static fields
.field private static final Threhold:F = 2.01f


# instance fields
.field gesture:I

.field mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

.field private mMoveX:F

.field private mMoveY:F

.field private mWeight:F

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    .line 548
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    .line 550
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/opensense/Gesture$Event;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    .line 552
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mWeight:F

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 14
    .parameter "evt"

    .prologue
    const/4 v13, 0x0

    const-wide/high16 v11, 0x4000

    const/4 v9, 0x2

    .line 573
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 575
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    if-nez v7, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v7, v9, :cond_2

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    if-ne v7, v9, :cond_2

    .line 606
    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x6

    if-ne v7, v8, :cond_2

    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    if-ne v7, v9, :cond_2

    .line 607
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    invoke-virtual {v7, p1}, Lcom/htc/home/personalize/opensense/Gesture$Event;->copy(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 608
    const/16 v7, 0xd

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    .line 609
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v7, v7, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v7, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onSecondFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z

    .line 610
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->stopBubble()V

    goto :goto_0

    .line 615
    :cond_2
    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v7, v9, :cond_0

    .line 617
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    if-ne v7, v9, :cond_4

    :cond_3
    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    if-lt v7, v9, :cond_4

    .line 618
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    invoke-virtual {v7, p1}, Lcom/htc/home/personalize/opensense/Gesture$Event;->copy(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 619
    const/16 v7, 0xc

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    .line 620
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v7, v7, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v7, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onSecondFingerDown(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z

    .line 621
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->stopBubble()V

    goto :goto_0

    .line 625
    :cond_4
    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    if-lt v7, v9, :cond_0

    .line 629
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iget-object v8, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v8}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v8

    iget v8, v8, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX2:F

    sub-float v3, v7, v8

    .line 630
    .local v3, lastDx:F
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v7

    iget v7, v7, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iget-object v8, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v8}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v8

    iget v8, v8, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY2:F

    sub-float v4, v7, v8

    .line 631
    .local v4, lastDy:F
    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iget v8, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX2:F

    sub-float v1, v7, v8

    .line 632
    .local v1, dx:F
    iget v7, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iget v8, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY2:F

    sub-float v2, v7, v8

    .line 633
    .local v2, dy:F
    float-to-double v7, v1

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v6, v7

    .line 634
    .local v6, len:F
    float-to-double v7, v3

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 635
    .local v5, lastLen:F
    sub-float v0, v6, v5

    .line 637
    .local v0, diff:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x4000a3d7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 638
    const/4 v0, 0x0

    .line 639
    goto/16 :goto_0

    .line 642
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mWeight:F

    .line 645
    sub-float v7, v1, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mMoveX:F

    .line 646
    sub-float v7, v2, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mMoveY:F

    .line 659
    cmpl-float v7, v0, v13

    if-lez v7, :cond_7

    .line 660
    const/16 v7, 0x8

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    .line 661
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v7, v7, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v7, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onZoomIn(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z

    .line 666
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->stopBubble()V

    goto/16 :goto_0

    .line 662
    :cond_7
    cmpg-float v7, v0, v13

    if-gez v7, :cond_6

    .line 663
    const/16 v7, 0x9

    iput v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    .line 664
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v7, v7, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v7, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onZoomOut(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z

    goto :goto_1
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->gesture:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "Gesture_Zoom_In"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Gesture_Zoom_Out"

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget v1, v1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX2:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget v0, v0, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    iget v1, v1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY2:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getMovementX()F
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mMoveX:F

    return v0
.end method

.method public getMovementY()F
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mMoveY:F

    return v0
.end method

.method public weight()F
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->mWeight:F

    return v0
.end method
