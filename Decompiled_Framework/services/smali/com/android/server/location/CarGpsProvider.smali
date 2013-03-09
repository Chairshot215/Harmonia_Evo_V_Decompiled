.class public Lcom/android/server/location/CarGpsProvider;
.super Lcom/android/server/location/MockProvider;
.source "CarGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/CarGpsProvider$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarGpsProvider"


# instance fields
.field private htcModeEnable:Z

.field private final mClientUids:Landroid/util/SparseIntArray;

.field public mContext:Landroid/content/Context;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/CarGpsProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private usingMock:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V
    .locals 1

    invoke-direct/range {p0 .. p11}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/location/CarGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/CarGpsProvider$1;-><init>(Lcom/android/server/location/CarGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/CarGpsProvider;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private reportStatus(Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/CarGpsProvider$Listener;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "CarGpsProvider"

    const-string v5, "RemoteException in reportStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate add listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearMockListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public disable()V
    .locals 2

    const-string v0, "CarGpsProvider"

    const-string v1, "provider, disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/server/location/MockProvider;->disable()V

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/CarGpsProvider;->reportStatus(Z)V

    :cond_0
    return-void
.end method

.method public disableHtcMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->htcModeEnable:Z

    return-void
.end method

.method public enable()V
    .locals 2

    const-string v0, "CarGpsProvider"

    const-string v1, "provider, enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/server/location/MockProvider;->enable()V

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/CarGpsProvider;->reportStatus(Z)V

    :cond_0
    return-void
.end method

.method public enableHtcMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->htcModeEnable:Z

    return-void
.end method

.method public enableLocationTracking(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->enable()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->disable()V

    goto :goto_0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public isHtcMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->htcModeEnable:Z

    return v0
.end method

.method public isUsedMock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->usingMock:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unneeded remove listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNmea(Ljava/lang/String;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CarGpsProvider"

    const-string v5, "reportNmea is not enable due to isEnabled() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    const-string v4, "CarGpsProvider"

    const-string v6, "reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/CarGpsProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4, p2, p3, p1}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "CarGpsProvider"

    const-string v6, "RemoteException in reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CarGpsProvider"

    const-string v1, "setLocation will not work due to the isEnable() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public useMock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/location/CarGpsProvider;->usingMock:Z

    return-void
.end method
