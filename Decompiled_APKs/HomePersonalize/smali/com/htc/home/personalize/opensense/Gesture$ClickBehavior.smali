.class Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;
.super Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickBehavior"
.end annotation


# instance fields
.field private lastTime:J

.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    .line 365
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->lastTime:J

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 6
    .parameter "evt"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 379
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-nez v0, :cond_2

    .line 388
    iget-wide v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mTime:J

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->lastTime:J

    .line 389
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->mDownX:F

    .line 390
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->mDownY:F

    .line 391
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iput-boolean v4, v0, Lcom/htc/home/personalize/opensense/Gesture;->mClickTap:Z

    .line 393
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    #getter for: Lcom/htc/home/personalize/opensense/Gesture;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/Gesture;->access$400(Lcom/htc/home/personalize/opensense/Gesture;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/htc/home/personalize/opensense/Gesture;->access$300()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 397
    :cond_2
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v0, v5, :cond_0

    .line 402
    iget-wide v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mTime:J

    iget-wide v2, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->lastTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/htc/home/personalize/opensense/Gesture;->access$500()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iput-boolean v5, v0, Lcom/htc/home/personalize/opensense/Gesture;->mClickTap:Z

    .line 406
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->lastTime:J

    goto :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iput-boolean v4, v0, Lcom/htc/home/personalize/opensense/Gesture;->mClickTap:Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x6

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const-string v0, "Gesture_Click"

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->mDownX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;->mDownY:F

    return v0
.end method
