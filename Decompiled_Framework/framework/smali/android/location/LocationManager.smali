.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private final mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/location/ILocationManager;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-void
.end method

.method private _requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_1

    const/4 p5, 0x0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/location/ILocationManager;->requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v0, "LocationManager"

    const-string/jumbo v1, "requestLocationUpdates: RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 12

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p5, v2

    if-gez v2, :cond_1

    const/16 p5, 0x0

    :cond_1
    :try_start_0
    iget-object v11, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationManager$ListenerTransport;

    if-nez v9, :cond_2

    new-instance v9, Landroid/location/LocationManager$ListenerTransport;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v9, p0, v0, v1}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_2
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Landroid/location/ILocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;)V

    monitor-exit v11

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v10

    const-string v2, "LocationManager"

    const-string/jumbo v3, "requestLocationUpdates: DeadObjectException"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    .locals 2

    new-instance v0, Lcom/android/internal/location/DummyLocationProvider;

    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    const-string/jumbo v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    const-string/jumbo v1, "satellite"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    const-string v1, "cell"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    const-string v1, "cost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    const-string v1, "altitude"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    const-string/jumbo v1, "speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V

    return-object v0
.end method


# virtual methods
.method public addCarGpsProvider(Ljava/lang/String;)V
    .locals 3

    const-string v1, "LocationManager"

    const-string v2, "HTC_MODE, addCarGpsProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->addCarGpsProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "HTC_MODE, addCarGpsProvider: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 5

    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 5

    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/location/ILocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const-string v0, "LocationManager"

    const-string v1, "addProximityAlert: RemoteException"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v11

    const-string v0, "LocationManager"

    const-string v1, "addTestProvider: RemoteException"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "clearTestProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "clearTestProviderLocation: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "clearTestProviderStatus: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "getAllProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "criteria==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "getBestProvider: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/location/GpsStatus;

    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {p1, v0}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GpsStatus;)V

    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "getLastKnowLocation: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1}, Landroid/location/ILocationManager;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "LocationManager"

    const-string v4, "getProvider: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "criteria==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "LocationManager"

    const-string v3, "getProviders: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string/jumbo v2, "isProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyNema(JLjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->notifyNema(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "HTC_MODE, notifyNema: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCarGpsProvider(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeCarGpsProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "HTC_MODE, removeCarGpsProvider: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string/jumbo v2, "removeProximityAlert: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string/jumbo v2, "removeTestProvider: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "intent==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeUpdatesPI(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string/jumbo v2, "removeUpdates: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$ListenerTransport;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationManager"

    const-string/jumbo v3, "removeUpdates: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 8

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p4

    move-wide v3, p1

    move v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 9

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p4

    move-wide v3, p1

    move v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 9

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-object v7, p5

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendExtraCommand: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendNiResponse(II)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendNiResponse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string/jumbo v2, "setTestProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationManager"

    const-string/jumbo v2, "setTestProviderLocation: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "LocationManager"

    const-string/jumbo v1, "setTestProviderStatus: RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
