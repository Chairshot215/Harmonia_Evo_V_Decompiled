.class public Lcom/android/phone/HtcPhoneSensorFunctions;
.super Landroid/os/Handler;
.source "HtcPhoneSensorFunctions.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_GET_PSENSOR_ATTR_INFO:I = 0x2

.field private static final EVENT_RESET_PSENSOR_ATTR_INFO:I = 0x3

.field private static final EVENT_RESET_RING_VOLUMN:I = 0x1

.field private static final FILENAME_PSENSOR:Ljava/lang/String; = "/sys/class/optical_sensors/proximity/ps_adc"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcPhoneSensorFunctions"

#the value of this static final field might be set in the static constructor
.field private static final MECHANICAL_DIRTY_FIX:Z = false

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final VDBG:Z


# instance fields
.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAdjustedVolume:I

.field private mAttrPSensorNear:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBePoliteCount:I

.field private mBePoliteInit:Z

.field private mBePoliteInitValue:[F

.field private mBePoliteOn:Z

.field private mBePoliteSettingOn:Z

.field private mBePoliteStart:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallNotifier:Lcom/android/phone/CallNotifier;

.field private mDeviceMoving:Z

.field private mGSensorWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mIsVIP:Z

.field private final mMaxRingToneVol:I

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOriginalVolume:I

.field private mPhoneApp:Lcom/android/phone/PhoneApp;

.field private mPocketModeCount:I

.field private mPocketModeOn:Z

.field private mPocketModeSettingOn:Z

.field private mPocketModeStart:Z

.field private mPreviousSensorData:[F

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mRingerMode:I

.field private mRotateToSlientCount:I

.field private mRotateToSlientStart:Z

.field private mRotateToSpeakerCount:I

.field private mRotateToSpeakerSettingOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSpeakerStatusOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    .line 72
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/phone/HtcPhoneSensorFunctions;->MECHANICAL_DIRTY_FIX:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallNotifier;)V
    .locals 5
    .parameter "app"
    .parameter "cm"
    .parameter "callNotifier"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensorActive:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientStart:Z

    .line 95
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    .line 97
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInit:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteStart:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteOn:Z

    .line 100
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    .line 101
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    .line 103
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteCount:I

    .line 105
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeStart:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeOn:Z

    .line 107
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeCount:I

    .line 109
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    .line 110
    iput v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    .line 118
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSpeakerCount:I

    .line 129
    iput-object p1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 130
    iput-object p2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 131
    iput-object p3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCallNotifier:Lcom/android/phone/CallNotifier;

    .line 133
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    .line 134
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    .line 135
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mMaxRingToneVol:I

    .line 136
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "HtcPhoneSensorFunctions"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mGSensorWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    return-void
.end method

.method private handleAccelerometerSensor(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 522
    iget-boolean v10, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSpeakerStatusOn:Z

    if-eqz v10, :cond_0

    .line 523
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-double v2, v10

    .line 524
    .local v2, x:D
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    float-to-double v6, v10

    .line 525
    .local v6, y:D
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    float-to-double v8, v10

    .line 527
    .local v8, z:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_1

    .line 549
    .end local v2           #x:D
    .end local v6           #y:D
    .end local v8           #z:D
    :cond_0
    :goto_0
    return-void

    .line 530
    .restart local v2       #x:D
    .restart local v6       #y:D
    .restart local v8       #z:D
    :cond_1
    mul-double v10, v2, v2

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 532
    .local v4, xy:D
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 534
    .local v0, angle:D
    const-wide v10, 0x4066800000000000L

    mul-double/2addr v10, v0

    const-wide v12, 0x400921fb54442d18L

    div-double v0, v10, v12

    .line 537
    const-wide/high16 v10, 0x4064

    cmpl-double v10, v0, v10

    if-lez v10, :cond_2

    const-wide v10, 0x4066800000000000L

    cmpg-double v10, v0, v10

    if-ltz v10, :cond_0

    .line 538
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSpeakerStatusOn:Z

    .line 539
    iget-object v10, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->setFlipForSpeaker(Z)V

    .line 540
    iget-object v10, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 541
    iget-object v10, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    iget-object v11, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 542
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterAccelerometerListener()V

    .line 544
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v11, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    if-eq v10, v11, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerProximitySensor()V

    goto :goto_0
.end method

.method private handleBePolite(FF)V
    .locals 9
    .parameter "pitch"
    .parameter "roll"

    .prologue
    const-wide/16 v3, 0x0

    const/high16 v8, 0x4334

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteSettingOn:Z

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v7

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v7

    if-nez v1, :cond_b

    .line 311
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aput p1, v1, v5

    .line 312
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aput p2, v1, v6

    .line 319
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInit:Z

    if-nez v1, :cond_7

    .line 320
    float-to-double v1, p1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_3

    float-to-double v1, p2

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_7

    .line 322
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4120

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    const/high16 v2, 0x4120

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    :cond_4
    float-to-double v1, p2

    const-wide/high16 v3, 0x4024

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    float-to-double v1, p2

    const-wide/high16 v3, -0x3fdc

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    .line 323
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mDeviceMoving:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteStart:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeStart:Z

    if-nez v1, :cond_6

    .line 324
    sget-boolean v1, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BePolite is init with Pitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Roll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    .line 325
    :cond_5
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aput p1, v1, v5

    .line 326
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aput p2, v1, v6

    .line 327
    iput-boolean v6, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteStart:Z

    .line 330
    :cond_6
    iput-boolean v6, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInit:Z

    .line 334
    :cond_7
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteStart:Z

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v7

    if-lez v1, :cond_d

    cmpl-float v1, p1, v7

    if-lez v1, :cond_d

    .line 337
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 352
    .local v0, diffPitch:F
    :goto_2
    float-to-double v1, v0

    const-wide/high16 v3, 0x403e

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v6

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x403e

    cmpl-double v1, v1, v3

    if-lez v1, :cond_a

    .line 354
    :cond_8
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteOn:Z

    if-nez v1, :cond_a

    .line 355
    sget-boolean v1, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BePolite is on with Pitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Roll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    .line 356
    :cond_9
    iput-boolean v6, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteOn:Z

    .line 360
    :cond_a
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteOn:Z

    if-eqz v1, :cond_0

    .line 361
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteCount:I

    rem-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteCount:I

    .line 362
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteCount:I

    if-nez v1, :cond_0

    .line 363
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    if-lez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 314
    .end local v0           #diffPitch:F
    :cond_b
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aget v1, v1, v5

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aget v1, v1, v6

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 315
    :cond_c
    iput-boolean v6, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mDeviceMoving:Z

    goto/16 :goto_1

    .line 338
    :cond_d
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    cmpg-float v1, v1, v7

    if-gez v1, :cond_e

    cmpg-float v1, p1, v7

    if-gez v1, :cond_e

    .line 339
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .restart local v0       #diffPitch:F
    goto/16 :goto_2

    .line 341
    .end local v0           #diffPitch:F
    :cond_e
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42b4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_f

    .line 342
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .restart local v0       #diffPitch:F
    goto/16 :goto_2

    .line 344
    .end local v0           #diffPitch:F
    :cond_f
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_10

    .line 345
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    sub-float v1, v8, v1

    add-float v2, p1, v8

    add-float v0, v1, v2

    .restart local v0       #diffPitch:F
    goto/16 :goto_2

    .line 347
    .end local v0           #diffPitch:F
    :cond_10
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aget v1, v1, v5

    add-float/2addr v1, v8

    sub-float v2, v8, p1

    add-float v0, v1, v2

    .restart local v0       #diffPitch:F
    goto/16 :goto_2
.end method

.method private handlePocketMode(FF)V
    .locals 10
    .parameter "pitch"
    .parameter "roll"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4024

    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x3fdc

    .line 373
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeSettingOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    float-to-double v0, p1

    cmpg-double v0, v0, v6

    if-gez v0, :cond_2

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    float-to-double v0, p2

    cmpg-double v0, v0, v6

    if-gez v0, :cond_2

    float-to-double v0, p2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_6

    .line 380
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensorActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAttrPSensorNear:Z

    if-eqz v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeStart:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteStart:Z

    if-nez v0, :cond_6

    .line 381
    float-to-double v0, p1

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    .line 382
    :cond_4
    sget-boolean v0, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PocketModeOn is init with Pitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Roll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    .line 383
    :cond_5
    iput-boolean v9, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeStart:Z

    .line 388
    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeStart:Z

    if-eqz v0, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeOn:Z

    if-nez v0, :cond_8

    .line 390
    sget-boolean v0, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "PocketModeOn is on"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    .line 391
    :cond_7
    iput-boolean v9, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeOn:Z

    .line 394
    :cond_8
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    if-eqz v0, :cond_0

    .line 395
    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeCount:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeCount:I

    .line 396
    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeCount:I

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCallNotifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    if-nez v0, :cond_9

    .line 401
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCallNotifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->vibrate()V

    .line 404
    :cond_9
    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mMaxRingToneVol:I

    if-gt v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    invoke-virtual {v0, v1, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method private handleProximitySensor(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 642
    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_3

    .line 643
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v5, 0xf4240

    div-long v1, v3, v5

    .line 644
    .local v1, milliseconds:J
    monitor-enter p0

    .line 645
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSpeakerCount:I

    .line 646
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 648
    .local v0, distance:F
    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    const/high16 v3, 0x40a0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 653
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensorActive:Z

    .line 661
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    iget-boolean v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSpeakerSettingOn:Z

    if-eqz v3, :cond_3

    .line 672
    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iget-object v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 686
    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSpeakerStatusOn:Z

    if-nez v3, :cond_3

    .line 687
    iput v7, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    .line 688
    invoke-virtual {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerOrientationSensor()V

    .line 693
    .end local v0           #distance:F
    .end local v1           #milliseconds:J
    :cond_3
    return-void

    .line 659
    .restart local v0       #distance:F
    .restart local v1       #milliseconds:J
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensorActive:Z

    goto :goto_0

    .line 661
    .end local v0           #distance:F
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private handleRotateToSilent(FF)V
    .locals 6
    .parameter "pitch"
    .parameter "roll"

    .prologue
    const-wide/16 v4, 0x0

    .line 212
    float-to-double v0, p1

    const-wide/high16 v2, 0x404e

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    float-to-double v0, p1

    const-wide/high16 v2, -0x3fb2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    float-to-double v0, p2

    const-wide/high16 v2, 0x4049

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    float-to-double v0, p2

    const-wide/high16 v2, -0x3fb7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 220
    float-to-double v0, p1

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientStart:Z

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientStart:Z

    if-eqz v0, :cond_5

    .line 229
    float-to-double v0, p1

    const-wide v2, -0x3f9ac00000000000L

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    float-to-double v0, p1

    const-wide v2, 0x4065400000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    float-to-double v0, p2

    const-wide/high16 v2, 0x4024

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    float-to-double v0, p2

    const-wide/high16 v2, -0x3fdc

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 230
    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    .line 232
    :cond_3
    iget v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    .line 234
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCallNotifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCallNotifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterOrientationSensor()V

    .line 240
    :cond_5
    return-void
.end method

.method private handleRotateToSpeakerOn(FF)V
    .locals 6
    .parameter "pitch"
    .parameter "roll"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 243
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSpeakerSettingOn:Z

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    .line 248
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    if-nez v1, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, faceToEarth:Z
    float-to-double v1, p1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    float-to-double v1, p2

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_4

    .line 252
    :cond_2
    const/high16 v1, -0x3cd6

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_3

    const/high16 v1, 0x432a

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    :cond_3
    float-to-double v1, p2

    const-wide/high16 v3, 0x4024

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    float-to-double v1, p2

    const-wide/high16 v3, -0x3fdc

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 253
    const/4 v0, 0x1

    .line 290
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 291
    iput-boolean v5, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSpeakerStatusOn:Z

    .line 292
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setFlipForSpeaker(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 294
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterProximitySensor()V

    .line 296
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerAccelerometerListener()V

    .line 299
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterOrientationSensor()V

    goto :goto_0
.end method

.method private isAttrPSensorNear()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 697
    const/4 v6, 0x0

    .line 698
    .local v6, pSensorNear:Z
    const/4 v3, 0x0

    .line 699
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 702
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v8, "/sys/class/optical_sensors/proximity/ps_adc"

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 704
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 705
    .local v5, pSensorData:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 706
    const-string v8, "ps_pocket_mode"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, ps_near:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "ps_pocket_mode = 1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 708
    sget-boolean v8, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v8, :cond_0

    .line 709
    const-string v8, "P-Sensor Attr. report NEAR"

    invoke-direct {p0, v8}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 711
    :cond_0
    const/4 v6, 0x1

    .line 717
    .end local v7           #ps_near:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_4

    .line 719
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 725
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v5           #pSensorData:Ljava/lang/String;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :cond_2
    :goto_0
    return v6

    .line 720
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #pSensorData:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 721
    .local v2, e:Ljava/io/IOException;
    const-string v8, "close file to cause IOException :  %s \n"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 722
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_0

    .line 714
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #pSensorData:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 717
    :goto_1
    if-eqz v0, :cond_2

    .line 719
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 720
    :catch_2
    move-exception v2

    .line 721
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "close file to cause IOException :  %s \n"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 717
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_3

    .line 719
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 722
    :cond_3
    :goto_3
    throw v8

    .line 720
    :catch_3
    move-exception v2

    .line 721
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "close file to cause IOException :  %s \n"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 717
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .line 714
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_4
    move-exception v8

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_1

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_1

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #pSensorData:Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_0
.end method

.method private isUnderVstMode()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 554
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    const-string v5, "com.nuance.android.vsuite.vsuiteapp"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 555
    .local v2, vstContext:Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 556
    const-string v4, "driver_mode_prefs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 557
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 558
    const-string v4, "enabled"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 559
    .local v0, enabled:Z
    sget-boolean v4, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vst mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v0           #enabled:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #vstContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return v0

    .line 563
    :catch_0
    move-exception v4

    :cond_1
    move v0, v3

    .line 565
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 729
    const-string v0, "HtcPhoneSensorFunctions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void
.end method

.method private manipulateSenesorData(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 182
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 183
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v5

    .line 184
    .local v0, pitch:F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v3, v4

    .line 186
    .local v1, roll:F
    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 187
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->handleRotateToSpeakerOn(FF)V

    .line 208
    .end local v0           #pitch:F
    .end local v1           #roll:F
    .end local v2           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_1
    :goto_0
    return-void

    .line 193
    .restart local v0       #pitch:F
    .restart local v1       #roll:F
    .restart local v2       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_3
    iget-object v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->handleRotateToSilent(FF)V

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->handleBePolite(FF)V

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->handlePocketMode(FF)V

    goto :goto_0

    .line 203
    .end local v0           #pitch:F
    .end local v1           #roll:F
    .end local v2           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_4
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 204
    invoke-direct {p0, p1}, Lcom/android/phone/HtcPhoneSensorFunctions;->handleProximitySensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 205
    :cond_5
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 206
    invoke-direct {p0, p1}, Lcom/android/phone/HtcPhoneSensorFunctions;->handleAccelerometerSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method

.method private registerAccelerometerListener()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 507
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 509
    :cond_0
    return-void
.end method

.method private resetSensorFlags()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 570
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientStart:Z

    .line 571
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSlientCount:I

    .line 574
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInit:Z

    .line 575
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteStart:Z

    .line 576
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteOn:Z

    .line 577
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteCount:I

    .line 578
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aput v1, v0, v2

    .line 579
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteInitValue:[F

    aput v1, v0, v3

    .line 580
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aput v1, v0, v2

    .line 581
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPreviousSensorData:[F

    aput v1, v0, v3

    .line 582
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mDeviceMoving:Z

    .line 585
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeStart:Z

    .line 586
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeOn:Z

    .line 587
    iput v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeCount:I

    .line 590
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 591
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSpeakerStatusOn:Z

    .line 593
    :cond_0
    return-void
.end method

.method private unregisterAccelerometerListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 516
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSpeakerStatusOn:Z

    .line 517
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setFlipForSpeaker(Z)V

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public getProximitySensorActive()Z
    .locals 1

    .prologue
    .line 635
    monitor-enter p0

    .line 637
    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensorActive:Z

    monitor-exit p0

    return v0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 142
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mIsVIP:Z

    if-eqz v1, :cond_1

    .line 146
    iput-boolean v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mIsVIP:Z

    .line 147
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 148
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 149
    .local v0, ringerMode:I
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRingerMode:I

    if-eq v1, v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 153
    .end local v0           #ringerMode:I
    :cond_1
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 161
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->isAttrPSensorNear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAttrPSensorNear:Z

    .line 163
    invoke-virtual {p0, v5}, Lcom/android/phone/HtcPhoneSensorFunctions;->removeMessages(I)V

    .line 164
    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/phone/HtcPhoneSensorFunctions;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 168
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAttrPSensorNear:Z

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 179
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/phone/HtcPhoneSensorFunctions;->manipulateSenesorData(Landroid/hardware/SensorEvent;)V

    .line 175
    return-void
.end method

.method public registerOrientationSensor()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x2

    .line 423
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->isUnderVstMode()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcPhoneSensorFunctions;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 436
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 438
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v1, v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mGSensorWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    .line 444
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mGSensorWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 447
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    :cond_6
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "be_polite"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_b

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteSettingOn:Z

    .line 454
    sget-boolean v1, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BePolite Setting: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mBePoliteSettingOn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    .line 455
    :cond_7
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pocket_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_c

    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeSettingOn:Z

    .line 458
    sget-boolean v1, Lcom/android/phone/HtcPhoneSensorFunctions;->DBG:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PocketMode Setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPocketModeSettingOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->log(Ljava/lang/String;)V

    .line 460
    :cond_8
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRingerMode:I

    .line 462
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRingerMode:I

    if-ne v1, v5, :cond_9

    .line 464
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 465
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    .line 469
    :cond_9
    iget-boolean v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mIsVIP:Z

    if-eqz v1, :cond_d

    .line 470
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRingerMode:I

    if-eq v1, v5, :cond_a

    .line 472
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 474
    :cond_a
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mMaxRingToneVol:I

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    .line 476
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mMaxRingToneVol:I

    invoke-virtual {v1, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 480
    :goto_3
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 484
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->resetSensorFlags()V

    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 451
    goto/16 :goto_1

    :cond_c
    move v2, v3

    .line 455
    goto :goto_2

    .line 478
    :cond_d
    iget v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOriginalVolume:I

    iput v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAdjustedVolume:I

    goto :goto_3
.end method

.method public registerOrientationSensor(Z)V
    .locals 2
    .parameter "isVIP"

    .prologue
    .line 414
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 417
    iput-boolean p1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mIsVIP:Z

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerOrientationSensor()V

    .line 420
    return-void
.end method

.method public registerProximitySensor()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 596
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 597
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->isPSensorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    .line 600
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 602
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 603
    iput-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAttrPSensorNear:Z

    .line 604
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcPhoneSensorFunctions;->removeMessages(I)V

    .line 605
    const-wide/16 v1, 0x50

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/phone/HtcPhoneSensorFunctions;->sendEmptyMessageDelayed(IJ)Z

    .line 612
    :goto_0
    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_to_speaker"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSpeakerSettingOn:Z

    .line 619
    :cond_1
    return-void

    .line 607
    :cond_2
    iput-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAttrPSensorNear:Z

    goto :goto_0
.end method

.method public unregisterOrientationSensor()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 495
    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/HtcPhoneSensorFunctions;->sendEmptyMessageDelayed(IJ)Z

    .line 496
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->resetSensorFlags()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mGSensorWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mGSensorWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 501
    :cond_1
    return-void
.end method

.method public unregisterProximitySensor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-boolean v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mRotateToSpeakerSettingOn:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterAccelerometerListener()V

    .line 624
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensor:Landroid/hardware/Sensor;

    .line 628
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mProximitySensorActive:Z

    .line 629
    iput-boolean v2, p0, Lcom/android/phone/HtcPhoneSensorFunctions;->mAttrPSensorNear:Z

    .line 632
    :cond_1
    return-void
.end method
