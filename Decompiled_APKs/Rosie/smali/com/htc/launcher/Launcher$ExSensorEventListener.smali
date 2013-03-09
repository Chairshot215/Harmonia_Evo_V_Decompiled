.class Lcom/htc/launcher/Launcher$ExSensorEventListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExSensorEventListener"
.end annotation


# static fields
.field private static final FILTERING:F = 0.1f

.field private static final GRAVITY_RANGE:F = 19.6133f

.field private static final LOG_TAG:Ljava/lang/String; = "SensorEvent"

.field private static final ONE_MINUS_FILTERING:F = 0.9f

.field private static final TILT_THRESHOLD:F = 1.0f

.field private static final TIME_THRESHOLD:F = 2.0E9f


# instance fields
.field private final RECOVERY_COUNT_RANGE:F

.field private final RECOVERY_COUNT_TIMES:F

.field private final RECOVERY_RATE:F

.field private mAnchorTilt:F

.field private mEventValue:F

.field private mFrameAt:F

.field private mFrameGap:F

.field private final mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mLastTilt:F

.field private mLastTimestamp:J

.field private mRecoveryFrameCount:F

.field private mResetAnchor:Z

.field private mTilt:F

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x43fa

    .line 8531
    iput-object p1, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8538
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->RECOVERY_RATE:F

    iput v1, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->RECOVERY_COUNT_TIMES:F

    .line 8539
    iput v1, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->RECOVERY_COUNT_RANGE:F

    .line 8541
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4220

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 8548
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    .line 8549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mResetAnchor:Z

    return-void
.end method

.method private getPowerInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    .line 8552
    iget-object v0, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 8676
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const v11, 0x419ce80a

    const v10, 0x411ce80a

    const/high16 v9, 0x3f80

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    .line 8568
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltEnabled:Z
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10400(Lcom/htc/launcher/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFreezeTilt:Z
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10500(Lcom/htc/launcher/Launcher;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 8654
    :cond_0
    :goto_0
    return-void

    .line 8571
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    :goto_1
    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    .line 8572
    iget-boolean v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mResetAnchor:Z

    if-eqz v3, :cond_3

    .line 8573
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mAnchorTilt:F

    .line 8574
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mResetAnchor:Z

    goto :goto_0

    .line 8571
    :cond_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    goto :goto_1

    .line 8577
    :cond_3
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3fc0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f1a36e2eb1c432dL

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 8580
    :cond_4
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10300(Lcom/htc/launcher/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8581
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    iget v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mAnchorTilt:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    .line 8582
    :cond_5
    const/high16 v2, 0x3f80

    .line 8584
    .local v2, speed:F
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    iget v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_f

    .line 8585
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_d

    .line 8586
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    const/high16 v4, 0x43fa

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_a

    .line 8587
    :cond_6
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_7

    const-string v3, "SensorEvent"

    const-string v4, "recoveryEvent_done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8588
    :cond_7
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 8589
    :try_start_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_8

    .line 8590
    monitor-exit v4

    goto/16 :goto_0

    .line 8593
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 8591
    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher$TiltObserver;

    .line 8592
    .local v1, r:Lcom/htc/launcher/Launcher$TiltObserver;
    const/high16 v3, 0x3f00

    invoke-interface {v1, v3, v2}, Lcom/htc/launcher/Launcher$TiltObserver;->onTilt(FF)V

    goto :goto_2

    .line 8593
    .end local v1           #r:Lcom/htc/launcher/Launcher$TiltObserver;
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8595
    iput v7, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    .line 8596
    iput v7, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameGap:F

    .line 8597
    iput v7, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    .line 8598
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mAnchorTilt:F

    goto/16 :goto_0

    .line 8601
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_a
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 8602
    :try_start_2
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b

    .line 8603
    monitor-exit v4

    goto/16 :goto_0

    .line 8609
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 8604
    :cond_b
    :try_start_3
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher$TiltObserver;

    .line 8606
    .restart local v1       #r:Lcom/htc/launcher/Launcher$TiltObserver;
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameGap:F

    iget v5, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    const/high16 v6, 0x43fa

    div-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->getPowerInterpolation(F)F

    move-result v5

    sub-float v5, v9, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    .line 8607
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    invoke-interface {v1, v3, v2}, Lcom/htc/launcher/Launcher$TiltObserver;->onTilt(FF)V

    goto :goto_3

    .line 8609
    .end local v1           #r:Lcom/htc/launcher/Launcher$TiltObserver;
    :cond_c
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8611
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    add-float/2addr v3, v9

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    goto/16 :goto_0

    .line 8626
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_d
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTimestamp:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x4eee6b28

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 8627
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_e

    const-string v3, "SensorEvent"

    const-string v4, "recoveryEvent_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8629
    :cond_e
    iput v9, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    .line 8630
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    sub-float/2addr v3, v8

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameGap:F

    goto/16 :goto_0

    .line 8634
    :cond_f
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_11

    .line 8635
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_10

    const-string v3, "SensorEvent"

    const-string v4, "anchor_change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8636
    :cond_10
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    mul-float/2addr v3, v11

    sub-float/2addr v3, v10

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    .line 8637
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    iget v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mAnchorTilt:F

    .line 8638
    iput v7, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    .line 8639
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mEventValue:F

    iget v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mAnchorTilt:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    .line 8642
    :cond_11
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTimestamp:J

    .line 8643
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    const v4, 0x3dcccccd

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    const v5, 0x3f666666

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    .line 8644
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    .line 8645
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    add-float/2addr v3, v10

    div-float/2addr v3, v11

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    .line 8647
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 8648
    :try_start_4
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_12

    .line 8649
    monitor-exit v4

    goto/16 :goto_0

    .line 8652
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 8650
    :cond_12
    :try_start_5
    iget-object v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher$TiltObserver;

    .line 8651
    .restart local v1       #r:Lcom/htc/launcher/Launcher$TiltObserver;
    iget v3, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    invoke-interface {v1, v3, v2}, Lcom/htc/launcher/Launcher$TiltObserver;->onTilt(FF)V

    goto :goto_4

    .line 8652
    .end local v1           #r:Lcom/htc/launcher/Launcher$TiltObserver;
    :cond_13
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8657
    const-string v2, "SensorEvent"

    const-string v3, "Launcher.ExSensorEventListener.reset() - enter"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8658
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    .line 8659
    iget v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    const v3, 0x419ce80a

    mul-float/2addr v2, v3

    const v3, 0x411ce80a

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mTilt:F

    iput v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mLastTilt:F

    .line 8661
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mResetAnchor:Z

    .line 8662
    iput v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameGap:F

    .line 8663
    iput v4, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mRecoveryFrameCount:F

    .line 8665
    iget-object v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 8666
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8667
    monitor-exit v3

    .line 8672
    :goto_0
    return-void

    .line 8668
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$10600(Lcom/htc/launcher/Launcher;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher$TiltObserver;

    .line 8669
    .local v1, r:Lcom/htc/launcher/Launcher$TiltObserver;
    iget v2, p0, Lcom/htc/launcher/Launcher$ExSensorEventListener;->mFrameAt:F

    const/high16 v4, 0x3f80

    invoke-interface {v1, v2, v4}, Lcom/htc/launcher/Launcher$TiltObserver;->onTilt(FF)V

    goto :goto_1

    .line 8670
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/htc/launcher/Launcher$TiltObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8671
    const-string v2, "SensorEvent"

    const-string v3, "Launcher.ExSensorEventListener.reset() - exit"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
