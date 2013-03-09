.class public Lcom/awox/jUPnPCP/CmdDeviceAdded;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdDeviceAdded.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdDeviceAddedUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdDeviceAdded;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMDLNACaps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mDLNACaps_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMDLNADoc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mDLNADoc_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mFriendlyName_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMInterfaceToDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mInterfaceToDevice_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMLocationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mLocationURL_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMManufacturerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mManufacturerName_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMManufacturerURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mManufacturerURL_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mModelDescription_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mModelName_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mModelNumber_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mModelURL_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mSerialNumber_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mServer_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mUDN_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDeviceAdded;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDeviceAdded_mUPC_get(JLcom/awox/jUPnPCP/CmdDeviceAdded;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
