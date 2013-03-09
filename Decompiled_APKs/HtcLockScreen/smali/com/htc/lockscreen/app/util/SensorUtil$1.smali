.class Lcom/htc/lockscreen/app/util/SensorUtil$1;
.super Ljava/lang/Object;
.source "SensorUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/util/SensorUtil;->registerRotationListener(Lcom/htc/lockscreen/app/util/SensorUtil$FlipListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field accelerometerValues:[F

.field geomagneticValues:[F

.field sensorReady:Z

.field final synthetic this$0:Lcom/htc/lockscreen/app/util/SensorUtil;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/util/SensorUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/SensorUtil$1;->this$0:Lcom/htc/lockscreen/app/util/SensorUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/util/SensorUtil$1;->sensorReady:Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 45
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 74
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 75
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v0, v2, v3

    .line 76
    .local v0, pitch:F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v1, v2, v3

    .line 77
    .local v1, roll:F
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/SensorUtil$1;->this$0:Lcom/htc/lockscreen/app/util/SensorUtil;

    #calls: Lcom/htc/lockscreen/app/util/SensorUtil;->handleOrientationEvent(FF)V
    invoke-static {v2, v0, v1}, Lcom/htc/lockscreen/app/util/SensorUtil;->access$000(Lcom/htc/lockscreen/app/util/SensorUtil;FF)V

    .line 80
    .end local v0           #pitch:F
    .end local v1           #roll:F
    :cond_0
    return-void
.end method
