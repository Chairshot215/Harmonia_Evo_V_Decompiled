.class public Lcom/awox/jUPnPCP/PushControllerGetResult;
.super Ljava/lang/Object;
.source "PushControllerGetResult.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v4

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_PushControllerGetResult(Ljava/lang/String;IJJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;-><init>(JZ)V

    .line 74
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/PushControllerGetResult;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_PushControllerGetResult(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/PushControllerGetResult;->delete()V

    .line 26
    return-void
.end method

.method public getMConfidence()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mConfidence_get(JLcom/awox/jUPnPCP/PushControllerGetResult;)I

    move-result v0

    return v0
.end method

.method public getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 5

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mEntryInfo_get(JLcom/awox/jUPnPCP/PushControllerGetResult;)J

    move-result-wide v1

    .line 60
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMResourceInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 5

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mResourceInfo_get(JLcom/awox/jUPnPCP/PushControllerGetResult;)J

    move-result-wide v1

    .line 69
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mURI_get(JLcom/awox/jUPnPCP/PushControllerGetResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMConfidence(I)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mConfidence_set(JLcom/awox/jUPnPCP/PushControllerGetResult;I)V

    .line 48
    return-void
.end method

.method public setMEntryInfo(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mEntryInfo_set(JLcom/awox/jUPnPCP/PushControllerGetResult;J)V

    .line 56
    return-void
.end method

.method public setMResourceInfo(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mResourceInfo_set(JLcom/awox/jUPnPCP/PushControllerGetResult;J)V

    .line 65
    return-void
.end method

.method public setMURI(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerGetResult_mURI_set(JLcom/awox/jUPnPCP/PushControllerGetResult;Ljava/lang/String;)V

    .line 40
    return-void
.end method
