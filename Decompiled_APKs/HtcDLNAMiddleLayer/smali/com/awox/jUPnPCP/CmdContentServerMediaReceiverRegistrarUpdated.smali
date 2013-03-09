.class public Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdContentServerMediaReceiverRegistrarUpdated.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdContentServerMediaReceiverRegistrarUpdatedUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdContentServerMediaReceiverRegistrarUpdated(JLcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    .line 84
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public authorizationDeniedUpdateID()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_authorizationDeniedUpdateID(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public authorizationGrantedUpdateID()Z
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_authorizationGrantedUpdateID(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMDeniedUpdateID()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mDeniedUpdateID_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMGrantedUpdateID()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mGrantedUpdateID_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMRevokedUpdateID()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mRevokedUpdateID_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMRevokedUpdateIDHasChanged()Z
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mRevokedUpdateIDHasChanged_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public getMSucceededUpdateID()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mSucceededUpdateID_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMfDeniedUpdateIDHasChanged()Z
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mfDeniedUpdateIDHasChanged_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public getMfGrantedUpdateIDHasChanged()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mfGrantedUpdateIDHasChanged_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public getMfSucceededUpdateIDHasChanged()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_mfSucceededUpdateIDHasChanged_get(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public validationRevokedUpdateID()Z
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_validationRevokedUpdateID(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method

.method public validationSucceededUpdateID()Z
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdContentServerMediaReceiverRegistrarUpdated_validationSucceededUpdateID(JLcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;)Z

    move-result v0

    return v0
.end method
