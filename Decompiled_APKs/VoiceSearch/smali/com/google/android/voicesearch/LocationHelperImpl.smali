.class public Lcom/google/android/voicesearch/LocationHelperImpl;
.super Ljava/lang/Object;
.source "LocationHelperImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/LocationHelper;


# static fields
.field private static final NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/android/voicesearch/LocationHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/LocationHelperImpl;->TAG:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/google/android/voicesearch/LocationHelperImpl$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/LocationHelperImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/LocationHelperImpl;->NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static hasGoogleSettingsProvider(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 6
    .parameter "manager"
    .parameter "provider"

    .prologue
    .line 124
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x43fa

    sget-object v5, Lcom/google/android/voicesearch/LocationHelperImpl;->NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method public getGeoPosition()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LocationHelperImpl;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 86
    .local v0, location:Landroid/location/Location;
    if-nez v0, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 94
    :goto_0
    return-object v2

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, str:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, " epu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LocationHelperImpl;->shouldSendLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 71
    .local v0, manager:Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 73
    .end local v0           #manager:Landroid/location/LocationManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocationInitialized()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSendLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLocationService()V
    .locals 5

    .prologue
    .line 100
    iget-object v3, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 103
    .local v2, manager:Landroid/location/LocationManager;
    :try_start_0
    const-string v3, "network"

    invoke-direct {p0, v2, v3}, Lcom/google/android/voicesearch/LocationHelperImpl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e1:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/android/voicesearch/LocationHelperImpl;->TAG:Ljava/lang/String;

    const-string v4, "no network location provider, switching to gps"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_1
    const-string v3, "gps"

    invoke-direct {p0, v2, v3}, Lcom/google/android/voicesearch/LocationHelperImpl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .local v1, e2:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/android/voicesearch/LocationHelperImpl;->TAG:Ljava/lang/String;

    const-string v4, "no network or gps location provider, can\'t get a location"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopLocationService()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Lcom/google/android/voicesearch/LocationHelperImpl;->NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 118
    return-void
.end method
