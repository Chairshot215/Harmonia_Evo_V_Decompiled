.class public Lcom/htc/dlnamiddlelayer/PlaybackController;
.super Lcom/htc/dlnamiddlelayer/PlaybackBase;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;
    }
.end annotation


# instance fields
.field protected mPauseSupport:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

.field protected mState:Lcom/awox/jUPnPCP/UPnPRendererState;

.field protected mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 1
    .parameter "aRenderer"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackBase;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 14
    new-instance v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/PlaybackUIState;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    .line 17
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;->UNKNOWN:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mPauseSupport:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeRendererOutput(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 2
    .parameter "aNewRenderer"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->playState:I

    sget-object v1, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->switchStopState()V

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 222
    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setRendererState(Lcom/awox/jUPnPCP/UPnPRendererState;)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->resetPauseSupport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setRendererState(Lcom/awox/jUPnPCP/UPnPRendererState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDMRPlayState()I
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "PlayState: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->UNKNOWN:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 172
    :goto_0
    monitor-exit p0

    return v0

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_1

    .line 156
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->PLAYING:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_2

    .line 158
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->PAUSED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_3

    .line 160
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_4

    .line 162
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->TRANSITIONING:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_NO_MEDIA:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_5

    .line 164
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->NO_MEDIA:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_6

    .line 166
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->PAUSED_RECORDING:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_7

    .line 168
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->RECORDING:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    goto :goto_0

    .line 171
    :cond_7
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->UNKNOWN:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto/16 :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPauseSupport()Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mPauseSupport:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    return-object v0
.end method

.method public declared-synchronized getRendererState()Lcom/awox/jUPnPCP/UPnPRendererState;
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIContentNextURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentNextURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIContentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIState(Lcom/htc/dlnainterface/DLNAControllerStatus;)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getPlayPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->position:J

    .line 181
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentTitle:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentArtist:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->fDuration:J

    iput-wide v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    .line 184
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->position:J

    iput-wide v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    .line 185
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->playState:I

    iput v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    .line 186
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->volumeValue:I

    iput v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    .line 187
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->bMute:Z

    iput-boolean v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    .line 189
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->curDMRContentTitle:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget v0, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->curDMRPlayState:I

    iput v0, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasRendererState()Z
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No Renderer state is set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetPauseSupport()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;->UNKNOWN:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mPauseSupport:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    .line 257
    return-void
.end method

.method public declared-synchronized setMute(Z)V
    .locals 2
    .parameter "bMute"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->hasRendererState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->hasRenderer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMfMuted()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 205
    invoke-super {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->setMute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "MuteState is same"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :cond_1
    :try_start_2
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "MuteState is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setPauseSupport(Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;)V
    .locals 3
    .parameter "aValue"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mPauseSupport:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    .line 246
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mPauseSupport:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public declared-synchronized setRendererState(Lcom/awox/jUPnPCP/UPnPRendererState;)V
    .locals 1
    .parameter "aState"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUIContentNextURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iput-object p1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentNextURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUIContentURI(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iput-object p1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUIState(Lcom/htc/dlnamiddlelayer/CacheItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 135
    monitor-enter p0

    if-nez p1, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentTitle:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentArtist:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentAlbum:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/CacheItem;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->fDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUIState(Z)Z
    .locals 6
    .parameter "setDMRStateOnly"

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x0

    .line 81
    .local v0, bIsSame:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->hasRendererState()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->hasRenderer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 130
    .end local v0           #bIsSame:Z
    .local v1, bIsSame:I
    :goto_0
    monitor-exit p0

    return v1

    .line 84
    .end local v1           #bIsSame:I
    .restart local v0       #bIsSame:Z
    :cond_0
    if-nez p1, :cond_4

    .line 87
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentTitle:Ljava/lang/String;

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMCreator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentArtist:Ljava/lang/String;

    .line 99
    :goto_2
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMDuration()J

    move-result-wide v2

    sget v4, Lcom/awox/jUPnPCP/jUPnPCP;->kRendererMediaDuration_Unknown:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->fDuration:J

    .line 105
    :goto_3
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getPlayPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->position:J

    .line 107
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getDMRPlayState()I

    move-result v3

    iput v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->playState:I

    .line 109
    const/4 v0, 0x1

    .line 119
    :goto_4
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->curDMRContentTitle:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getDMRPlayState()I

    move-result v3

    iput v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->curDMRPlayState:I

    .line 123
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getVolCtrlSupport()Z

    move-result v2

    if-nez v2, :cond_5

    .line 124
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->volumeValue:I

    .line 128
    :goto_5
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMfMuted()Z

    move-result v3

    iput-boolean v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->bMute:Z

    move v1, v0

    .line 130
    .restart local v1       #bIsSame:I
    goto :goto_0

    .line 90
    .end local v1           #bIsSame:I
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    const-string v3, "Unknown"

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentTitle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 96
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    const-string v3, "Unknown"

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentArtist:Ljava/lang/String;

    goto :goto_2

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMDuration()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->fDuration:J

    goto :goto_3

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    sget-object v3, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v3

    iput v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->playState:I

    .line 115
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->position:J

    goto :goto_4

    .line 126
    :cond_5
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mUIState:Lcom/htc/dlnamiddlelayer/PlaybackUIState;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMVolume()I

    move-result v3

    iput v3, v2, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->volumeValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public declared-synchronized setURI(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 1
    .parameter "uri"
    .parameter "entryInfo"
    .parameter "resInfo"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setUIContentURI(Ljava/lang/String;)Z

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->setURI(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchStopState()V
    .locals 2

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->hasRendererState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->hasRenderer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackController;->mState:Lcom/awox/jUPnPCP/UPnPRendererState;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    .line 235
    .local v0, theState:Lcom/awox/jUPnPCP/UPnPPlayState;
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_NO_MEDIA:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-eq v0, v1, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v0           #theState:Lcom/awox/jUPnPCP/UPnPPlayState;
    :cond_1
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
