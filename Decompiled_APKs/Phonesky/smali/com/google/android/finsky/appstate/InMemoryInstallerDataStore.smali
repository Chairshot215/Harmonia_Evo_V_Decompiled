.class public Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;
.super Ljava/lang/Object;
.source "InMemoryInstallerDataStore.java"

# interfaces
.implements Lcom/google/android/finsky/appstate/InstallerDataStore;


# instance fields
.field private final mAppStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "accountName"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 95
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 94
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V
    .locals 3
    .parameter "packageName"
    .parameter "autoUpdate"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 44
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAutoUpdate(Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "continueUrl"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 116
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public declared-synchronized setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
    .locals 3
    .parameter "packageName"
    .parameter "deliveryData"
    .parameter "timestampMs"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 52
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDesiredVersion(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "desiredVersion"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 59
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDesiredVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 58
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFirstDownloadMs(Ljava/lang/String;J)V
    .locals 3
    .parameter "packageName"
    .parameter "firstDownloadMs"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 81
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFirstDownloadMs(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 80
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFlags(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 109
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFlags(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setInstallerState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "installerState"
    .parameter "downloadUri"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 74
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setInstallerState(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDownloadUri(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 73
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLastNotifiedVersion(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "lastNotifiedVersion"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 66
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setLastNotifiedVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "referrer"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 88
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setExternalReferrer(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 87
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 102
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;->mAppStates:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
