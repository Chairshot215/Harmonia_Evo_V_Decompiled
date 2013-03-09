.class public Lcom/awox/jUPnPCP/UPnPCommand;
.super Ljava/lang/Object;
.source "UPnPCommand.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPCommand;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public ExecuteCommandCompletedActionHandlers()Z
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_ExecuteCommandCompletedActionHandlers(JLcom/awox/jUPnPCP/UPnPCommand;)Z

    move-result v0

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_GetName(JLcom/awox/jUPnPCP/UPnPCommand;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDevice(I)Lcom/awox/jUPnPCP/UPnPDeviceBase;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_getDevice(JLcom/awox/jUPnPCP/UPnPCommand;I)J

    move-result-wide v1

    .line 49
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/awox/jUPnPCP/UPnPDeviceBase;

    invoke-direct {v0, v1, v2, v5}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 54
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_ContentServer_get()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 55
    new-instance v0, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-direct {v0, v1, v2, v5}, Lcom/awox/jUPnPCP/UPnPContentServer;-><init>(JZ)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Renderer_get()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 58
    new-instance v0, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1, v2, v5}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMCommandID()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mCommandID_get(JLcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMDeviceID()Lcom/awox/jUPnPCP/SWIGTYPE_p_void;
    .locals 5

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mDeviceID_get(JLcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v1

    .line 90
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMError()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mError_get(JLcom/awox/jUPnPCP/UPnPCommand;)I

    move-result v0

    return v0
.end method

.method public getMUniqueID()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mUniqueID_get(JLcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMUserData()Lcom/awox/jUPnPCP/SWIGTYPE_p_void;
    .locals 5

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mUserData_get(JLcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v1

    .line 81
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStack()Lcom/awox/jUPnPCP/UPnPStack;
    .locals 5

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_getStack(JLcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v1

    .line 95
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

.method public isFromDevice(Lcom/awox/jUPnPCP/UPnPDeviceBase;)Z
    .locals 6
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_isFromDevice(JLcom/awox/jUPnPCP/UPnPCommand;JLcom/awox/jUPnPCP/UPnPDeviceBase;)Z

    move-result v0

    return v0
.end method

.method public setMDeviceID(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)V
    .locals 4
    .parameter

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mDeviceID_set(JLcom/awox/jUPnPCP/UPnPCommand;J)V

    .line 86
    return-void
.end method

.method public setMUserData(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)V
    .locals 4
    .parameter

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCommand_mUserData_set(JLcom/awox/jUPnPCP/UPnPCommand;J)V

    .line 77
    return-void
.end method
