.class Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;
.super Lcom/htc/opensense/widget/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
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

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->lastTime:J

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 9
    .parameter "evt"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x4296

    const/4 v4, 0x1

    .line 445
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    .line 447
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    if-eq v0, v4, :cond_1

    .line 449
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #setter for: Lcom/htc/opensense/widget/Gesture;->mDoubleTap:Z
    invoke-static {v0, v6}, Lcom/htc/opensense/widget/Gesture;->access$002(Lcom/htc/opensense/widget/Gesture;Z)Z

    .line 450
    iput-wide v7, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->lastTime:J

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-ne v0, v4, :cond_0

    .line 458
    iget-wide v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    iget-wide v2, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->lastTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/htc/opensense/widget/Gesture;->access$300()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->tapX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->tapY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    .line 461
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-ne v0, v4, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #setter for: Lcom/htc/opensense/widget/Gesture;->mDoubleTap:Z
    invoke-static {v0, v4}, Lcom/htc/opensense/widget/Gesture;->access$002(Lcom/htc/opensense/widget/Gesture;Z)Z

    .line 464
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    invoke-interface {v0, p0}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onDoubleTap(Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;)Z

    .line 465
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->stopBubble()V

    .line 466
    iput-wide v7, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->lastTime:J

    goto :goto_0

    .line 470
    :cond_2
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->tapX:F

    .line 471
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->tapY:F

    .line 472
    iget-wide v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->lastTime:J

    .line 473
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #setter for: Lcom/htc/opensense/widget/Gesture;->mDoubleTap:Z
    invoke-static {v0, v6}, Lcom/htc/opensense/widget/Gesture;->access$002(Lcom/htc/opensense/widget/Gesture;Z)Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x7

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    const-string v0, "Gesture_Double_Click"

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->tapX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->tapY:F

    return v0
.end method
