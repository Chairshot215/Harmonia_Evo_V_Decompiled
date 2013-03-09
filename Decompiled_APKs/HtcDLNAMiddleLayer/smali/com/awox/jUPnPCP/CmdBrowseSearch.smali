.class public Lcom/awox/jUPnPCP/CmdBrowseSearch;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdBrowseSearch.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdBrowseSearchUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    .line 17
    return-void
.end method

.method public static AdjustFilterForAllIP(Lcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_AdjustFilterForAllIP(JLcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdBrowseSearch;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_NewEntryInfo(JLcom/awox/jUPnPCP/CmdBrowseSearch;J)J

    move-result-wide v1

    .line 67
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSEntryInfo;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 5
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_NewResourceInfo(JLcom/awox/jUPnPCP/CmdBrowseSearch;J)J

    move-result-wide v1

    .line 62
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mFilter_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMItemID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mItemID_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMMaxResults()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mMaxResults_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMResultCount()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mResultCount_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMSortCriteria()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mSortCriteria_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMStartIndex()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mStartIndex_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMTotalMatches()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mTotalMatches_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMUpdateID()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdBrowseSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdBrowseSearch_mUpdateID_get(JLcom/awox/jUPnPCP/CmdBrowseSearch;)J

    move-result-wide v0

    return-wide v0
.end method
