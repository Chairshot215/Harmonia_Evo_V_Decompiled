.class Lcom/google/android/marvin/utils/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/utils/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/utils/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/utils/ProximitySensor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 101
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    #getter for: Lcom/google/android/marvin/utils/ProximitySensor;->mFarValue:F
    invoke-static {v1}, Lcom/google/android/marvin/utils/ProximitySensor;->access$0(Lcom/google/android/marvin/utils/ProximitySensor;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z
    invoke-static {v0, v1}, Lcom/google/android/marvin/utils/ProximitySensor;->access$1(Lcom/google/android/marvin/utils/ProximitySensor;Z)V

    .line 107
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    #getter for: Lcom/google/android/marvin/utils/ProximitySensor;->mCallback:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;
    invoke-static {v0}, Lcom/google/android/marvin/utils/ProximitySensor;->access$2(Lcom/google/android/marvin/utils/ProximitySensor;)Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    #getter for: Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z
    invoke-static {v1}, Lcom/google/android/marvin/utils/ProximitySensor;->access$3(Lcom/google/android/marvin/utils/ProximitySensor;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;->onProximityChanged(Z)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    #setter for: Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z
    invoke-static {v0, v2}, Lcom/google/android/marvin/utils/ProximitySensor;->access$1(Lcom/google/android/marvin/utils/ProximitySensor;Z)V

    .line 110
    iget-object v0, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    #getter for: Lcom/google/android/marvin/utils/ProximitySensor;->mCallback:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;
    invoke-static {v0}, Lcom/google/android/marvin/utils/ProximitySensor;->access$2(Lcom/google/android/marvin/utils/ProximitySensor;)Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/utils/ProximitySensor$1;->this$0:Lcom/google/android/marvin/utils/ProximitySensor;

    #getter for: Lcom/google/android/marvin/utils/ProximitySensor;->mClose:Z
    invoke-static {v1}, Lcom/google/android/marvin/utils/ProximitySensor;->access$3(Lcom/google/android/marvin/utils/ProximitySensor;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;->onProximityChanged(Z)V

    goto :goto_0
.end method
