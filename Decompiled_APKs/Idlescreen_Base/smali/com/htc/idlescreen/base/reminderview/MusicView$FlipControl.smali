.class Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;
.super Ljava/lang/Object;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TapListener;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;
    }
.end annotation


# instance fields
.field private mCurMarker:Lcom/htc/fusion/fx/Marker;

.field private mDirect:F

.field private mDuration:F

.field private mFlipToBack:Lcom/htc/fusion/fx/Marker;

.field private mFlipToFront:Lcom/htc/fusion/fx/Marker;

.field private mHitBackbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mIndex:I

.field private mLastClick:J

.field public mMoveListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;

.field private mName:Ljava/lang/String;

.field public mPlaybackListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;

.field private mRate:F

.field public mTapListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TapListener;

.field private mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mTouchListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;

.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Ljava/lang/String;ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;F)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "index"
    .parameter "timeline"
    .parameter "hitbox"
    .parameter "backHitbox"
    .parameter "toFront"
    .parameter "toBack"
    .parameter "direct"

    .prologue
    const/4 v1, 0x0

    .line 401
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTouchListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;

    .line 383
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mMoveListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;

    .line 384
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mPlaybackListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;

    .line 385
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TapListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TapListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTapListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TapListener;

    .line 398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mLastClick:J

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mIndex:I

    .line 402
    iput-object p2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mName:Ljava/lang/String;

    .line 403
    iput-object p4, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 404
    iput-object p5, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 405
    iput-object p6, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitBackbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 406
    iput-object p7, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mFlipToFront:Lcom/htc/fusion/fx/Marker;

    .line 407
    iput-object p8, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mFlipToBack:Lcom/htc/fusion/fx/Marker;

    .line 408
    iput p9, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDirect:F

    .line 409
    iput p3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mIndex:I

    .line 410
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onStartDrag(FF)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FFZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onEndDrag(FFZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onMoveDrag(FF)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onEndFlip()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onClick()V

    return-void
.end method

.method private isFlip()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 572
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->isInBounce()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 573
    const-string v5, "MusicView"

    const-string v6, "isFlip inBounce"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    :goto_0
    return v4

    .line 576
    :cond_1
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    .line 577
    .local v0, curFrame:F
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/IdleState;->getXSpeed()F

    move-result v6

    iget v7, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDirect:F

    mul-float v3, v6, v7

    .line 578
    .local v3, xSpeed:F
    const-string v6, "MusicView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFlip xSpeed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mMinimumFlingVelocity:I
    invoke-static {v6}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2400(Lcom/htc/idlescreen/base/reminderview/MusicView;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    move v4, v5

    .line 580
    goto :goto_0

    .line 583
    :cond_2
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v6, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v6

    .line 584
    .local v2, startFrame:F
    sub-float v6, v0, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 585
    .local v1, dif:F
    const-string v6, "MusicView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFlip curFrame:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " endFrame:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDuration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDuration:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget v6, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDuration:F

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    move v4, v5

    .line 589
    goto :goto_0
.end method

.method private isInBounce()Z
    .locals 2

    .prologue
    .line 561
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    .line 563
    .local v0, curFrame:F
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceBackMarker:Lcom/htc/fusion/fx/Marker;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2200(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceBackMarker:Lcom/htc/fusion/fx/Marker;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2200(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceFrontMarker:Lcom/htc/fusion/fx/Marker;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2300(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceFrontMarker:Lcom/htc/fusion/fx/Marker;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2300(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 566
    :cond_1
    const/4 v1, 0x1

    .line 568
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onClick()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    const/16 v5, 0x3ea

    .line 595
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    sget-object v4, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->FLIP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    if-eq v3, v4, :cond_0

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 598
    .local v1, threadTime:J
    iget-wide v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mLastClick:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v6

    if-gez v3, :cond_1

    .line 599
    const-string v3, "MusicView"

    const-string v4, "onClick too fast"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .end local v1           #threadTime:J
    :cond_0
    :goto_0
    return-void

    .line 602
    .restart local v1       #threadTime:J
    :cond_1
    iput-wide v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mLastClick:J

    .line 603
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView;->scheduleHide()V
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2100(Lcom/htc/idlescreen/base/reminderview/MusicView;)V

    .line 604
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 605
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 606
    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mIndex:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 607
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$500(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 608
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$500(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v0, v6, v7}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    goto :goto_0
.end method

.method private onEndDrag(FFZ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "cancel"

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, goFlip:Z
    if-nez p3, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->isFlip()Z

    move-result v0

    .line 517
    :cond_0
    const-string v2, "MusicView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndDrag goFlip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v2

    .line 519
    .local v1, goal:F
    if-eqz v0, :cond_1

    .line 520
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->skipShowHint()V

    .line 521
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v2}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v3, v2}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$602(Lcom/htc/idlescreen/base/reminderview/MusicView;Z)Z

    .line 522
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v2

    .line 524
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onStartFlip(F)V

    .line 525
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView;->scheduleHide()V
    invoke-static {v2}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2100(Lcom/htc/idlescreen/base/reminderview/MusicView;)V

    .line 526
    return-void

    .line 521
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onEndFlip()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "MusicView"

    const-string v1, "onEndFlip"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->STOP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$702(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    .line 558
    return-void
.end method

.method private onMoveDrag(FF)V
    .locals 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 530
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mRate:F

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 531
    .local v0, goal:F
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v1

    .line 538
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 539
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v0, v1

    goto :goto_0
.end method

.method private onStartDrag(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    sget-object v2, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->TOUCH:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$702(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    .line 494
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mFlipToBack:Lcom/htc/fusion/fx/Marker;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 500
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 501
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDuration:F

    .line 502
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$2000(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 503
    .local v0, screenParam:F
    const-string v1, "MusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveDrag mRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDuration:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screenParam:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDirect:F

    iget v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mDuration:F

    div-float/2addr v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mRate:F

    .line 507
    const-string v1, "MusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveDrag mRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v1, "MusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveDrag StartFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EndFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void

    .line 497
    .end local v0           #screenParam:F
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mFlipToFront:Lcom/htc/fusion/fx/Marker;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mCurMarker:Lcom/htc/fusion/fx/Marker;

    goto/16 :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 415
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTouchListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 416
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mMoveListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 417
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTapListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TapListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 418
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mPlaybackListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 421
    return-void
.end method

.method public onStartFlip(F)V
    .locals 9
    .parameter "goal"

    .prologue
    .line 542
    const-string v0, "MusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartFlip goal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v7

    .line 545
    .local v7, curFrame:F
    sub-float v0, v7, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 546
    .local v8, dif:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->FLIP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$702(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    .line 548
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mName:Ljava/lang/String;

    float-to-int v2, v7

    float-to-int v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;IIIFZ)V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->STOP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$702(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    goto :goto_0
.end method

.method public uninit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 426
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 427
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 428
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 429
    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mPlaybackListener:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 433
    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 435
    :cond_1
    return-void
.end method
