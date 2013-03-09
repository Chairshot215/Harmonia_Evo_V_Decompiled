.class Lcom/htc/video/HtcMediaController$13;
.super Ljava/lang/Object;
.source "HtcMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field duration:J

.field onTouchTime:J

.field startTouchTime:J

.field final synthetic this$0:Lcom/htc/video/HtcMediaController;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;)V
    .locals 2
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->duration:J

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "arg0"
    .parameter "progress"
    .parameter "fromtouch"

    .prologue
    const/4 v7, 0x1

    .line 1493
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->duration:J

    .line 1497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->onTouchTime:J

    .line 1498
    iget-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->onTouchTime:J

    iget-wide v2, p0, Lcom/htc/video/HtcMediaController$13;->startTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1500
    iget-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->onTouchTime:J

    iput-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->startTouchTime:J

    .line 1502
    :cond_2
    if-eqz p3, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mDragging:Z
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$100(Lcom/htc/video/HtcMediaController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1506
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->pause()V

    .line 1509
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mPrePlayState:Z
    invoke-static {v0, v7}, Lcom/htc/video/HtcMediaController;->access$602(Lcom/htc/video/HtcMediaController;Z)Z

    .line 1515
    :cond_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mDragging:Z
    invoke-static {v0, v7}, Lcom/htc/video/HtcMediaController;->access$102(Lcom/htc/video/HtcMediaController;Z)Z

    .line 1516
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    iget-wide v1, p0, Lcom/htc/video/HtcMediaController$13;->duration:J

    long-to-double v1, v1

    int-to-double v3, p2

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-long v1, v1

    #setter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v0, v1, v2}, Lcom/htc/video/HtcMediaController;->access$702(Lcom/htc/video/HtcMediaController;J)J

    .line 1517
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mSeekPosition:J
    invoke-static {v2}, Lcom/htc/video/HtcMediaController;->access$800(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/video/HtcMediaController$13;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1518
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mSeekFlag:Z
    invoke-static {v0, v7}, Lcom/htc/video/HtcMediaController;->access$902(Lcom/htc/video/HtcMediaController;Z)Z

    .line 1522
    :goto_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v1

    #setter for: Lcom/htc/video/HtcMediaController;->mSeekPosition:J
    invoke-static {v0, v1, v2}, Lcom/htc/video/HtcMediaController;->access$802(Lcom/htc/video/HtcMediaController;J)J

    .line 1524
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$1000(Lcom/htc/video/HtcMediaController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 1527
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/video/HtcMediaController$13;->duration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 1528
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$1000(Lcom/htc/video/HtcMediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$1100(Lcom/htc/video/HtcMediaController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mSeekFlag:Z
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$900(Lcom/htc/video/HtcMediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->resetResumeStereoStatus()V
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$1300(Lcom/htc/video/HtcMediaController;)V

    .line 1537
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    const/16 v1, 0x22d6

    invoke-interface {v0, v1, v7}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    .line 1538
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->seekTo(I)V

    goto/16 :goto_0

    .line 1520
    :cond_5
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    const/4 v1, 0x0

    #setter for: Lcom/htc/video/HtcMediaController;->mSeekFlag:Z
    invoke-static {v0, v1}, Lcom/htc/video/HtcMediaController;->access$902(Lcom/htc/video/HtcMediaController;Z)Z

    goto :goto_1

    .line 1530
    :cond_6
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$1000(Lcom/htc/video/HtcMediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v2, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v2}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v2

    long-to-int v2, v2

    #calls: Lcom/htc/video/HtcMediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/video/HtcMediaController;->access$1200(Lcom/htc/video/HtcMediaController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const-wide/16 v2, -0x1

    .line 1547
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcMediaController;->show(I)V

    .line 1548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->startTouchTime:J

    .line 1549
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/video/HtcMediaController$13;->duration:J

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v0, v2, v3}, Lcom/htc/video/HtcMediaController;->access$702(Lcom/htc/video/HtcMediaController;J)J

    .line 1552
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mSeekPosition:J
    invoke-static {v0, v2, v3}, Lcom/htc/video/HtcMediaController;->access$802(Lcom/htc/video/HtcMediaController;J)J

    .line 1553
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/16 v5, 0x22d6

    const/4 v4, 0x0

    .line 1559
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    .line 1561
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onDLNASupportRange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    .line 1568
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mNewPosition:J
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$700(Lcom/htc/video/HtcMediaController;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->seekTo(I)V

    .line 1569
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPrePlayState:Z
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$600(Lcom/htc/video/HtcMediaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1571
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->doPauseResume()V

    .line 1572
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mPrePlayState:Z
    invoke-static {v0, v4}, Lcom/htc/video/HtcMediaController;->access$602(Lcom/htc/video/HtcMediaController;Z)Z

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->updatePausePlay()V
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$300(Lcom/htc/video/HtcMediaController;)V

    .line 1577
    :cond_2
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    #setter for: Lcom/htc/video/HtcMediaController;->mDragging:Z
    invoke-static {v0, v4}, Lcom/htc/video/HtcMediaController;->access$102(Lcom/htc/video/HtcMediaController;Z)Z

    .line 1578
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$13;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->show()V

    .line 1579
    return-void
.end method
