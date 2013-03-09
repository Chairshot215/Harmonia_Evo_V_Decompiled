.class Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$002(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    #setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$102(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    #setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$202(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$302(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    #setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$402(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$502(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$200(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$100(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$400(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/LocationSensor;->LocationChanged(DDD)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Disabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #calls: Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$600(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$700(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Enabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "OUT_OF_SERVICE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #calls: Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$600(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "AVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    #getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$900(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
