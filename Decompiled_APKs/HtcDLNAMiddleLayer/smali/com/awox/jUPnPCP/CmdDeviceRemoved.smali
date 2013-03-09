.class public Lcom/awox/jUPnPCP/CmdDeviceRemoved;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdDeviceRemoved.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdDeviceRemovedUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdDeviceRemoved;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMDevice()Lcom/awox/jUPnPCP/UPnPDeviceBase;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceRemoved_mDevice_get(JLcom/awox/jUPnPCP/CmdDeviceRemoved;)J

    move-result-wide v1

    .line 41
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/awox/jUPnPCP/UPnPDeviceBase;

    invoke-direct {v0, v1, v2, v5}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 46
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_ContentServer_get()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 47
    new-instance v0, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-direct {v0, v1, v2, v5}, Lcom/awox/jUPnPCP/UPnPContentServer;-><init>(JZ)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Renderer_get()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 50
    new-instance v0, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1, v2, v5}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMRemovalReason()I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceRemoved_mRemovalReason_get(JLcom/awox/jUPnPCP/CmdDeviceRemoved;)I

    move-result v0

    return v0
.end method

.method public setMDevice(Lcom/awox/jUPnPCP/UPnPDeviceBase;)V
    .locals 6
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceRemoved_mDevice_set(JLcom/awox/jUPnPCP/CmdDeviceRemoved;JLcom/awox/jUPnPCP/UPnPDeviceBase;)V

    .line 36
    return-void
.end method

.method public setMRemovalReason(I)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceRemoved_mRemovalReason_set(JLcom/awox/jUPnPCP/CmdDeviceRemoved;I)V

    .line 57
    return-void
.end method
