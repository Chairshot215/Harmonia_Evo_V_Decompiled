.class public Lcom/htc/dlnamiddlelayer/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/htc/dlnamiddlelayer/IRendererNotifyController;
.implements Lcom/htc/dlnamiddlelayer/IServerNotifyController;
.implements Lcom/htc/dlnamiddlelayer/IPlaylistResponseNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/MediaController$1;,
        Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;,
        Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;,
        Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;,
        Lcom/htc/dlnamiddlelayer/MediaController$forceAutoPlayTask;,
        Lcom/htc/dlnamiddlelayer/MediaController$durationTask;
    }
.end annotation


# instance fields
.field protected bIsControlling:Z

.field protected bShuffle:Z

.field protected durationTimer:Ljava/util/Timer;

.field protected forceAutoPlayTimer:Ljava/util/Timer;

.field protected iCookie:I

.field protected inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

.field protected mDurationMillis:J

.field protected mNoPlayingStateCheckTimeMills:J

.field protected mPauseTimeoutMillis:J

.field protected mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

.field protected mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

.field protected mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

.field protected mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

.field protected mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

.field protected mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

.field protected mSetURITimeoutMillis:J

.field protected mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

.field protected mbSetNewUri:Ljava/lang/Boolean;

.field public nDurationStart:J

.field public nForceAutoPlayStart:J

.field protected nLastSendTickCount:J

.field protected nPhotoSlideshowState:I

.field protected nSendInterval:J

.field protected noPlayingStateCheckTimer:Ljava/util/Timer;

.field protected pauseTimeoutTimer:Ljava/util/Timer;

.field protected rendererObject:Ljava/lang/Object;

.field protected repeatState:I

.field protected sRendererID:Ljava/lang/String;

.field protected setURITimer:Ljava/util/Timer;

.field protected timerSyncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/htc/dlnamiddlelayer/PlaylistBase;Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/htc/dlnamiddlelayer/ServerControlPointModule;Lcom/htc/dlnamiddlelayer/RendererControlPointModule;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 5
    .parameter "cookie"
    .parameter "aPlaylist"
    .parameter "aRenderer"
    .parameter "aServerModule"
    .parameter "aRendererModule"
    .parameter "serviceObj"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    .line 39
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    .line 41
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    .line 42
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    .line 44
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 45
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 47
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    .line 48
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    .line 49
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    .line 50
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    .line 54
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    .line 58
    iput-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mDurationMillis:J

    .line 59
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPauseTimeoutMillis:J

    .line 60
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mSetURITimeoutMillis:J

    .line 61
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mNoPlayingStateCheckTimeMills:J

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 65
    iput v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    .line 67
    sget-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    .line 68
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    .line 69
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bIsControlling:Z

    .line 71
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/ActionStateController;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    .line 72
    new-instance v0, Lcom/htc/dlnamiddlelayer/InputStatus;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/InputStatus;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->rendererObject:Ljava/lang/Object;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->sRendererID:Ljava/lang/String;

    .line 77
    iput-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nLastSendTickCount:J

    .line 78
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nSendInterval:J

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    .line 1893
    iput-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    .line 1894
    iput-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nForceAutoPlayStart:J

    .line 91
    iput p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    .line 92
    iput-object p6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 93
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    .line 94
    iput-object p5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    .line 95
    new-instance v0, Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-direct {v0, p3}, Lcom/htc/dlnamiddlelayer/PlaybackController;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    .line 97
    if-eqz p3, :cond_0

    .line 99
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 100
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->sRendererID:Ljava/lang/String;

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/dlnamiddlelayer/MediaController;->setPlaylist(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 105
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "MediaController constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private setRendererID()V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->rendererObject:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->sRendererID:Ljava/lang/String;

    .line 211
    :goto_0
    monitor-exit v1

    .line 212
    return-void

    .line 210
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->sRendererID:Ljava/lang/String;

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public browsingDoneNotify(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterPlaylistBrowseCallback()V

    .line 1361
    return-void
.end method

.method public browsingErrorNotify(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1373
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "browsing error notify received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterPlaylistBrowseCallback()V

    .line 1375
    return-void
.end method

.method public cancelNotificationBar(I)V
    .locals 2
    .parameter "cookie"

    .prologue
    .line 1800
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1801
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1802
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1803
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getNotificationCBHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1804
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getNotificationCBHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1805
    :cond_0
    return-void
.end method

.method public changeRendererOutput(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 1
    .parameter "aRenderer"

    .prologue
    .line 1097
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 1099
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->changeRendererOutput(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->changeRendererOutput(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 1101
    :cond_1
    return-void
.end method

.method public clearAutoPlayStatus()V
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    if-nez v0, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearAutoPlayStatus()V

    goto :goto_0
.end method

.method public disableAllTimer()V
    .locals 0

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 1823
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 1824
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutDisable()V

    .line 1825
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimeoutDisable()V

    .line 1826
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimerDisable()V

    .line 1827
    return-void
.end method

.method public durationTimerDisable()V
    .locals 7

    .prologue
    .line 1926
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1928
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1932
    .local v0, t:J
    const-string v2, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][AP][durationTask] durationTimerDisable() total="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1935
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1936
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    .line 1937
    const-string v2, "DLNAMiddlelayer"

    const-string v4, "Duration timer disable"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    .end local v0           #t:J
    :cond_0
    monitor-exit v3

    .line 1940
    return-void

    .line 1939
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public durationTimerEnable(J)V
    .locals 5
    .parameter "nDurationMillis"

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    sget-boolean v0, Lcom/htc/dlnamiddlelayer/ActionStateController;->sAutoPlay:Z

    if-nez v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1903
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1908
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1910
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 1912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    .line 1913
    const-string v0, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA][AP][durationTask] durationTimerEnable() Duration timer enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    .line 1916
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1917
    const-string v0, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA] iCookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Duration timer enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public errorUPnPMsg(I)V
    .locals 4
    .parameter "resID"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1345
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, rendererID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public forceAutoPlayTimerDisable()V
    .locals 7

    .prologue
    .line 1880
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1882
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1885
    .local v0, t:J
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1886
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1887
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    .line 1888
    const-string v2, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][AP][transitionTimer] forceAutoPlayTimerDisable() total="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nForceAutoPlayStart:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nForceAutoPlayStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    .end local v0           #t:J
    :cond_0
    monitor-exit v3

    .line 1891
    return-void

    .line 1890
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public forceAutoPlayTimerEnable(J)V
    .locals 5
    .parameter "nforceAutoPlayMillis"

    .prologue
    .line 1864
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1866
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nForceAutoPlayStart:J

    .line 1870
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    .line 1871
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnamiddlelayer/MediaController$forceAutoPlayTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/MediaController$forceAutoPlayTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1872
    const-string v0, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA][AP][transitionTimer] forceAutoPlayTimerEnable() :, start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nForceAutoPlayStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_0
    monitor-exit v1

    .line 1875
    return-void

    .line 1874
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentDeatils()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-object v0

    .line 707
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    .line 708
    .local v1, item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v1, :cond_0

    .line 711
    new-instance v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAContentItemDetails;-><init>()V

    .line 713
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v2, v2, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v2, :cond_3

    .line 715
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v2, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    move-object v3, v1

    check-cast v3, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    .line 723
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 724
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 725
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 726
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 727
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getGenre()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 728
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getComposer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 729
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getResolution()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 730
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 731
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 732
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getBitRate()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 733
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getDuration()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 734
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getFps()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 735
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getContainerPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 736
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 737
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getDiscNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 738
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getTrackNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 739
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 740
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getThumbnailPath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 741
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 742
    const-string v2, ""

    iput-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    goto/16 :goto_0

    .line 718
    :cond_3
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v2, v2, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    if-eqz v2, :cond_2

    .line 720
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v2, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    move-object v3, v1

    check-cast v3, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->getDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    goto/16 :goto_1
.end method

.method public getControlItemInfo()V
    .locals 1

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 1571
    :cond_0
    return-void
.end method

.method public getCookie()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    return v0
.end method

.method public getCurrentContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getContainerID()Ljava/lang/String;

    move-result-object v0

    .line 1605
    :goto_0
    return-object v0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->getContainerID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1605
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayID()Ljava/lang/String;

    move-result-object v0

    .line 1588
    :goto_0
    return-object v0

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    if-eqz v0, :cond_1

    .line 1583
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->getCurrentPlayID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1588
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentLocalPlayId()I
    .locals 1

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayID()I

    move-result v0

    .line 1618
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentLocalPlayIndex()I
    .locals 1

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v0

    .line 1631
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;
    .locals 1
    .parameter "cacheItem"

    .prologue
    .line 1266
    if-nez p1, :cond_0

    .line 1267
    const-string v0, ""

    .line 1272
    .end local p1
    :goto_0
    return-object v0

    .line 1269
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-eqz v0, :cond_1

    .line 1270
    check-cast p1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getDownloadAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1272
    .restart local p1
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized getLatestStatus()Lcom/htc/dlnamiddlelayer/InputStatus;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 810
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 845
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 813
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getRendererState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v0

    .line 815
    .local v0, mState:Lcom/awox/jUPnPCP/UPnPRendererState;
    if-eqz v0, :cond_0

    .line 818
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getLatestStatus >>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 821
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMMediaURI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUriDMR:Ljava/lang/String;

    .line 824
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getUIContentURI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUri:Ljava/lang/String;

    .line 827
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    iput v2, v1, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    .line 829
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR uri :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUriDMR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ui uri :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->isEnd()Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/dlnamiddlelayer/InputStatus;->bEnd:Z

    .line 843
    :goto_1
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getLatestStatus <<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    goto/16 :goto_0

    .line 840
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/dlnamiddlelayer/InputStatus;->bEnd:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 810
    .end local v0           #mState:Lcom/awox/jUPnPCP/UPnPRendererState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMuteControlSupport()Z
    .locals 1

    .prologue
    .line 1766
    const/4 v0, 0x1

    return v0
.end method

.method public getNotificationInfo()Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1771
    new-instance v1, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;

    invoke-direct {v1}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;-><init>()V

    .line 1773
    .local v1, notificationInfo:Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
    if-eqz v1, :cond_3

    .line 1775
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1795
    .end local v1           #notificationInfo:Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 1778
    .restart local v1       #notificationInfo:Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
    :cond_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 1779
    .local v0, item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 1780
    goto :goto_0

    .line 1782
    :cond_2
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/CacheItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->setTitle(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getThumbnailPath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 1784
    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->setPhotoSlideshowState(I)V

    .line 1785
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->setDownloadStoreAlbumArt(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1789
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getDMRPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->setPlayState(I)V

    goto :goto_0

    .end local v0           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_3
    move-object v1, v2

    .line 1795
    goto :goto_0
.end method

.method public getPhotoSlideshowState()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    return v0
.end method

.method public getPlayPosition()J
    .locals 2

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    const-wide/16 v0, -0x1

    .line 1082
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getPlayPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlaylistPlayIndex()J
    .locals 2

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v0

    int-to-long v0, v0

    .line 1410
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPlaylistTotalCount()J
    .locals 2

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v0

    int-to-long v0, v0

    .line 1418
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->rendererObject:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    monitor-exit v1

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRendererID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->rendererObject:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->sRendererID:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThumbnailPath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;
    .locals 2
    .parameter "item"

    .prologue
    .line 1248
    if-nez p1, :cond_1

    .line 1249
    const-string v0, ""

    .line 1261
    :cond_0
    :goto_0
    return-object v0

    .line 1251
    :cond_1
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, thumbPath:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    :cond_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1256
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1261
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public getUIControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 4

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 699
    :goto_0
    return-object v0

    .line 678
    :cond_0
    new-instance v0, Lcom/htc/dlnainterface/DLNAControllerStatus;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAControllerStatus;-><init>()V

    .line 679
    .local v0, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1, v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getUIState(Lcom/htc/dlnainterface/DLNAControllerStatus;)Z

    .line 681
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    .line 684
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    .line 685
    const-string v1, ""

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 694
    :goto_1
    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    iput v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    .line 695
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    .line 697
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUIControlStatus : repeatState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shuffle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_1
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    .line 690
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    .line 691
    const-string v1, ""

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    goto :goto_1
.end method

.method public getVolumeControlSupport()Z
    .locals 1

    .prologue
    .line 1756
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getVolCtrlSupport()Z

    move-result v0

    .line 1761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCallback()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPlaybackCtrl()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    if-nez v0, :cond_0

    .line 296
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "MediaController : Playback controller is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPlaylist()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    if-nez v0, :cond_0

    .line 307
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "MediaController : Playlist is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSingleItemPlaylist()Z
    .locals 1

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    if-eqz v0, :cond_1

    .line 1742
    :cond_0
    const/4 v0, 0x1

    .line 1746
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noPlayingStateCheckTimerDisable()V
    .locals 3

    .prologue
    .line 1985
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1987
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1990
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    .line 1992
    const-string v0, "DLNAMiddlelayer"

    const-string v2, "No playing state check timer disable"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_0
    monitor-exit v1

    .line 1995
    return-void

    .line 1994
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noPlayingStateCheckTimerEnable()V
    .locals 5

    .prologue
    .line 1971
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->timerSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1973
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1975
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    .line 1976
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    iget-wide v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mNoPlayingStateCheckTimeMills:J

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1977
    const-string v0, "DLNAMiddlelayer"

    const-string v2, "No playing state check timer enable"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_0
    monitor-exit v1

    .line 1980
    return-void

    .line 1979
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 749
    monitor-enter p0

    if-nez p1, :cond_1

    .line 751
    :try_start_0
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "MediaController : UpdateItemInfo : Cache item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 754
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setUIState(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 761
    new-instance v0, Lcom/htc/dlnainterface/DLNAControlItemData;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAControlItemData;-><init>()V

    .line 762
    .local v0, itemData:Lcom/htc/dlnainterface/DLNAControlItemData;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 763
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 764
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 765
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getDate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 767
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    .line 768
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    .line 769
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->fileSize:J

    .line 771
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController;->getThumbnailPath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 772
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController;->getDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 774
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-interface {v1, v2, v0}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlItemInfo(ILcom/htc/dlnainterface/DLNAControlItemData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 749
    .end local v0           #itemData:Lcom/htc/dlnainterface/DLNAControlItemData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifyUpdateThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    if-eqz v0, :cond_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 790
    .local v6, cacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    invoke-virtual {v6, p3}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->setThumbFilePath(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v3

    int-to-long v3, v3

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlItemThumbnail(ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getNextItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v6

    .end local v6           #cacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    check-cast v6, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 802
    .restart local v6       #cacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v6, p3}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 4

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1020
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getServeAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v0

    .line 1022
    .local v0, stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pause(): stage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v0, v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->pause()V

    .line 1027
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 1028
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 1029
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutEnable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1014
    .end local v0           #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public pauseTimeoutDisable()V
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1855
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    .line 1857
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Pause check timer disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_0
    return-void
.end method

.method public pauseTimeoutEnable()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1837
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1839
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    .line 1840
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPauseTimeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1841
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Pause check timer enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :goto_0
    return-void

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPauseTimeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1846
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Pause check timer enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized play()V
    .locals 9

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 967
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 871
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v5, v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v5, v5, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    if-eqz v5, :cond_3

    .line 873
    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isExternalStorageReady(ZZ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 875
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 877
    const/16 v3, -0x13c

    .line 878
    .local v3, resID:I
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v5

    iget v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v3, v8}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 868
    .end local v3           #resID:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 884
    :cond_3
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 886
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->disableAllTimer()V

    .line 888
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Play : PlaybackAction : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getLatestStatus()Lcom/htc/dlnamiddlelayer/InputStatus;

    move-result-object v1

    .line 892
    .local v1, inputStatus:Lcom/htc/dlnamiddlelayer/InputStatus;
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getCurrentStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v4

    .line 894
    .local v4, stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    sget-object v5, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-eq v4, v5, :cond_4

    .line 895
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    sget-object v6, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    invoke-virtual {v5, v6, v1}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getServeAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v4

    .line 897
    :cond_4
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Play : stage :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sget-object v5, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v4, v5, :cond_5

    .line 901
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v2

    .line 903
    .local v2, item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v2, :cond_0

    .line 905
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 907
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 908
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 910
    :try_start_4
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getResInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setURI(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V

    .line 912
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimeoutEnable()V

    .line 914
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set uri :index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 908
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5

    .line 917
    .end local v2           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_5
    sget-object v5, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v4, v5, :cond_0

    .line 919
    const/4 v0, 0x0

    .line 921
    .local v0, bCmdSetURI:Z
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 923
    :try_start_7
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 925
    const/4 v0, 0x1

    .line 926
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 928
    :cond_6
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 930
    if-eqz v0, :cond_8

    .line 935
    :try_start_8
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/PlaybackController;->stop()V

    .line 937
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v2

    .line 938
    .restart local v2       #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v2, :cond_7

    .line 941
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 943
    :try_start_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 944
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 928
    .end local v2           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    :catchall_3
    move-exception v5

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v5

    .line 949
    .restart local v2       #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_7
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getResInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setURI(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V

    .line 951
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimeoutEnable()V

    goto/16 :goto_0

    .line 956
    .end local v2           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_8
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/ActionStateController;->advanceToNextStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 958
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/PlaybackController;->play()V

    .line 960
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->preGenNextItem()V

    .line 962
    const-string v5, "DLNAMiddlelayer"

    const-string v6, "start play paused content"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0
.end method

.method public play(J)V
    .locals 3
    .parameter "index"

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    long-to-int v1, p1

    iget-boolean v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setItemIndex(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v1

    .line 980
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 981
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    .line 985
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play(Ljava/lang/String;)V
    .locals 2
    .parameter "contentID"

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setItemID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1002
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 1003
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    .line 1007
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    goto :goto_0

    .line 1003
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reArrangePlaylist([I)Z
    .locals 1
    .parameter "idList"

    .prologue
    .line 1809
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->reArrangePlaylist([I)Z

    move-result v0

    .line 1817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readPlayModeState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1666
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->isSingleItemPlaylist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1668
    sget-object v3, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v3

    iput v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    .line 1669
    iput-boolean v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, sFileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v3, :cond_0

    .line 1678
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1680
    .local v0, aContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1683
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1684
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "repeat"

    sget-object v4, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    .line 1685
    const-string v3, "shuffle"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    .line 1687
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "MediaController: readPlayModeState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->registerRendererModuleCallback()V

    .line 111
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->registerServerModuleCallback()V

    .line 112
    return-void
.end method

.method public registerPlaylistBrowseCallback()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getBrowsingCB(I)Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->registerDMCBrowsingCB(Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerRendererModuleCallback()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    invoke-virtual {v0, p0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->registerCallback(Lcom/htc/dlnamiddlelayer/IRendererNotifyController;)V

    .line 139
    :cond_0
    return-void
.end method

.method public registerServerModuleCallback()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    invoke-virtual {v0, p0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->registerCallback(Lcom/htc/dlnamiddlelayer/IServerNotifyController;)V

    .line 151
    :cond_0
    return-void
.end method

.method public rendererPauseResponseMsg(Lcom/awox/jUPnPCP/CmdPauseMedia;)V
    .locals 5
    .parameter "theCommand"

    .prologue
    .line 2112
    if-nez p1, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2118
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getCmdPauseID()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdPauseMedia;->getMUniqueID()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2121
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdPauseMedia;->getMError()I

    move-result v0

    .line 2122
    .local v0, nError:I
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v0, v1, :cond_0

    .line 2124
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause cmd Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutDisable()V

    .line 2127
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2128
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public rendererPlayResponseMsg(Lcom/awox/jUPnPCP/CmdPlayMedia;)V
    .locals 5
    .parameter "theCommand"

    .prologue
    .line 633
    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getCmdPlayMediaID()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdPlayMedia;->getMUniqueID()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdPlayMedia;->getMError()I

    move-result v0

    .line 640
    .local v0, nError:I
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v0, v1, :cond_0

    .line 643
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play cmd Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v1, 0x2bd

    if-eq v0, v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public rendererRemovedMsg(Ljava/lang/String;I)V
    .locals 3
    .parameter "rendererID"
    .parameter "resID"

    .prologue
    const/4 v1, 0x0

    .line 1479
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1481
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 1483
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 1486
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setRendererState(Lcom/awox/jUPnPCP/UPnPRendererState;)V

    .line 1489
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 1491
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 1493
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->deviceRemovalReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1498
    iget v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->cancelNotificationBar(I)V

    .line 1500
    :cond_2
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renderer removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->deviceRemovalReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_3
    return-void
.end method

.method public rendererSeekResponseMsg(Lcom/awox/jUPnPCP/CmdSeek;)V
    .locals 5
    .parameter "theCommand"

    .prologue
    .line 656
    if-nez p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getCmdSeekID()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdSeek;->getMUniqueID()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 662
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdSeek;->getMError()I

    move-result v0

    .line 663
    .local v0, nError:I
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v0, v1, :cond_0

    .line 665
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek cmd Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public rendererSetUriResponseMsg(Lcom/awox/jUPnPCP/CmdSetURI2;)V
    .locals 6
    .parameter "theCommand"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    if-eqz p1, :cond_2

    .line 338
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getCmdSetUriID()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMUniqueID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 340
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri not set by this controller : CmdID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMUniqueID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SetID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getCmdSetUriID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "Seturi response received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimeoutDisable()V

    .line 353
    if-eqz p1, :cond_5

    .line 355
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMError()I

    move-result v0

    .line 356
    .local v0, nError:I
    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v0, v2, :cond_5

    .line 358
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rendererSetUriResponseMsg Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 364
    :cond_3
    const/16 v2, 0x2ca

    if-eq v0, v2, :cond_4

    const/16 v2, 0x2cc

    if-eq v0, v2, :cond_4

    const/16 v2, 0x2ce

    if-eq v0, v2, :cond_4

    const/16 v2, 0x192

    if-ne v0, v2, :cond_5

    .line 369
    :cond_4
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->advanceToNextStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 371
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->stop()V

    .line 372
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "Seturi item cannot be played"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0           #nError:I
    :cond_5
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getCurrentStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v1

    .line 379
    .local v1, stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v1, v2, :cond_8

    .line 383
    :cond_6
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->advanceToNextStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 385
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->play()V

    .line 397
    :goto_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 399
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->isFollowCustomDuration()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    if-nez v2, :cond_7

    .line 403
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[DLNA}[AP][rendererSetUriResponseMsg][forceAutoPlayTimerEnable]:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerEnable(J)V

    .line 408
    :cond_7
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->preGenNextItem()V

    goto/16 :goto_0

    .line 393
    :cond_8
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive seturi response, ServeStage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public rendererStateChangedAction(Lcom/awox/jUPnPCP/UPnPPlayState;)V
    .locals 8
    .parameter "currentState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 481
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    move-result-object v2

    sget-object v3, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v2, v3, :cond_0

    .line 482
    invoke-virtual {p0, v7}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 484
    :cond_0
    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 488
    .local v1, stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->isFollowCustomDuration()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getLatestStatus()Lcom/htc/dlnamiddlelayer/InputStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController;->OnRendererStateChangedAction(Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v1

    .line 495
    :cond_1
    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v2, :cond_4

    .line 497
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->pauseTimeoutDisable()V

    .line 498
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    sget-object v3, Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;->SUPPORT:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setPauseSupport(Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;)V

    .line 499
    invoke-virtual {p0, v7}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 549
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v2

    if-nez v2, :cond_8

    .line 629
    :cond_3
    :goto_1
    return-void

    .line 501
    :cond_4
    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v2, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 513
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimerDisable()V

    .line 520
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 521
    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->isFollowCustomDuration()Z

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    if-nez v2, :cond_2

    .line 524
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerEnable(J)V

    goto :goto_0

    .line 527
    :cond_5
    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->isFollowCustomDuration()Z

    move-result v2

    if-ne v2, v6, :cond_6

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimer:Ljava/util/Timer;

    if-nez v2, :cond_6

    .line 535
    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mDurationMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 538
    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerEnable(J)V

    .line 546
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimerDisable()V

    goto :goto_0

    .line 542
    :cond_7
    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mDurationMillis:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerEnable(J)V

    goto :goto_2

    .line 552
    :cond_8
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]rendererStateChanged : stage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_INCRESE_INDEX:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v1, v2, :cond_9

    .line 558
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 560
    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    sget-object v3, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 562
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->advanceToNextStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v1

    .line 563
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[DLNA] repeatState == RepeatState.REPEATALL.getValue()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_9
    :goto_3
    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-eq v1, v2, :cond_a

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v1, v2, :cond_d

    .line 591
    :cond_a
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[DLNA]request play"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto/16 :goto_1

    .line 569
    :cond_b
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->advanceListIndex()V

    .line 571
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 573
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v0, :cond_c

    .line 575
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 576
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]increase index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_4
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->advanceToNextStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v1

    goto :goto_3

    .line 580
    :cond_c
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 581
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 582
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[DLNA]Current item is null; wait for notify"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 595
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_d
    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v1, v2, :cond_3

    .line 597
    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v2, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->disableAllTimer()V

    .line 605
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 606
    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->isFollowCustomDuration()Z

    move-result v2

    if-ne v2, v6, :cond_e

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimer:Ljava/util/Timer;

    if-nez v2, :cond_e

    .line 609
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[DLNA][AP][rendererStateChangedAction][STOP][forceAutoPlayTimerEnable]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerEnable(J)V

    .line 614
    :cond_e
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->IsJumpToFirstItem()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 616
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->advanceListIndex()V

    .line 617
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 618
    invoke-virtual {p0, v7}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 619
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[DLNA]End of playlist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 623
    :cond_f
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimerEnable()V

    goto/16 :goto_1
.end method

.method public rendererStateChangedMsg(Lcom/awox/jUPnPCP/CmdStateChange;)V
    .locals 10
    .parameter "theCommand"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 413
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "renderer state change begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->rendererObject:Ljava/lang/Object;

    monitor-enter v4

    .line 417
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v3, :cond_0

    .line 418
    monitor-exit v4

    .line 477
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {p1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;->isFromDevice(Lcom/awox/jUPnPCP/UPnPDeviceBase;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    const-string v3, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not from renderer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v6}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v4

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 426
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMError()I

    move-result v0

    .line 427
    .local v0, nError:I
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v0, v3, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v3

    iget v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v6}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v0, v7}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 436
    :cond_2
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setRendererState(Lcom/awox/jUPnPCP/UPnPRendererState;)V

    .line 437
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theCommand : PlayState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMMediaURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theCommand : PlayMode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMPlayMode()Lcom/awox/jUPnPCP/UPnPPlayMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMPlayStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMPlayStatus()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCP;->PLAYSTATUS_ERROR:I

    if-ne v3, v4, :cond_3

    .line 445
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 447
    const/16 v1, -0x13e

    .line 448
    .local v1, resID:I
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v1, v6}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 452
    .end local v1           #resID:I
    :cond_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    move-result-object v3

    sget-object v4, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v3, v4, :cond_6

    .line 453
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v3, v8}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setUIState(Z)Z

    .line 457
    :goto_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getUIControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlStatus(ILcom/htc/dlnainterface/DLNAControllerStatus;)V

    .line 460
    :cond_4
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdStateChange;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/dlnamiddlelayer/MediaController;->rendererStateChangedAction(Lcom/awox/jUPnPCP/UPnPPlayState;)V

    .line 463
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/htc/dlnamiddlelayer/ActionStateController;->sAutoPlay:Z

    if-ne v3, v8, :cond_5

    .line 465
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]rendererStateChangedMsg:IsNeedSendStopMessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/ActionStateController;->IsNeedSendStopMessage()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/ActionStateController;->IsNeedSendStopMessage()Z

    move-result v3

    if-ne v3, v8, :cond_5

    .line 468
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getUIControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v2

    .line 469
    .local v2, stat:Lcom/htc/dlnainterface/DLNAControllerStatus;
    sget-object v3, Lcom/htc/dlnamiddlelayer/PlayState;->AUTOPLAYWANTSHOWSTOP:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v3

    iput v3, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    .line 470
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-interface {v3, v4, v2}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlStatus(ILcom/htc/dlnainterface/DLNAControllerStatus;)V

    .line 471
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v3, v9}, Lcom/htc/dlnamiddlelayer/ActionStateController;->SetNeedSendStopMessageState(Z)V

    .line 476
    .end local v2           #stat:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_5
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "renderer state change end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :cond_6
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v3, v9}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setUIState(Z)Z

    goto :goto_1
.end method

.method public responseMsg(I)V
    .locals 17
    .parameter "resType"

    .prologue
    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseMsg : resType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Thread id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v9

    .line 1112
    .local v9, rendererID:Ljava/lang/String;
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 1114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    move-result-object v1

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v1, v2, :cond_2

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v14

    .line 1121
    .local v14, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v14, :cond_0

    .line 1124
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_SWITCH:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getLatestStatus()Lcom/htc/dlnamiddlelayer/InputStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getServeAction(Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v16

    .line 1126
    .local v16, stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_0

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto :goto_0

    .line 1133
    .end local v14           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v16           #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1135
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 1136
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    goto/16 :goto_0

    .line 1136
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1142
    :cond_3
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->LOCAL_THUMBDECODE_NOTIFY:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    if-eqz v1, :cond_0

    .line 1149
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v15

    .line 1150
    .local v15, item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v15, :cond_0

    .line 1153
    invoke-virtual {v15}, Lcom/htc/dlnamiddlelayer/CacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v6

    .line 1154
    .local v6, thumbPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v1 .. v6}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlItemThumbnail(ILjava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 1158
    .end local v6           #thumbPath:Ljava/lang/String;
    .end local v15           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_5
    const/16 v1, -0x134

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 1160
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Unable to play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCorruptItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 1164
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v1, v2, v9, v0, v3}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/ActionStateController;->setPlaybackAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;)V

    goto/16 :goto_0

    .line 1169
    :cond_7
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 1174
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getCurrentStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v16

    .line 1176
    .restart local v16       #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to play, stage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_9

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto/16 :goto_0

    .line 1185
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->ControllerResponseReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v1, v2, v9, v0, v3}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerResponseMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    .end local v16           #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :cond_a
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_UPDATE_NOTIFY:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->updatePlaylist()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v1

    int-to-long v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v1

    int-to-long v12, v1

    invoke-interface/range {v7 .. v13}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->playlistCreatedResultMsg(ILjava/lang/String;JJ)V

    goto/16 :goto_0

    .line 1197
    :cond_b
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_GENERATE_SUCCESS:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v1

    int-to-long v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v1

    int-to-long v12, v1

    invoke-interface/range {v7 .. v13}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->playlistCreatedResultMsg(ILjava/lang/String;JJ)V

    goto/16 :goto_0

    .line 1203
    :cond_c
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_SERVER_RESPONSE:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_d

    .line 1205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getCurrentStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v16

    .line 1207
    .restart local v16       #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_0

    .line 1208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->ControllerResponseReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v1, v2, v9, v0, v3}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerResponseMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1212
    .end local v16           #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :cond_d
    const/16 v1, -0x13c

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sdCardRemovedMsg(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1546
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sdCardRemovedMsg(Ljava/lang/String;)V

    .line 1551
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    if-eqz v1, :cond_2

    .line 1554
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 1555
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1557
    const/16 v0, -0x13c

    .line 1558
    .local v0, resID:I
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1560
    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->cancelNotificationBar(I)V

    .line 1565
    .end local v0           #resID:I
    :cond_2
    return-void
.end method

.method public sendPlayNotify(J)V
    .locals 4
    .parameter "delayMillis"

    .prologue
    .line 1221
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v2, :cond_2

    .line 1223
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getResponseHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1224
    .local v0, aHandler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 1226
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1227
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_PLAY_QUEUE:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1228
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1229
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1230
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1231
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1244
    .end local v0           #aHandler:Landroid/os/Handler;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1233
    .restart local v0       #aHandler:Landroid/os/Handler;
    .restart local v1       #msg:Landroid/os/Message;
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1237
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "No response handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    .end local v0           #aHandler:Landroid/os/Handler;
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "No Service object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public serverBrowseResult(Lcom/awox/jUPnPCP/CmdBrowse2;)I
    .locals 2
    .parameter "theCommand"

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    if-eqz v1, :cond_2

    .line 321
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->browseResult(Lcom/awox/jUPnPCP/CmdBrowse2;)I

    move-result v0

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseResult(Lcom/awox/jUPnPCP/CmdBrowse2;)I

    move-result v0

    goto :goto_0
.end method

.method public serverRemovedMsg(Ljava/lang/String;I)V
    .locals 4
    .parameter "serverID"
    .parameter "resID"

    .prologue
    const/4 v2, 0x0

    .line 1507
    const/4 v0, 0x0

    .line 1509
    .local v0, bRemoved:Z
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1511
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v1, :cond_2

    .line 1513
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getServerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setServer(Lcom/awox/jUPnPCP/UPnPContentServer;)V

    .line 1516
    const/4 v0, 0x1

    .line 1529
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 1532
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->deviceRemovalReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1535
    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->cancelNotificationBar(I)V

    .line 1537
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server removed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->deviceRemovalReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_1
    return-void

    .line 1519
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    if-eqz v1, :cond_0

    .line 1521
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->getServerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->setServer(Lcom/awox/jUPnPCP/UPnPContentServer;)V

    .line 1524
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setControlling(Z)V
    .locals 3
    .parameter "bValue"

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bIsControlling:Z

    if-eq v0, p1, :cond_0

    .line 852
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bIsControlling:Z

    .line 854
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 864
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 857
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bIsControlling:Z

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->registerUsingService(Lcom/htc/dlnamiddlelayer/MediaController;)V

    .line 862
    :goto_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControlling value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 860
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->unRegisterUsingService(Lcom/htc/dlnamiddlelayer/MediaController;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setDownloadStoreAlbumArt(JLjava/lang/String;)V
    .locals 8
    .parameter "downloadAlbumID"
    .parameter "downloadAlbumArtPath"

    .prologue
    .line 1277
    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v7

    .line 1285
    .local v7, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v7, :cond_0

    .line 1288
    const/4 v6, 0x0

    .line 1290
    .local v6, bSet:Z
    instance-of v1, v7, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-eqz v1, :cond_0

    move-object v1, v7

    .line 1292
    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->setDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;JLjava/lang/String;)Z

    move-result v6

    .line 1293
    if-eqz v6, :cond_2

    .line 1295
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    move-object v2, v7

    check-cast v2, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genPushAlbumArtURI(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    .line 1303
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    .line 1308
    .local v0, ctrlNotify:Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;
    if-eqz v0, :cond_0

    .line 1311
    if-eqz v6, :cond_3

    .line 1312
    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v3

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateDownloadStoreAlbumArt(ILjava/lang/String;JLjava/lang/String;)V

    .line 1315
    :cond_3
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getNextItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v7

    .line 1316
    if-eqz v7, :cond_4

    .line 1318
    instance-of v1, v7, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-eqz v1, :cond_4

    move-object v1, v7

    .line 1320
    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->setDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1322
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    check-cast v7, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .end local v7           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    invoke-virtual {v1, v7}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genPushAlbumArtURI(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    .line 1327
    :cond_4
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getPrevItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v7

    .line 1328
    .restart local v7       #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v7, :cond_0

    .line 1330
    instance-of v1, v7, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-eqz v1, :cond_0

    move-object v1, v7

    .line 1332
    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->setDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    check-cast v7, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .end local v7           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    invoke-virtual {v1, v7}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genPushAlbumArtURI(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    goto/16 :goto_0
.end method

.method public setDuration(J)V
    .locals 5
    .parameter "durationMillis"

    .prologue
    const/4 v4, 0x1

    .line 1692
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLNA]MediaController:setDuration():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mDurationMillis:J

    .line 1696
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    :goto_0
    return-void

    .line 1699
    :cond_0
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    invoke-virtual {v0, v4}, Lcom/htc/dlnamiddlelayer/ActionStateController;->setFollowCustomDuration(Z)V

    goto :goto_0

    .line 1705
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/MediaController;->setPhotoSlideshowState(I)V

    .line 1706
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 1707
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 1708
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/ActionStateController;->setFollowCustomDuration(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "bMute"

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setMute(Z)V

    goto :goto_0
.end method

.method public setPhotoSlideshowState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1714
    iput p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    .line 1715
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhotoSlideshowState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1719
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 1720
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 1721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 1728
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateItemInfo(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 1732
    :cond_1
    return-void

    .line 1723
    :cond_2
    iget v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->nPhotoSlideshowState:I

    if-nez v0, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto :goto_0
.end method

.method public setPlaylist(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V
    .locals 5
    .parameter "aPlaylist"

    .prologue
    const/4 v2, 0x1

    .line 229
    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x1

    .line 234
    .local v0, bChanged:Z
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    .line 239
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->disableAllTimer()V

    .line 245
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterPlaylistBrowseCallback()V

    .line 246
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->release()V

    .line 249
    :cond_3
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    .line 252
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    monitor-enter v3

    .line 254
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mbSetNewUri:Ljava/lang/Boolean;

    .line 255
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->readPlayModeState()V

    .line 265
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v1, v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v1, :cond_5

    .line 267
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v1

    iget-boolean v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    invoke-virtual {v3, v1, v4}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setItemIndex(IZ)Z

    .line 273
    :goto_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    iget v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    invoke-virtual {v1, v3}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setRepeatState(I)V

    .line 274
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->enableSendNotify(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->registerPlaylistBrowseCallback()Z

    .line 278
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "set Playlist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    invoke-virtual {v1, v3}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setShuffle(Z)V

    goto :goto_2
.end method

.method public setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 2
    .parameter "aRenderer"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->rendererObject:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 191
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->setRendererID()V

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1379
    iput p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    .line 1382
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setRepeatState(I)V

    .line 1385
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->writePlayModeState()V

    .line 1387
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getUIControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlStatus(ILcom/htc/dlnainterface/DLNAControllerStatus;)V

    .line 1389
    :cond_1
    return-void
.end method

.method public setSeek(I)V
    .locals 1
    .parameter "nSeconds"

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setSeek(I)V

    goto :goto_0
.end method

.method public setShuffle(Z)V
    .locals 3
    .parameter "bShuffleMode"

    .prologue
    .line 1393
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    .line 1396
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setShuffle(Z)V

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->writePlayModeState()V

    .line 1401
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->getUIControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->updateControlStatus(ILcom/htc/dlnainterface/DLNAControllerStatus;)V

    .line 1403
    :cond_1
    return-void
.end method

.method public setURITimeoutDisable()V
    .locals 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1962
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    .line 1964
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "SetURI check timer disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_0
    return-void
.end method

.method public setURITimeoutEnable()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1944
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1946
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    .line 1947
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mSetURITimeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1948
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "SetURI check timer enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :goto_0
    return-void

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->setURITimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V

    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mSetURITimeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1953
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "SetURI check timer enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nValue"

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setVolume(I)V

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1038
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setPhotoSlideshowState(I)V

    .line 1040
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 1042
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mStateController:Lcom/htc/dlnamiddlelayer/ActionStateController;

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getServeAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    move-result-object v0

    .line 1044
    .local v0, stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop(): stage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    if-ne v0, v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->stop()V

    .line 1049
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->disableAllTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1035
    .end local v0           #stage:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public switchPlaylistNextItem()Z
    .locals 2

    .prologue
    .line 1423
    const/4 v0, 0x0

    .line 1425
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 1428
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 1429
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->switchNextItem()Z

    move-result v0

    .line 1432
    :cond_0
    return v0
.end method

.method public switchPlaylistNextItem_DoAutoPlay()Z
    .locals 3

    .prologue
    .line 1449
    const/4 v0, 0x0

    .line 1451
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return v0

    .line 1455
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 1457
    .local v1, nAuotMaxIdx:I
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getCurrentIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->switchPlaylistNextItem()Z

    goto :goto_0
.end method

.method public switchPlaylistPrevItem()V
    .locals 1

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 1472
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->forceAutoPlayTimerDisable()V

    .line 1473
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->switchPrevItem()V

    .line 1475
    :cond_0
    return-void
.end method

.method public switchStopState()V
    .locals 1

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1090
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 1092
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->switchStopState()V

    goto :goto_0
.end method

.method public unRegisterCallback()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterPlaylistBrowseCallback()V

    .line 119
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->release()V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterRendererModuleCallback()V

    .line 125
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterServerModuleCallback()V

    .line 127
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->disableAllTimer()V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 132
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "unRegisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public unRegisterPlaylistBrowseCallback()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget v2, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getBrowsingCB(I)Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->unRegisterDMCBrowsingCB(Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;)V

    goto :goto_0
.end method

.method public unRegisterRendererModuleCallback()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    invoke-virtual {v0, p0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->unRegisterCallback(Lcom/htc/dlnamiddlelayer/IRendererNotifyController;)V

    .line 145
    :cond_0
    return-void
.end method

.method public unRegisterServerModuleCallback()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    invoke-virtual {v0, p0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->unRegisterCallback(Lcom/htc/dlnamiddlelayer/IServerNotifyController;)V

    .line 157
    :cond_0
    return-void
.end method

.method public writePlayModeState()V
    .locals 6

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/MediaController;->isSingleItemPlaylist()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Controller"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1643
    .local v2, sFileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v4, :cond_0

    .line 1646
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1648
    .local v0, aContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1651
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1653
    .local v3, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1654
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "repeat"

    iget v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1655
    const-string v4, "shuffle"

    iget-boolean v5, p0, Lcom/htc/dlnamiddlelayer/MediaController;->bShuffle:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1657
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1659
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "MediaController: writePlayModeState"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
