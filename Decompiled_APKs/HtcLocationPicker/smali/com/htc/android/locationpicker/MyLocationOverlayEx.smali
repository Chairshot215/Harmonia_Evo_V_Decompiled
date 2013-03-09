.class public Lcom/htc/android/locationpicker/MyLocationOverlayEx;
.super Lcom/google/android/maps/MyLocationOverlay;
.source "MyLocationOverlayEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;
    }
.end annotation


# instance fields
.field mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
    .locals 1
    .parameter "context"
    .parameter "mapView"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MyLocationOverlay;->onLocationChanged(Landroid/location/Location;)V

    .line 30
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;

    if-eqz v1, :cond_1

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;

    invoke-interface {v1, p1}, Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;->onGpsFix(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;

    if-eqz v1, :cond_0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;

    invoke-interface {v1, p1}, Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;->onNetworkFix(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    .end local v0           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setClientListener(Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->mClientListener:Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;

    .line 25
    return-void
.end method
