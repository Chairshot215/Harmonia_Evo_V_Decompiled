.class public Lcom/awox/jUPnPCP/CmdRendererAdded;
.super Lcom/awox/jUPnPCP/CmdDeviceAdded;
.source "CmdRendererAdded.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdRendererAddedUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/CmdDeviceAdded;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdRendererAdded;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/CmdDeviceAdded;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMMaxBGMCount()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererAdded_mMaxBGMCount_get(JLcom/awox/jUPnPCP/CmdRendererAdded;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMMediaRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;
    .locals 5

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererAdded_mMediaRenderer_get(JLcom/awox/jUPnPCP/CmdRendererAdded;)J

    move-result-wide v1

    .line 42
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMSinkProtocolInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererAdded_mSinkProtocolInfo_get(JLcom/awox/jUPnPCP/CmdRendererAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSourceProtocolInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererAdded_mSourceProtocolInfo_get(JLcom/awox/jUPnPCP/CmdRendererAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMTransportPlaySpeed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererAdded_mTransportPlaySpeed_get(JLcom/awox/jUPnPCP/CmdRendererAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
