.class Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;
.super Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;
.source "FmTxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/FmTxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FmTransmitterServiceStub"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "bluetooth_fm_transmitter_service"

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x5

    .line 206
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->abortScanForBestChannel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableFmTransmitter()I
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x5

    .line 112
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->disableFmTransmitter()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFmTransmitter()I
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x5

    .line 105
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->enableFmTransmitter()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 102
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
    .line 226
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->getRadioIsOn()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 1
    .parameter "mute"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x5

    .line 185
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->muteAudio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 1
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x5

    .line 199
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->scanForBestChannel(IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 1
    .parameter "audioMode"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x5

    .line 143
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 1
    .parameter "audioPath"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x5

    .line 178
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioPath(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBandwidth(I)I
    .locals 1
    .parameter "bandwidth"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x5

    .line 164
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setBandwidth(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 1
    .parameter "notifBitmask"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x5

    .line 192
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setInterferenceNotif(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreemphasis(I)I
    .locals 1
    .parameter "preemph"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x5

    .line 171
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPreemphasis(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPwrLevel(I)I
    .locals 1
    .parameter "dbGain"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x5

    .line 133
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPwrLevel(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegion(I)I
    .locals 1
    .parameter "region"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x5

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setRegion(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxFrequency(I)I
    .locals 1
    .parameter "frequency"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x5

    .line 126
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxFrequency(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxPower(Z)I
    .locals 1
    .parameter "powerOn"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x5

    .line 119
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxPower(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVolume(I)I
    .locals 1
    .parameter "volume"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x5

    .line 150
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setVolume(I)I
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

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 10
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x5

    .line 214
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startAudioChirp(ZIIIIIIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x5

    .line 222
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopAudioChirp()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
