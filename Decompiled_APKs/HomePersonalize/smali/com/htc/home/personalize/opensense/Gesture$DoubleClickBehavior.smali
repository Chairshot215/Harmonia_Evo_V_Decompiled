.class Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;
.super Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoubleClickBehavior"
.end annotation


# static fields
.field private static final DoubleTapSlopX:I = 0x4b

.field private static final DoubleTapSlopY:I = 0x4b


# instance fields
.field private lastTime:J

.field private tapX:F

.field private tapY:F

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->lastTime:J

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 6
    .parameter "evt"

    .prologue
    const/high16 v5, 0x4296

    const/4 v4, 0x1

    .line 441
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 449
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v0, v4, :cond_0

    .line 450
    iget-wide v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mTime:J

    iget-wide v2, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->lastTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/htc/home/personalize/opensense/Gesture;->access$300()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iget v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->tapX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iget v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->tapY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 453
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v0, v4, :cond_0

    .line 455
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #setter for: Lcom/htc/home/personalize/opensense/Gesture;->mDoubleTap:Z
    invoke-static {v0, v4}, Lcom/htc/home/personalize/opensense/Gesture;->access$002(Lcom/htc/home/personalize/opensense/Gesture;Z)Z

    .line 456
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onDoubleTap(Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;)Z

    .line 457
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->stopBubble()V

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->lastTime:J

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->tapX:F

    .line 463
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->tapY:F

    .line 464
    iget-wide v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mTime:J

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->lastTime:J

    .line 465
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/opensense/Gesture;->mDoubleTap:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/opensense/Gesture;->access$002(Lcom/htc/home/personalize/opensense/Gesture;Z)Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x7

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    const-string v0, "Gesture_Double_Click"

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->tapX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->tapY:F

    return v0
.end method
