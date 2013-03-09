.class public abstract Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;
.super Ljava/lang/Object;
.source "LocationHelperBase.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected mLastFix:Landroid/location/Location;

.field protected mListening:Z

.field protected final mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

.field protected final mLocationProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;)V
    .locals 3
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mListening:Z

    .line 61
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "QSB.LocationHelper"

    const-string v1, "Location manager not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationProviders:Ljava/util/ArrayList;

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->getLocationProviders()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationProviders:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getLocationProviders()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    :cond_0
    const-string v6, "QSB.LocationHelper"

    const-string v7, "No location providers found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 88
    :cond_1
    :goto_0
    return-object v4

    .line 77
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, providersToUse:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, providerName:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    invoke-interface {v6, v2}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;->getProvider(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;

    move-result-object v1

    .line 80
    .local v1, provider:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->shouldUseProvider(Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v1           #provider:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;
    .end local v2           #providerName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const-string v6, "QSB.LocationHelper"

    const-string v7, "No location providers that we want to use."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 86
    goto :goto_0
.end method

.method private handleNewLocation(Landroid/location/Location;)Z
    .locals 5
    .parameter "location"

    .prologue
    const/4 v0, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->isFreshEnough(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 192
    :cond_2
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFreshEnough(Landroid/location/Location;)Z
    .locals 6
    .parameter "loc"

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 136
    .local v0, age:J
    long-to-float v2, v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->getMaxLocationAgeMillis()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateLastFix(Z)V
    .locals 6
    .parameter "alwaysNotify"

    .prologue
    .line 159
    move v0, p1

    .line 160
    .local v0, changed:Z
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, provider:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    invoke-interface {v4, v3}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 163
    .local v2, lastKnown:Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 166
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->handleNewLocation(Landroid/location/Location;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0

    .line 174
    .end local v2           #lastKnown:Landroid/location/Location;
    .end local v3           #provider:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->handleLocationChanged()V

    .line 177
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized getLastFix()Landroid/location/Location;
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x0

    .line 145
    .local v0, changed:Z
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->isFreshEnough(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    .line 148
    const/4 v0, 0x1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 152
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->updateLastFix(Z)V

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract getLocationDistanceIntervalMeters()F
.end method

.method protected abstract getLocationTimeIntervalMillis()J
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMaxLocationAgeMillis()F
.end method

.method protected handleLocationChanged()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected hasProvider()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationProviders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->handleNewLocation(Landroid/location/Location;)Z

    .line 181
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->handleLocationChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->updateLastFix(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->updateLastFix(Z)V

    .line 207
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 212
    return-void
.end method

.method protected abstract shouldUseProvider(Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;)Z
.end method

.method public declared-synchronized startListening()Landroid/location/Location;
    .locals 8

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->hasProvider()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->updateLastFix(Z)V

    .line 110
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, provider:Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mListening:Z

    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->getLocationTimeIntervalMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->getLocationDistanceIntervalMeters()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 106
    .end local v1           #provider:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLastFix:Landroid/location/Location;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopListening()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->hasProvider()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelperBase;->mListening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
