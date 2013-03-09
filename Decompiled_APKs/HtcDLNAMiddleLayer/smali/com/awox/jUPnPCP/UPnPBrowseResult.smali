.class public Lcom/awox/jUPnPCP/UPnPBrowseResult;
.super Ljava/lang/Object;
.source "UPnPBrowseResult.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPBrowseResult;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5
    .parameter

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_GetEntryInfo(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)J

    move-result-wide v1

    .line 103
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

.method public GetResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 5
    .parameter

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_GetResourceInfo(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)J

    move-result-wide v1

    .line 98
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

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_UPnPBrowseResult(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->delete()V

    .line 26
    return-void
.end method

.method public getMCount()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mCount_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSEntryInfo;
    .locals 5

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mEntryInfo_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v1

    .line 76
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSEntryInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSEntryInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMMemorySize()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mMemorySize_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMRequestedCount()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mRequestedCount_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMResourceInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSResourceInfo;
    .locals 5

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mResourceInfo_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v1

    .line 85
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSResourceInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSResourceInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMStartIndex()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mStartIndex_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTotalMatches()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mTotalMatches_get(JLcom/awox/jUPnPCP/UPnPBrowseResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMCount(J)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mCount_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 48
    return-void
.end method

.method public setMEntryInfo(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSEntryInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSEntryInfo;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSEntryInfo;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mEntryInfo_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 72
    return-void
.end method

.method public setMMemorySize(J)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mMemorySize_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 90
    return-void
.end method

.method public setMRequestedCount(J)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mRequestedCount_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 64
    return-void
.end method

.method public setMResourceInfo(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSResourceInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSResourceInfo;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_CDSResourceInfo;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mResourceInfo_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 81
    return-void
.end method

.method public setMStartIndex(J)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mStartIndex_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 40
    return-void
.end method

.method public setMTotalMatches(J)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseResult_mTotalMatches_set(JLcom/awox/jUPnPCP/UPnPBrowseResult;J)V

    .line 56
    return-void
.end method
