.class Lcom/android/location/provider/LocationProvider$1;
.super Landroid/location/ILocationProvider$Stub;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/LocationProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/LocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-direct {p0}, Landroid/location/ILocationProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/location/provider/LocationProvider;->onAddListener(ILandroid/os/WorkSource;)V

    return-void
.end method

.method public disable()V
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onDisable()V

    return-void
.end method

.method public enable()V
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onEnable()V

    return-void
.end method

.method public enableLocationTracking(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onEnableLocationTracking(Z)V

    return-void
.end method

.method public getAccuracy()I
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetAccuracy()I

    move-result v0

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetInternalState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetPowerRequirement()I

    move-result v0

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onGetStatus(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetStatusUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onHasMonetaryCost()Z

    move-result v0

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onMeetsCriteria(Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method public removeListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/location/provider/LocationProvider;->onRemoveListener(ILandroid/os/WorkSource;)V

    return-void
.end method

.method public requiresCell()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onRequiresCell()Z

    move-result v0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onRequiresNetwork()Z

    move-result v0

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onRequiresSatellite()Z

    move-result v0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/location/provider/LocationProvider;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/location/provider/LocationProvider;->onSetMinTime(JLandroid/os/WorkSource;)V

    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onSupportsAltitude()Z

    move-result v0

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onSupportsBearing()Z

    move-result v0

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onSupportsSpeed()Z

    move-result v0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/location/provider/LocationProvider;->onUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method
