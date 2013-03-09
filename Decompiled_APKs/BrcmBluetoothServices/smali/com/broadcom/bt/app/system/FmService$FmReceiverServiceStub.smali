.class final Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;
.super Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FmReceiverServiceStub"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mContext:Landroid/content/Context;

    .line 77
    const-string v0, "bluetooth_fm_receiver_service"

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 79
    return-void
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 1
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x2

    .line 412
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getIsMute()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonoStereoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x2

    .line 447
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getMonoStereoMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRadioIsOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getRadioIsOn()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x3

    .line 179
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunedFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x2

    .line 459
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getTunedFrequency()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    return-void
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 1
    .parameter "mute"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x3

    .line 195
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteAudio(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 1
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x2

    .line 246
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekRdsStation(IIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 1
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x2

    .line 217
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStation(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x2

    .line 261
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStationAbort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 1
    .parameter "audioMode"

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x2

    .line 309
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 1
    .parameter "audioPath"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x2

    .line 332
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 1
    .parameter "volume"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x2

    .line 368
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 1
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x2

    .line 432
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 1
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x2

    .line 289
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsMode(IIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 1
    .parameter "stepSize"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x2

    .line 352
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setStepSize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 1
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x2

    .line 392
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setWorldRegion(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 1
    .parameter "freq"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x2

    .line 166
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneRadio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x2

    .line 150
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 1
    .parameter "functionalityMask"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x2

    .line 134
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOnRadio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
