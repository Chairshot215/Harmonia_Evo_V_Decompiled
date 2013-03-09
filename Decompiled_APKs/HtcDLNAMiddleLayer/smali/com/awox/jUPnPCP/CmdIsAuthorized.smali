.class public Lcom/awox/jUPnPCP/CmdIsAuthorized;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdIsAuthorized.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdIsAuthorizedUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdIsAuthorized;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdIsAuthorized__SWIG_1(JLcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdIsAuthorized__SWIG_0(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    .line 42
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdIsAuthorized;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdIsAuthorized;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdIsAuthorized;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdIsAuthorized;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMRemoteDeviceUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdIsAuthorized;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdIsAuthorized_mRemoteDeviceUDN_get(JLcom/awox/jUPnPCP/CmdIsAuthorized;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMResult()I
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdIsAuthorized;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdIsAuthorized_mResult_get(JLcom/awox/jUPnPCP/CmdIsAuthorized;)I

    move-result v0

    return v0
.end method
