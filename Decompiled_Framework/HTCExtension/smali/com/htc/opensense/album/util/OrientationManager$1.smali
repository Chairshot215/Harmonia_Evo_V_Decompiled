.class final Lcom/htc/opensense/album/util/OrientationManager$1;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    #calls: Lcom/htc/opensense/album/util/OrientationManager;->getOrientation([F)I
    invoke-static {v0}, Lcom/htc/opensense/album/util/OrientationManager;->access$100([F)I

    move-result v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/OrientationManager;->access$002(I)I

    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$300()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$400()Lcom/htc/opensense/album/util/OrientationListener;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$500()I

    move-result v0

    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$000()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$000()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$000()I

    move-result v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/OrientationManager;->access$502(I)I

    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$400()Lcom/htc/opensense/album/util/OrientationListener;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-interface {v0, v1}, Lcom/htc/opensense/album/util/OrientationListener;->onOrientationChanged([F)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$400()Lcom/htc/opensense/album/util/OrientationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/util/OrientationListener;->onPortrait()V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/opensense/album/util/OrientationManager;->access$400()Lcom/htc/opensense/album/util/OrientationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/util/OrientationListener;->onLandscape()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_1
    .end sparse-switch
.end method
