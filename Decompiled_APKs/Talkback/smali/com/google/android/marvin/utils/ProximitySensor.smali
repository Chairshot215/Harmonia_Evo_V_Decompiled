.class public Lcom/google/android/marvin/utils/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mCallback:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

.field private mClose:Z

.field private final mFarValue:F

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/marvin/utils/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/utils/ProximitySensor$1;-><init>(Lcom/google/android/marvin/utils/ProximitySensor;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 46
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    .line 49
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mFarValue:F

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mFarValue:F

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/google/android/marvin/utils/ProximitySensor;)F
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mFarValue:F

    return v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/utils/ProximitySensor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/marvin/utils/ProximitySensor;)Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mCallback:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/android/marvin/utils/ProximitySensor;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z

    return v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mActive:Z

    return v0
.end method

.method public isClose()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z

    return v0
.end method

.method public setProximityChangeListener(Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mCallback:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

    .line 58
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    .line 92
    const/4 v3, 0x2

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mActive:Z

    .line 95
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/ProximitySensor;->mActive:Z

    .line 84
    :cond_0
    return-void
.end method
