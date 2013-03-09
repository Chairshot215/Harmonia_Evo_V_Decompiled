.class public Lcom/google/android/googlequicksearchbox/google/LocationHelper;
.super Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationListener;,
        Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;)V
    .locals 2
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;)V

    .line 60
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;-><init>(Lcom/google/android/googlequicksearchbox/google/LocationHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/LocationHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->notifyLocationChanged()V

    return-void
.end method

.method private notifyLocationChanged()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mListener:Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mListener:Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationListener;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationListener;->locationChanged(Landroid/location/Location;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLocationDistanceIntervalMeters()F
    .locals 1

    .prologue
    .line 126
    const/high16 v0, 0x4248

    return v0
.end method

.method protected getLocationTimeIntervalMillis()J
    .locals 2

    .prologue
    .line 121
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxLocationAgeMillis()F
    .locals 1

    .prologue
    .line 131
    const v0, 0x4a5bba00

    return v0
.end method

.method protected handleLocationChanged()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method

.method protected shouldUseProvider(Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;)Z
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;->requiresSatellite()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized startListening()Landroid/location/Location;
    .locals 5

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mListening:Z

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v0

    .line 98
    .local v0, lastFix:Landroid/location/Location;
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/32 v3, 0xdbba0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-object v0

    .line 96
    .end local v0           #lastFix:Landroid/location/Location;
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->startListening()Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #lastFix:Landroid/location/Location;
    goto :goto_0

    .line 92
    .end local v0           #lastFix:Landroid/location/Location;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->stopListening()V

    .line 116
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
