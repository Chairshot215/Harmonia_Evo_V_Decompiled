.class public Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;
.super Ljava/lang/Object;
.source "LocationManagerWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper$LocationProviderWrapper;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    .line 36
    return-void
.end method


# virtual methods
.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .parameter "provider"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;
    .locals 2
    .parameter "name"

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper$LocationProviderWrapper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper$LocationProviderWrapper;-><init>(Landroid/location/LocationProvider;)V

    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 1
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 56
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;->mWrapped:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 61
    return-void
.end method
