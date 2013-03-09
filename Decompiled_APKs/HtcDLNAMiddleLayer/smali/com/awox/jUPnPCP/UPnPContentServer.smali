.class public Lcom/awox/jUPnPCP/UPnPContentServer;
.super Lcom/awox/jUPnPCP/UPnPDeviceBase;
.source "UPnPContentServer.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPContentServerUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public ContentChanged(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_ContentChanged(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ContentNeedUpdate()V
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_ContentNeedUpdate(JLcom/awox/jUPnPCP/UPnPContentServer;)V

    .line 63
    return-void
.end method

.method public GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v5

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;)J

    move-result-wide v7

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetBestResourceIndex__SWIG_2(JLcom/awox/jUPnPCP/UPnPContentServer;JJJ)I

    move-result v0

    return v0
.end method

.method public GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;Ljava/lang/String;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v5

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;)J

    move-result-wide v7

    move-object v2, p0

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetBestResourceIndex__SWIG_1(JLcom/awox/jUPnPCP/UPnPContentServer;JJJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;Ljava/lang/String;I)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v5

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_bool;)J

    move-result-wide v7

    move-object v2, p0

    move-object v9, p4

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetBestResourceIndex__SWIG_0(JLcom/awox/jUPnPCP/UPnPContentServer;JJJLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GetCurrentContainerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetCurrentContainerID(JLcom/awox/jUPnPCP/UPnPContentServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetParentContainerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetParentContainerID(JLcom/awox/jUPnPCP/UPnPContentServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSearchCapabilities()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetSearchCapabilities(JLcom/awox/jUPnPCP/UPnPContentServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetShortcutList(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetShortcutList(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSortCapabilities()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetSortCapabilities(JLcom/awox/jUPnPCP/UPnPContentServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSourceProtocolInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;
    .locals 5

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetSourceProtocolInfo(JLcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v1

    .line 50
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetSourceProtocolInfoString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetSourceProtocolInfoString(JLcom/awox/jUPnPCP/UPnPContentServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUploadProfiles()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_GetUploadProfiles(JLcom/awox/jUPnPCP/UPnPContentServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsUpdating()Z
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_IsUpdating(JLcom/awox/jUPnPCP/UPnPContentServer;)Z

    move-result v0

    return v0
.end method

.method public PushContainerID(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_PushContainerID(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;
    .locals 5

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_SubscribeToEvents(JLcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v1

    .line 81
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdDeviceSubscribe;-><init>(JZ)V

    goto :goto_0
.end method

.method public UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;
    .locals 5

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPContentServer_UnSubscribeToEvents(JLcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v1

    .line 86
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;-><init>(JZ)V

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServer;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method
