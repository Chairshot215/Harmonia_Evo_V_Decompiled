.class public Lcom/htc/dlnamiddlelayer/PlaybackBase;
.super Ljava/lang/Object;
.source "PlaybackBase.java"


# static fields
.field protected static final VOLUME_CONTROL_NOT_SUPPORTED:I = -0x1

.field protected static final VOLUME_CONTROL_SUPPORTED:I = 0x1

.field protected static final VOLUME_CONTROL_UNKNOWN:I


# instance fields
.field protected mCmdPauseID:J

.field protected mCmdPlayMediaID:J

.field protected mCmdSeekID:J

.field protected mCmdSetUriID:J

.field protected mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

.field protected mVolCtrlSupport:I


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 3
    .parameter "aRenderer"

    .prologue
    const-wide/16 v1, -0x1

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 36
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSetUriID:J

    .line 38
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPlayMediaID:J

    .line 40
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSeekID:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mVolCtrlSupport:I

    .line 44
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPauseID:J

    .line 48
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 49
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->reSetVolCtrlSupport()V

    .line 50
    return-void
.end method


# virtual methods
.method public getCmdPauseID()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPauseID:J

    return-wide v0
.end method

.method public getCmdPlayMediaID()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPlayMediaID:J

    return-wide v0
.end method

.method public getCmdSeekID()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSeekID:J

    return-wide v0
.end method

.method public getCmdSetUriID()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSetUriID:J

    return-wide v0
.end method

.method public declared-synchronized getPlayPosition()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 176
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetPosition()Lcom/awox/jUPnPCP/RendererPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/RendererPosition;->getMRelativeSeconds()J

    move-result-wide v0

    .line 180
    .local v0, position:J
    sget-wide v4, Lcom/awox/jUPnPCP/jUPnPCP;->kRendererMediaPosition_Unknown:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 182
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Play Position: unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 190
    .end local v0           #position:J
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 189
    :cond_1
    :try_start_1
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Play Position: No renderer"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v2

    .line 190
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getVolCtrlSupport()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mVolCtrlSupport:I

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const-string v3, "urn:schemas-upnp-org:service:RenderingControl:1"

    const-string v4, "SetVolume"

    invoke-virtual {v2, v3, v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->supportAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mVolCtrlSupport:I

    .line 206
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mVolCtrlSupport:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v5, :cond_3

    .line 209
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    .line 203
    :cond_2
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mVolCtrlSupport:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_1
.end method

.method public declared-synchronized hasRenderer()Z
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No Renderer is set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 5

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Lcom/awox/jUPnPCP/CmdPauseMedia;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 89
    .local v0, theCommand:Lcom/awox/jUPnPCP/CmdPauseMedia;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdPauseMedia;->getMUniqueID()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPauseID:J

    .line 92
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send pause ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPauseID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v0           #theCommand:Lcom/awox/jUPnPCP/CmdPauseMedia;
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized play()V
    .locals 5

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Lcom/awox/jUPnPCP/CmdPlayMedia;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 76
    .local v0, theCommand:Lcom/awox/jUPnPCP/CmdPlayMedia;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdPlayMedia;->getMUniqueID()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPlayMediaID:J

    .line 79
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send play ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdPlayMediaID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v0           #theCommand:Lcom/awox/jUPnPCP/CmdPlayMedia;
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reSetCmdSetUriID()V
    .locals 2

    .prologue
    .line 234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSetUriID:J

    .line 235
    return-void
.end method

.method public reSetVolCtrlSupport()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mVolCtrlSupport:I

    .line 215
    return-void
.end method

.method public declared-synchronized setMute()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetMute;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextURI(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 2
    .parameter "sURI"
    .parameter "entryInfo"
    .parameter "resInfo"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlayMode(Lcom/awox/jUPnPCP/UPnPPlayMode;)V
    .locals 3
    .parameter "playMode"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1, p1}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/UPnPPlayMode;)V

    .line 170
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 1
    .parameter "aRenderer"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 55
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->reSetVolCtrlSupport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSeek(I)V
    .locals 4
    .parameter "nSeconds"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Lcom/awox/jUPnPCP/CmdSeek;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->getKSeek_RELATIVE()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V

    .line 134
    .local v0, theCommand:Lcom/awox/jUPnPCP/CmdSeek;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdSeek;->getMUniqueID()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSeekID:J

    .line 137
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seek set: seconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v0           #theCommand:Lcom/awox/jUPnPCP/CmdSeek;
    :cond_0
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setURI(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 6
    .parameter "sURI"
    .parameter "entryInfo"
    .parameter "resInfo"

    .prologue
    .line 144
    monitor-enter p0

    const-wide/16 v1, -0x1

    :try_start_0
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSetUriID:J

    .line 146
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetURI2;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Z)V

    .line 149
    .local v0, theCommand:Lcom/awox/jUPnPCP/CmdSetURI2;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMUniqueID()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mCmdSetUriID:J

    .line 152
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v0           #theCommand:Lcom/awox/jUPnPCP/CmdSetURI2;
    :cond_1
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setVolume(I)V
    .locals 3
    .parameter "nValue"

    .prologue
    .line 107
    monitor-enter p0

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 109
    :cond_0
    :try_start_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume value invalid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetVolume;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->getCmdSetVolume_ABSOLUTE()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V

    .line 115
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaybackBase;->hasRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/awox/jUPnPCP/CmdStopMedia;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaybackBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
