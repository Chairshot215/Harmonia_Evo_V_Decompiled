.class public Lcom/htc/lockscreen/app/util/SensorUtil;
.super Ljava/lang/Object;
.source "SensorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;
    }
.end annotation


# static fields
.field public static final LOG_PREFIX:Ljava/lang/String; = "MySensorManager"

.field private static final PITCH_FLIP:F = 170.0f

.field private static final PITCH_START:F = 60.0f

.field private static final ROLL_FLIP:F = 10.0f

.field private static final ROLL_START:F = 50.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;

.field private mLogTime:J

.field private mOrientationListener:Landroid/hardware/SensorEventListener;

.field mRotationToSnoozeCnt:I

.field mRotationToSnoozeStart:Z

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mLogTime:J

    .line 114
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeStart:Z

    .line 115
    iput v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeCnt:I

    .line 24
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/util/SensorUtil;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/app/util/SensorUtil;->handleOrientationEvent(FF)V

    return-void
.end method

.method private handleOrientationEvent(FF)V
    .locals 8
    .parameter "pitch"
    .parameter "roll"

    .prologue
    const-wide/16 v6, 0x0

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 133
    .local v2, logTime:J
    const/4 v0, 0x0

    .line 134
    .local v0, flip:Z
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4270

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4248

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 136
    float-to-double v4, p1

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    float-to-double v4, p2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 137
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeStart:Z

    .line 138
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeCnt:I

    .line 142
    :cond_1
    iget-boolean v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeStart:Z

    if-eqz v4, :cond_3

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x432a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 146
    iget v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeCnt:I

    .line 148
    :cond_2
    iget v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeCnt:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 150
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mListener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;

    .line 151
    .local v1, listener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;
    if-eqz v1, :cond_3

    .line 152
    invoke-interface {v1}, Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;->onFlip()V

    .line 153
    const/4 v0, 0x1

    .line 157
    .end local v1           #listener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;
    :cond_3
    iget-wide v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mLogTime:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    iget-wide v4, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mLogTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 158
    :cond_4
    iput-wide v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mLogTime:J

    .line 159
    const-string v4, "MySensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleOrientationEvent mRotationToSnoozeCnt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRotationToSnoozeStart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mRotationToSnoozeStart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pitch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " roll:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "MySensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleOrientationEvent flip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_5
    return-void
.end method

.method private handleOrientationEvent([F)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 108
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 109
    .local v0, azimuth:F
    const/4 v3, 0x1

    aget v1, p1, v3

    .line 110
    .local v1, pitch:F
    const/4 v3, 0x2

    aget v2, p1, v3

    .line 111
    .local v2, roll:F
    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/util/SensorUtil;->handleOrientationEvent(FF)V

    .line 112
    return-void
.end method


# virtual methods
.method public registerRotationListener(Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x3

    .line 31
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mListener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "MySensorManager"

    const-string v2, "registerRotationListener~ already register"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v1, "MySensorManager"

    const-string v2, "registerRotationListener"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mListener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;

    .line 37
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mOrientationListener:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/htc/lockscreen/app/util/SensorUtil$1;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/util/SensorUtil$1;-><init>(Lcom/htc/lockscreen/app/util/SensorUtil;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mOrientationListener:Landroid/hardware/SensorEventListener;

    .line 90
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 91
    .local v0, oSensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public unregisterRotationListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "MySensorManager"

    const-string v1, "unregisterRotationListener"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mOrientationListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 101
    iput-object v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mOrientationListener:Landroid/hardware/SensorEventListener;

    .line 103
    :cond_0
    iput-object v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil;->mListener:Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;

    .line 104
    return-void
.end method
