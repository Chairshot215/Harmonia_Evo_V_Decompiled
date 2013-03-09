.class public Lcom/awox/jUPnPCP/UPnPRendererState;
.super Ljava/lang/Object;
.source "UPnPRendererState.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPRendererState;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public IsActionAvailable(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_IsActionAvailable(JLcom/awox/jUPnPCP/UPnPRendererState;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCMemOwn:Z

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getMActiveKeys()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mActiveKeys_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMCreator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mCreator_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMDuration()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mDuration_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMMediaDuration()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mMediaDuration_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMMediaMetaDataInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mMediaMetaDataInfo_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 96
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
    .line 100
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mMediaMetaDataRes_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 101
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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mMediaURI_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMNextMediaMetaDataInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mNextMediaMetaDataInfo_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 106
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
    .line 110
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mNextMediaMetaDataRes_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 111
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
    .line 68
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mNextMediaURI_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPlayMode()Lcom/awox/jUPnPCP/UPnPPlayMode;
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mPlayMode_get(JLcom/awox/jUPnPCP/UPnPRendererState;)I

    move-result v0

    invoke-static {v0}, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigToEnum(I)Lcom/awox/jUPnPCP/UPnPPlayMode;

    move-result-object v0

    return-object v0
.end method

.method public getMPlaySpeed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mPlaySpeed_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPlaySpeedList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mPlaySpeedList_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mPlayState_get(JLcom/awox/jUPnPCP/UPnPRendererState;)I

    move-result v0

    invoke-static {v0}, Lcom/awox/jUPnPCP/UPnPPlayState;->swigToEnum(I)Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v0

    return-object v0
.end method

.method public getMPlayStatus()I
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mPlayStatus_get(JLcom/awox/jUPnPCP/UPnPRendererState;)I

    move-result v0

    return v0
.end method

.method public getMTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTitle_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMTrackCount()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTrackCount_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTrackMetaDataInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTrackMetaDataInfo_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 86
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
    .line 90
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTrackMetaDataRes_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 91
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
    .line 73
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTrackNumber_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTrackURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTrackURI_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMTransportActions()Lcom/awox/jUPnPCP/SWIGTYPE_p_awCustomHashTable;
    .locals 5

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mTransportActions_get(JLcom/awox/jUPnPCP/UPnPRendererState;)J

    move-result-wide v1

    .line 116
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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mVolume_get(JLcom/awox/jUPnPCP/UPnPRendererState;)I

    move-result v0

    return v0
.end method

.method public getMfMuted()Z
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRendererState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRendererState_mfMuted_get(JLcom/awox/jUPnPCP/UPnPRendererState;)Z

    move-result v0

    return v0
.end method
