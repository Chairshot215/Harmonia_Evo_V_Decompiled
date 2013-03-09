.class public Lcom/htc/lockscreen/app/util/PSensorUtil;
.super Ljava/lang/Object;
.source "PSensorUtil.java"


# static fields
.field public static final LOG_PREFIX:Ljava/lang/String; = "PSensorUtil"

.field private static final WAKE_TIME:I = 0x2710

.field private static final WHAT_ON_TIMEOUT:I = 0x186a1


# instance fields
.field private mActive:Z

.field private mContext:Landroid/content/Context;

.field private mFar:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mMaxDistance:F

.field private mRun:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mMaxDistance:F

    .line 25
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mActive:Z

    .line 101
    new-instance v0, Lcom/htc/lockscreen/app/util/PSensorUtil$2;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/util/PSensorUtil$2;-><init>(Lcom/htc/lockscreen/app/util/PSensorUtil;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mRun:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/util/PSensorUtil;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mActive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/util/PSensorUtil;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/lockscreen/app/util/PSensorUtil;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/util/PSensorUtil;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mMaxDistance:F

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/util/PSensorUtil;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/util/PSensorUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/lockscreen/app/util/PSensorUtil;->unregisterListener()V

    return-void
.end method

.method private registerListener(Landroid/os/Handler;)Z
    .locals 5
    .parameter "handler"

    .prologue
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mActive:Z

    .line 47
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mListener:Landroid/hardware/SensorEventListener;

    if-nez v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 49
    .local v0, sensor:Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 50
    new-instance v2, Lcom/htc/lockscreen/app/util/PSensorUtil$1;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/app/util/PSensorUtil$1;-><init>(Lcom/htc/lockscreen/app/util/PSensorUtil;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mListener:Landroid/hardware/SensorEventListener;

    .line 75
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mMaxDistance:F

    .line 76
    const-string v2, "PSensorUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener mMaxDistance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mMaxDistance:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 87
    .end local v0           #sensor:Landroid/hardware/Sensor;
    :goto_0
    return v1

    .line 81
    .restart local v0       #sensor:Landroid/hardware/Sensor;
    :cond_0
    const-string v1, "PSensorUtil"

    const-string v2, "registerListener no sensor"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    goto :goto_0

    .line 86
    .end local v0           #sensor:Landroid/hardware/Sensor;
    :cond_1
    const-string v2, "PSensorUtil"

    const-string v3, "registerListener~ already register"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mActive:Z

    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "PSensorUtil"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mListener:Landroid/hardware/SensorEventListener;

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public pokeWakeLockIfFar(Landroid/os/Handler;J)V
    .locals 2
    .parameter "handler"
    .parameter "delay"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/util/PSensorUtil;->registerListener(Landroid/os/Handler;)Z

    move-result v0

    .line 38
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil;->mRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    return-void
.end method
