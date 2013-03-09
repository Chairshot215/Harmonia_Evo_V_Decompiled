.class public Lcom/google/android/voicesearch/DummyLocationHelper;
.super Ljava/lang/Object;
.source "DummyLocationHelper.java"

# interfaces
.implements Lcom/google/android/voicesearch/LocationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeoPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLocationInitialized()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSendLocation()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public startLocationService()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public stopLocationService()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
