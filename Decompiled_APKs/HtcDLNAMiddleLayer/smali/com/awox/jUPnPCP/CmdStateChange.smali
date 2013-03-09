.class public Lcom/awox/jUPnPCP/CmdStateChange;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdStateChange.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdStateChangeUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdStateChange(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    .line 117
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdStateChange;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 29
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMActiveKeys()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mActiveKeys_get(JLcom/awox/jUPnPCP/CmdStateChange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMDuration()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mDuration_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMMediaDuration()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mMediaDuration_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMMediaMetaDataInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mMediaMetaDataInfo_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 92
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSEntryInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMMediaMetaDataRes()Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mMediaMetaDataRes_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 97
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMMediaURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mMediaURI_get(JLcom/awox/jUPnPCP/CmdStateChange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMNextMediaMetaDataInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mNextMediaMetaDataInfo_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 102
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSEntryInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMNextMediaMetaDataRes()Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 5

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mNextMediaMetaDataRes_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 107
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMNextMediaURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mNextMediaURI_get(JLcom/awox/jUPnPCP/CmdStateChange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPlayMode()Lcom/awox/jUPnPCP/UPnPPlayMode;
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mPlayMode_get(JLcom/awox/jUPnPCP/CmdStateChange;)I

    move-result v0

    invoke-static {v0}, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigToEnum(I)Lcom/awox/jUPnPCP/UPnPPlayMode;

    move-result-object v0

    return-object v0
.end method

.method public getMPlaySpeed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mPlaySpeed_get(JLcom/awox/jUPnPCP/CmdStateChange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mPlayState_get(JLcom/awox/jUPnPCP/CmdStateChange;)I

    move-result v0

    invoke-static {v0}, Lcom/awox/jUPnPCP/UPnPPlayState;->swigToEnum(I)Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    return-object v0
.end method

.method public getMPlayStatus()I
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mPlayStatus_get(JLcom/awox/jUPnPCP/CmdStateChange;)I

    move-result v0

    return v0
.end method

.method public getMTrackCount()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mTrackCount_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTrackMetaDataInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mTrackMetaDataInfo_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 82
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSEntryInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMTrackMetaDataRes()Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 5

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mTrackMetaDataRes_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 87
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMTrackNumber()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mTrackNumber_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTrackURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mTrackURI_get(JLcom/awox/jUPnPCP/CmdStateChange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMTransportActions()Lcom/awox/jUPnPCP/SWIGTYPE_p_awCustomHashTable;
    .locals 5

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mTransportActions_get(JLcom/awox/jUPnPCP/CmdStateChange;)J

    move-result-wide v1

    .line 112
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awCustomHashTable;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awCustomHashTable;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMVolume()I
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mVolume_get(JLcom/awox/jUPnPCP/CmdStateChange;)I

    move-result v0

    return v0
.end method

.method public getMfMute()Z
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdStateChange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdStateChange_mfMute_get(JLcom/awox/jUPnPCP/CmdStateChange;)Z

    move-result v0

    return v0
.end method
