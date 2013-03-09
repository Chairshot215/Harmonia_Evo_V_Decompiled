.class Lcom/htc/lockscreen/app/util/PSensorUtil$1;
.super Ljava/lang/Object;
.source "PSensorUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/util/PSensorUtil;->registerListener(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/util/PSensorUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$1;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 54
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$1;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    #getter for: Lcom/htc/lockscreen/app/util/PSensorUtil;->mActive:Z
    invoke-static {v2}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$000(Lcom/htc/lockscreen/app/util/PSensorUtil;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 58
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 59
    .local v0, far:F
    const-string v2, "PSensorUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged far:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$1;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    iget-object v3, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$1;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    #getter for: Lcom/htc/lockscreen/app/util/PSensorUtil;->mMaxDistance:F
    invoke-static {v3}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$200(Lcom/htc/lockscreen/app/util/PSensorUtil;)F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z
    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$102(Lcom/htc/lockscreen/app/util/PSensorUtil;Z)Z

    .line 72
    .end local v0           #far:F
    :cond_1
    return-void
.end method
