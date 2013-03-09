.class public Lcom/awox/jUPnPCP/UPnPDeviceBase;
.super Ljava/lang/Object;
.source "UPnPDeviceBase.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetDeviceIcon(J)Lcom/awox/jUPnPCP/UPnPDeviceIcon;
    .locals 4
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/awox/jUPnPCP/UPnPDeviceIcon;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_GetDeviceIcon(JLcom/awox/jUPnPCP/UPnPDeviceBase;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/UPnPDeviceIcon;-><init>(JZ)V

    return-object v0
.end method

.method public GetDeviceIconURL(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_GetDeviceIconURL__SWIG_2(JLcom/awox/jUPnPCP/UPnPDeviceBase;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDeviceIconURL(JLcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;)J

    move-result-wide v5

    move-object v2, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_GetDeviceIconURL__SWIG_1(JLcom/awox/jUPnPCP/UPnPDeviceBase;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDeviceIconURL(JLcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;)J

    move-result-wide v5

    invoke-static {p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_unsigned_long;)J

    move-result-wide v7

    move-object v2, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_GetDeviceIconURL__SWIG_0(JLcom/awox/jUPnPCP/UPnPDeviceBase;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDeviceTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_GetDeviceTypeName(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMatchingID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_GetMatchingID(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsSubscribedToEvents()Z
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_IsSubscribedToEvents(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Z

    move-result v0

    return v0
.end method

.method public SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;
    .locals 5

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_SubscribeToEvents(JLcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v1

    .line 102
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
    .line 106
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_UnSubscribeToEvents(JLcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v1

    .line 107
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

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDeviceType()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_getDeviceType(JLcom/awox/jUPnPCP/UPnPDeviceBase;)I

    move-result v0

    return v0
.end method

.method public getMDLNACaps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mDLNACaps_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMDLNADoc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mDLNADoc_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mFriendlyName_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMInterfaceToDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mInterfaceToDevice_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMLocationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mLocationURL_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMManufacturerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mManufacturerName_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMManufacturerURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mManufacturerURL_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mModelDescription_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mModelName_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mModelNumber_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mModelURL_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mSerialNumber_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mServer_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mUDN_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_mUPC_get(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStack()Lcom/awox/jUPnPCP/UPnPStack;
    .locals 5

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_getStack(JLcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v1

    .line 118
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/UPnPStack;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/UPnPStack;-><init>(JZ)V

    goto :goto_0
.end method

.method public isOnLocalHost()Z
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_isOnLocalHost(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Z

    move-result v0

    return v0
.end method

.method public supportAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_supportAction(JLcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportCapability(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_supportCapability(JLcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportDeviceInterop(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_supportDeviceInterop(JLcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportExtension(I)Z
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_supportExtension(JLcom/awox/jUPnPCP/UPnPDeviceBase;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDeviceBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDeviceBase_toString(JLcom/awox/jUPnPCP/UPnPDeviceBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
