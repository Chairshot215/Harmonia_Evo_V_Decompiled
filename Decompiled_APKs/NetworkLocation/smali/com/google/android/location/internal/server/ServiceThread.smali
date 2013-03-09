.class Lcom/google/android/location/internal/server/ServiceThread;
.super Landroid/os/Handler;
.source "ServiceThread.java"

# interfaces
.implements Lcom/google/android/location/os/real/RealOs$LocationReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;
    }
.end annotation


# instance fields
.field private final EXTRA_KEY_LEVEL_ID:Ljava/lang/String;

.field private final EXTRA_KEY_LEVEL_NUMBER_E3:Ljava/lang/String;

.field private final EXTRA_KEY_LOCATION_TYPE:Ljava/lang/String;

.field private final EXTRA_VALUE_LOCATION_TYPE_CELL:Ljava/lang/String;

.field private final EXTRA_VALUE_LOCATION_TYPE_WIFI:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private created:Z

.field private enabled:Z

.field private enabledCursor:Landroid/database/Cursor;

.field private enabledObserver:Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;

.field private eventLog:Lcom/google/android/location/os/EventLog;

.field private fullCollection:Z

.field private lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

.field private final listeners:Lcom/google/android/location/internal/server/Listeners;

.field private final locationManager:Landroid/location/LocationManager;

.field private final lock:Ljava/lang/Object;

.field private migrated:Z

.field private os:Lcom/google/android/location/os/real/RealOs;

.field private queryMap:Landroid/content/ContentQueryMap;

.field private final recentReportedLocations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/google/android/location/cache/PersistentState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    const-string v0, "networkLocationType"

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->EXTRA_KEY_LOCATION_TYPE:Ljava/lang/String;

    .line 65
    const-string v0, "levelId"

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->EXTRA_KEY_LEVEL_ID:Ljava/lang/String;

    .line 66
    const-string v0, "levelNumberE3"

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->EXTRA_KEY_LEVEL_NUMBER_E3:Ljava/lang/String;

    .line 67
    const-string v0, "cell"

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->EXTRA_VALUE_LOCATION_TYPE_CELL:Ljava/lang/String;

    .line 68
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->EXTRA_VALUE_LOCATION_TYPE_WIFI:Ljava/lang/String;

    .line 98
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabled:Z

    .line 101
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->migrated:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/google/android/location/internal/server/ServiceThread$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/ServiceThread$1;-><init>(Lcom/google/android/location/internal/server/ServiceThread;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->recentReportedLocations:Ljava/util/LinkedHashMap;

    .line 123
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->created:Z

    .line 133
    new-instance v0, Lcom/google/android/location/internal/server/Listeners;

    invoke-direct {v0}, Lcom/google/android/location/internal/server/Listeners;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    .line 137
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->fullCollection:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    .line 149
    iput-object p1, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    .line 150
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->locationManager:Landroid/location/LocationManager;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/location/internal/server/ServiceThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/location/internal/server/ServiceThread;->updateState()V

    return-void
.end method

.method private createExtras(Lcom/google/android/location/data/NetworkLocation;)Landroid/os/Bundle;
    .locals 4
    .parameter "networkLocation"

    .prologue
    .line 460
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v0, p1, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    .line 462
    .local v0, bestResult:Lcom/google/android/location/data/LocatorResult;
    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->glsResult:Lcom/google/android/location/data/GlsLocatorResult;

    if-ne v0, v2, :cond_1

    .line 463
    const-string v2, "networkLocationSource"

    const-string v3, "server"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-object v1

    .line 465
    :cond_1
    const-string v2, "networkLocationSource"

    const-string v3, "cached"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    if-ne v0, v2, :cond_2

    .line 467
    const-string v2, "networkLocationType"

    const-string v3, "cell"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    if-ne v0, v2, :cond_0

    .line 469
    const-string v2, "networkLocationType"

    const-string v3, "wifi"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v2, v2, Lcom/google/android/location/data/WifiLocatorResult;->position:Lcom/google/android/location/data/Position;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v2, v2, Lcom/google/android/location/data/WifiLocatorResult;->position:Lcom/google/android/location/data/Position;

    iget-object v2, v2, Lcom/google/android/location/data/Position;->levelId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 472
    const-string v2, "levelId"

    iget-object v3, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v3, v3, Lcom/google/android/location/data/WifiLocatorResult;->position:Lcom/google/android/location/data/Position;

    iget-object v3, v3, Lcom/google/android/location/data/Position;->levelId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_3
    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v2, v2, Lcom/google/android/location/data/WifiLocatorResult;->position:Lcom/google/android/location/data/Position;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v2, v2, Lcom/google/android/location/data/WifiLocatorResult;->position:Lcom/google/android/location/data/Position;

    iget v2, v2, Lcom/google/android/location/data/Position;->levelNumberE3:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_0

    .line 477
    const-string v2, "levelNumberE3"

    iget-object v3, p1, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v3, v3, Lcom/google/android/location/data/WifiLocatorResult;->position:Lcom/google/android/location/data/Position;

    iget v3, v3, Lcom/google/android/location/data/Position;->levelNumberE3:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createLocation(Lcom/google/android/location/data/LocatorResult;)Landroid/location/Location;
    .locals 6
    .parameter "locatorResult"

    .prologue
    const-wide v4, 0x416312d000000000L

    .line 450
    new-instance v0, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, location:Landroid/location/Location;
    iget-object v1, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    .line 452
    .local v1, pos:Lcom/google/android/location/data/Position;
    iget v2, v1, Lcom/google/android/location/data/Position;->latE7:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 453
    iget v2, v1, Lcom/google/android/location/data/Position;->lngE7:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 454
    iget v2, v1, Lcom/google/android/location/data/Position;->accuracyMm:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 455
    iget-wide v2, p1, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 456
    return-object v0
.end method

.method private createLocation(Lcom/google/android/location/data/NetworkLocation;)Landroid/location/Location;
    .locals 2
    .parameter "networkLocation"

    .prologue
    .line 440
    iget-object v1, p1, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    invoke-direct {p0, v1}, Lcom/google/android/location/internal/server/ServiceThread;->createLocation(Lcom/google/android/location/data/LocatorResult;)Landroid/location/Location;

    move-result-object v0

    .line 441
    .local v0, location:Landroid/location/Location;
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/ServiceThread;->createExtras(Lcom/google/android/location/data/NetworkLocation;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 442
    return-object v0
.end method

.method private final startOrStopLocked()V
    .locals 4

    .prologue
    .line 181
    sget-object v2, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/location/internal/NlpVersionInfo;->getNlpVersionInfo(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;Landroid/content/Context;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v0

    .line 182
    .local v0, android:Lcom/google/android/location/internal/NlpVersionInfo;
    const-string v2, "androidNlpServiceThread"

    invoke-virtual {v0}, Lcom/google/android/location/internal/NlpVersionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object v1, v0

    .line 184
    .local v1, me:Lcom/google/android/location/internal/NlpVersionInfo;
    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/location/internal/NlpVersionInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    return-void
.end method

.method private updateState()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 205
    iget-object v7, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v7, "network_location_opt_in"

    const/4 v8, -0x1

    invoke-static {v2, v7, v8}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v5, v7, :cond_5

    move v3, v5

    .line 209
    .local v3, shouldBeEnabled:Z
    :goto_0
    const/4 v4, 0x0

    .line 210
    .local v4, shouldBeRunning:Z
    iget-object v7, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 211
    :try_start_0
    iget-boolean v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabled:Z

    if-eq v8, v3, :cond_0

    .line 212
    iput-boolean v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabled:Z

    .line 213
    iget-object v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v8, v3}, Lcom/google/android/location/internal/server/Listeners;->reportEnabled(Z)V

    .line 215
    :cond_0
    iget-boolean v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->created:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabled:Z

    if-eqz v8, :cond_6

    move v4, v5

    .line 216
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    if-nez v5, :cond_7

    .line 225
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/location/os/real/RealOs;->loadState(Landroid/content/Context;)Lcom/google/android/location/cache/PersistentState;

    move-result-object v1

    .line 226
    .local v1, ps:Lcom/google/android/location/cache/PersistentState;
    iget-object v6, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 227
    :try_start_1
    iget-boolean v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->created:Z

    if-eqz v5, :cond_2

    .line 229
    iput-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    .line 230
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    iget-object v5, v5, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    iget-object v5, v5, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v7, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne v5, v7, :cond_1

    .line 231
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    iget-object v5, v5, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    invoke-direct {p0, v5}, Lcom/google/android/location/internal/server/ServiceThread;->createLocation(Lcom/google/android/location/data/LocatorResult;)Landroid/location/Location;

    move-result-object v0

    .line 232
    .local v0, cachedLocation:Landroid/location/Location;
    new-instance v5, Lcom/google/android/location/os/real/RealLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-direct {v5, v0, v7, v8}, Lcom/google/android/location/os/real/RealLocation;-><init>(Landroid/location/Location;J)V

    iput-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    .line 234
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->recentReportedLocations:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/Long;

    iget-object v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    invoke-virtual {v8}, Lcom/google/android/location/os/real/RealLocation;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    iget-object v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    iget-object v8, v8, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    invoke-virtual {v5, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v0           #cachedLocation:Landroid/location/Location;
    :cond_1
    new-instance v5, Lcom/google/android/location/os/real/RealOs;

    iget-object v7, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->eventLog:Lcom/google/android/location/os/EventLog;

    iget-boolean v9, p0, Lcom/google/android/location/internal/server/ServiceThread;->fullCollection:Z

    invoke-direct {v5, v7, v8, p0, v9}, Lcom/google/android/location/os/real/RealOs;-><init>(Landroid/content/Context;Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/real/RealOs$LocationReceiver;Z)V

    iput-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    .line 238
    new-instance v5, Lcom/google/android/location/NetworkProvider;

    iget-object v7, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    iget-object v8, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    invoke-direct {v5, v7, v8}, Lcom/google/android/location/NetworkProvider;-><init>(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;)V

    .line 240
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    iget-object v7, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v7}, Lcom/google/android/location/internal/server/Listeners;->getMinPeriodSecs()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/google/android/location/os/real/RealOs;->setPeriod(IZ)V

    .line 242
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    .end local v1           #ps:Lcom/google/android/location/cache/PersistentState;
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabled:Z

    if-nez v5, :cond_4

    .line 263
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/location/os/real/RealOs;->deleteState(Landroid/content/Context;)V

    .line 265
    :cond_4
    return-void

    .end local v3           #shouldBeEnabled:Z
    .end local v4           #shouldBeRunning:Z
    :cond_5
    move v3, v6

    .line 206
    goto/16 :goto_0

    .restart local v3       #shouldBeEnabled:Z
    .restart local v4       #shouldBeRunning:Z
    :cond_6
    move v4, v6

    .line 215
    goto/16 :goto_1

    .line 216
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 242
    .restart local v1       #ps:Lcom/google/android/location/cache/PersistentState;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 243
    .end local v1           #ps:Lcom/google/android/location/cache/PersistentState;
    :cond_7
    if-nez v4, :cond_3

    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    if-eqz v5, :cond_3

    .line 245
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    invoke-virtual {v5}, Lcom/google/android/location/os/real/RealOs;->quit()V

    .line 246
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    invoke-virtual {v5}, Lcom/google/android/location/os/real/RealOs;->join()V

    .line 249
    iget-boolean v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabled:Z

    if-eqz v5, :cond_8

    .line 250
    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    invoke-static {v5, v6}, Lcom/google/android/location/os/real/RealOs;->saveState(Landroid/content/Context;Lcom/google/android/location/cache/PersistentState;)V

    .line 255
    :cond_8
    iget-object v6, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 256
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    .line 257
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->state:Lcom/google/android/location/cache/PersistentState;

    .line 258
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    .line 259
    monitor-exit v6

    goto :goto_2

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5
.end method


# virtual methods
.method public addListener(Lcom/google/android/location/internal/ILocationListener;II)V
    .locals 9
    .parameter "locationListener"
    .parameter "periodSecs"
    .parameter "maxLastKnownLocationSecs"

    .prologue
    .line 332
    mul-int/lit16 v3, p3, 0x3e8

    int-to-long v1, v3

    .line 333
    .local v1, maxLastKnownLocationMillis:J
    iget-object v4, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 335
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->sinceBootMillis()J

    move-result-wide v5

    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    invoke-virtual {v3}, Lcom/google/android/location/os/real/RealLocation;->getTimeSinceBoot()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-gtz v3, :cond_0

    .line 341
    :try_start_1
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    invoke-virtual {v3}, Lcom/google/android/location/os/real/RealLocation;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/location/internal/ILocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    const/16 v5, 0x14

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3, p1, v5}, Lcom/google/android/location/internal/server/Listeners;->add(Lcom/google/android/location/internal/ILocationListener;I)V

    .line 349
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    iget-object v5, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v5}, Lcom/google/android/location/internal/server/Listeners;->getMinPeriodSecs()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/google/android/location/os/real/RealOs;->setPeriod(IZ)V

    .line 352
    :cond_1
    monitor-exit v4

    .line 353
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    monitor-exit v4

    goto :goto_0

    .line 352
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public createService()V
    .locals 8

    .prologue
    .line 273
    iget-object v6, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 274
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->created:Z

    .line 275
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "network_location_opt_in"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    .line 285
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    const-string v3, "name"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->queryMap:Landroid/content/ContentQueryMap;

    .line 288
    new-instance v1, Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;-><init>(Lcom/google/android/location/internal/server/ServiceThread;Lcom/google/android/location/internal/server/ServiceThread$1;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledObserver:Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;

    .line 289
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->queryMap:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledObserver:Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 292
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    invoke-direct {p0}, Lcom/google/android/location/internal/server/ServiceThread;->startOrStopLocked()V

    .line 294
    monitor-exit v6

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroyService()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->created:Z

    .line 306
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->queryMap:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledObserver:Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->queryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 311
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledObserver:Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->queryMap:Landroid/content/ContentQueryMap;

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->enabledCursor:Landroid/database/Cursor;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/RealOs;->quit()V

    .line 319
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    invoke-direct {p0}, Lcom/google/android/location/internal/server/ServiceThread;->startOrStopLocked()V

    .line 321
    monitor-exit v1

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    monitor-exit v1

    return-object v0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReportedLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 4
    .parameter "location"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->recentReportedLocations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->migrated:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->migrated:Z

    .line 164
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/RealOs;->migrateState(Landroid/content/Context;)V

    .line 166
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/location/internal/server/ServiceThread;->updateState()V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/internal/server/ServiceThread;->startOrStopLocked()V

    .line 174
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public locationReport(Lcom/google/android/location/data/NetworkLocation;)V
    .locals 9
    .parameter "networkLocation"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/ServiceThread;->createLocation(Lcom/google/android/location/data/NetworkLocation;)Landroid/location/Location;

    move-result-object v0

    .line 418
    .local v0, location:Landroid/location/Location;
    iget-object v4, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 419
    :try_start_0
    new-instance v3, Lcom/google/android/location/os/real/RealLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-direct {v3, v0, v5, v6}, Lcom/google/android/location/os/real/RealLocation;-><init>(Landroid/location/Location;J)V

    iput-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    .line 420
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->recentReportedLocations:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/location/internal/server/ServiceThread;->lastKnownLocation:Lcom/google/android/location/os/real/RealLocation;

    invoke-virtual {v6}, Lcom/google/android/location/os/real/RealLocation;->getLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v3}, Lcom/google/android/location/internal/server/Listeners;->getMinPeriodSecs()I

    move-result v2

    .line 424
    .local v2, oldPeriod:I
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v3, v0}, Lcom/google/android/location/internal/server/Listeners;->reportLocation(Landroid/location/Location;)V

    .line 425
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v3}, Lcom/google/android/location/internal/server/Listeners;->getMinPeriodSecs()I

    move-result v1

    .line 426
    .local v1, newPeriod:I
    if-eq v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/google/android/location/os/real/RealOs;->setPeriod(IZ)V

    .line 429
    :cond_0
    monitor-exit v4

    .line 430
    return-void

    .line 429
    .end local v1           #newPeriod:I
    .end local v2           #oldPeriod:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeListener(Lcom/google/android/location/internal/ILocationListener;)V
    .locals 5
    .parameter "locationListener"

    .prologue
    .line 385
    iget-object v3, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/Listeners;->getMinPeriodSecs()I

    move-result v1

    .line 388
    .local v1, oldPeriod:I
    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v2, p1}, Lcom/google/android/location/internal/server/Listeners;->remove(Lcom/google/android/location/internal/ILocationListener;)V

    .line 389
    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->listeners:Lcom/google/android/location/internal/server/Listeners;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/Listeners;->getMinPeriodSecs()I

    move-result v0

    .line 390
    .local v0, newPeriod:I
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/google/android/location/internal/server/ServiceThread;->os:Lcom/google/android/location/os/real/RealOs;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/google/android/location/os/real/RealOs;->setPeriod(IZ)V

    .line 393
    :cond_0
    monitor-exit v3

    .line 394
    return-void

    .line 393
    .end local v0           #newPeriod:I
    .end local v1           #oldPeriod:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setEventLog(Lcom/google/android/location/os/EventLog;)V
    .locals 2
    .parameter "eventLog"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/android/location/internal/server/ServiceThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/internal/server/ServiceThread;->eventLog:Lcom/google/android/location/os/EventLog;

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
