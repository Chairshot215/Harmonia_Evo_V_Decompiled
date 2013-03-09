.class Lcom/htc/opensense/widget/Gesture$ClickBehavior;
.super Lcom/htc/opensense/widget/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickBehavior"
.end annotation


# instance fields
.field private lastTime:J

.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->lastTime:J

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$200(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->lastTime:J

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->mDownX:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->mDownY:F

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iput-boolean v4, v0, Lcom/htc/opensense/widget/Gesture;->mClickTap:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$400(Lcom/htc/opensense/widget/Gesture;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/widget/Gesture;->access$300()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-ne v0, v5, :cond_0

    iget-wide v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    iget-wide v2, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->lastTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/htc/opensense/widget/Gesture;->access$500()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iput-boolean v5, v0, Lcom/htc/opensense/widget/Gesture;->mClickTap:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->lastTime:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iput-boolean v4, v0, Lcom/htc/opensense/widget/Gesture;->mClickTap:Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    const-string v0, "Gesture_Click"

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->mDownX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;->mDownY:F

    return v0
.end method
