.class public Lcom/android/camera/SensorHandler;
.super Ljava/lang/Object;
.source "SensorHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorHandler$2;,
        Lcom/android/camera/SensorHandler$STATE;
    }
.end annotation


# static fields
.field private static final FOCUS_FILE_PATH:Ljava/lang/String; = "/data/.sc_msg"

.field private static HANDSHAKE_THRESHOLD:F = 0.0f

.field private static final NEED_CHECK_SCENE_CHANGE:Z = false

.field private static RESTART_CHECK_DURATION:J = 0x0L

.field private static SENSOR_UNSTABLE_THRESHOLD:F = 0.0f

.field public static STABLE_PERIOD:J = 0x0L

.field private static STABLE_THRESHOLD:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "SensorHandler"

.field private static TOUCH_UNSTABLE_THRESHOLD:F

.field private static UNSTABLE_THRESHOLD:F

.field private static mIsRegistered:Z

.field private static mfocuFile:Ljava/io/File;


# instance fields
.field private isMovement:[Z

.field private mCurrentState:Lcom/android/camera/SensorHandler$STATE;

.field private mCurrentValue:[F

.field private mFileObserver:Landroid/os/FileObserver;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mHandShakeStableTime:I

.field private mHandShakeValue:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStableValue:[F

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x3f00

    const v0, 0x3dcccccd

    sput v0, Lcom/android/camera/SensorHandler;->STABLE_THRESHOLD:F

    sput v1, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    sput v1, Lcom/android/camera/SensorHandler;->SENSOR_UNSTABLE_THRESHOLD:F

    const v0, 0x3f4ccccd

    sput v0, Lcom/android/camera/SensorHandler;->TOUCH_UNSTABLE_THRESHOLD:F

    const v0, 0x3e4ccccd

    sput v0, Lcom/android/camera/SensorHandler;->HANDSHAKE_THRESHOLD:F

    const-wide/16 v0, 0xbe

    sput-wide v0, Lcom/android/camera/SensorHandler;->STABLE_PERIOD:J

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/camera/SensorHandler;->RESTART_CHECK_DURATION:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/SensorHandler;->mfocuFile:Ljava/io/File;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    iput v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    iput-object p1, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    sput-boolean v2, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private checkHandShake([F)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setHandShakeValue([F)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    aget v2, v2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/android/camera/SensorHandler;->HANDSHAKE_THRESHOLD:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/BooleanEvent;

    const-string v4, "SensorValue.RotateChanged"

    invoke-direct {v3, v4, v0}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_2
    iput v5, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setHandShakeValue([F)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    iget v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/BooleanEvent;

    const-string v4, "SensorValue.RotateChanged"

    invoke-direct {v3, v4, v0}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_6
    iput v5, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    goto :goto_2
.end method

.method private checkSensorFocus([F)V
    .locals 5

    const/16 v4, 0x20

    const/16 v3, 0x1f

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setCurrenValue([F)V

    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->CHECK_SENSOR:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_0

    const-string v0, "SensorHandler"

    const-string v1, "checkSensorFocus() - mHTCCamera == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/android/camera/SensorHandler;->STABLE_PERIOD:J

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/android/camera/SensorHandler;->RESTART_CHECK_DURATION:J

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private checkSensorState([F)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/camera/SensorHandler$2;->$SwitchMap$com$android$camera$SensorHandler$STATE:[I

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    invoke-virtual {v1}, Lcom/android/camera/SensorHandler$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "SensorHandler"

    const-string v1, "checkStableState() - unknow state !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkifChange([F)Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkifChange([F)Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setCurrenValue([F)V

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setStableValue([F)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkifChange([F)Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    invoke-direct {p0}, Lcom/android/camera/SensorHandler;->restartUnstableState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkifChange([F)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setCurrenValue([F)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setStableValue([F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/camera/SensorHandler;->STABLE_THRESHOLD:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aput-boolean v1, v3, v0

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    aget v4, p1, v0

    aput v4, v3, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    aget v4, p1, v0

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aput-boolean v2, v3, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/SensorHandler;->setTouchThreshold(Z)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public static createFocusFile()V
    .locals 2

    const-string v0, "SensorHandler"

    const-string v1, "createFocusFile() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteFocusFile()V
    .locals 2

    const-string v0, "SensorHandler"

    const-string v1, "deleteFocusFile() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseFileObserver()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SensorHandler"

    const-string v2, "releaseFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v3, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    :goto_0
    const-string v1, "SensorHandler"

    const-string v2, "releaseFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SensorHandler"

    const-string v2, "mFileObserver.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    throw v1
.end method

.method private restartUnstableState()V
    .locals 3

    const/16 v2, 0x23

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableTouchAEC()V

    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method private setCurrenValue([F)V
    .locals 3

    if-nez p1, :cond_1

    const-string v1, "SensorHandler"

    const-string v2, "values is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    if-nez v1, :cond_2

    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setHandShakeValue([F)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    if-nez v1, :cond_0

    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setStableValue([F)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    if-nez v1, :cond_0

    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupFileObserver()V
    .locals 4

    const-string v1, "SensorHandler"

    const-string v2, "setupFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/camera/SensorHandler$1;

    const-string v2, "/data/.sc_msg"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/SensorHandler$1;-><init>(Lcom/android/camera/SensorHandler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v1, "SensorHandler"

    const-string v2, "setupFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SensorHandler"

    const-string v2, "mFileObserver.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0
.end method


# virtual methods
.method public checkSceneChange()V
    .locals 3

    const/16 v2, 0x21

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public enterSceneChangeState()V
    .locals 1

    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/android/camera/SensorHandler;->checkHandShake([F)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/android/camera/SensorHandler;->checkSensorState([F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public registerSensor()V
    .locals 9

    const/4 v8, 0x1

    const-string v5, "SensorHandler"

    const-string v6, "registerSensor() - start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    if-ne v5, v8, :cond_0

    const-string v5, "SensorHandler"

    const-string v6, "registerSensor() - end, mIsRegistered = true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    sget-object v5, Lcom/android/camera/SensorHandler$STATE;->NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

    iput-object v5, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    iget-object v5, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    const-string v5, "SensorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Support sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    const-string v5, "SensorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "register "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sput-boolean v8, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    const-string v5, "SensorHandler"

    const-string v6, "registerSensor() - end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseSensorHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    return-void
.end method

.method public restartCheckSensorFocus()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    if-nez v0, :cond_0

    const-string v0, "SensorHandler"

    const-string v1, "restartCheckSensorFocus() - mCurrentValue = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    invoke-direct {p0, v0}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    invoke-direct {p0}, Lcom/android/camera/SensorHandler;->restartUnstableState()V

    goto :goto_0
.end method

.method public setTouchThreshold(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget v0, Lcom/android/camera/SensorHandler;->TOUCH_UNSTABLE_THRESHOLD:F

    sput v0, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/camera/SensorHandler;->SENSOR_UNSTABLE_THRESHOLD:F

    sput v0, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    goto :goto_0
.end method

.method public setifWaitFocus(Z)V
    .locals 3

    const-string v0, "SensorHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setifWaitFocus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->STABLE_WAIT_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    goto :goto_0
.end method

.method public unregisterSensor()V
    .locals 7

    const-string v4, "SensorHandler"

    const-string v5, "unregisterSensor() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    if-nez v4, :cond_0

    const-string v4, "SensorHandler"

    const-string v5, "unregisterSensor() - end, mIsRegistered = false"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    const-string v4, "SensorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Support sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x21

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    const-string v4, "SensorHandler"

    const-string v5, "unregisterSensor() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
