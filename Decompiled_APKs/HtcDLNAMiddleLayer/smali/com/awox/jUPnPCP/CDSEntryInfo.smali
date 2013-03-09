.class public Lcom/awox/jUPnPCP/CDSEntryInfo;
.super Ljava/lang/Object;
.source "CDSEntryInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSEntryInfo__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSEntryInfo__SWIG_0(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CDSEntryInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Clone()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 5

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_Clone(JLcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v1

    .line 74
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

.method public GetChildCount()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetChildCount(JLcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetExtraInfo(ILcom/awox/jUPnPCP/SWIGTYPE_p_awCString;Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;)J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetExtraInfo(JLcom/awox/jUPnPCP/CDSEntryInfo;IJJ)V

    .line 66
    return-void
.end method

.method public GetExtraInfoCount()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetExtraInfoCount(JLcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetExtraInfoData(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetExtraInfoData(JLcom/awox/jUPnPCP/CDSEntryInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetExtraInfoName(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetExtraInfoName(JLcom/awox/jUPnPCP/CDSEntryInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetInfoAsCString(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetInfoAsCString(JLcom/awox/jUPnPCP/CDSEntryInfo;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetInfoAsULong(J)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetInfoAsULong(JLcom/awox/jUPnPCP/CDSEntryInfo;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetMemoryUsage()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_GetMemoryUsage(JLcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public IsContainer()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_IsContainer(JLcom/awox/jUPnPCP/CDSEntryInfo;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_CDSEntryInfo(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/CDSEntryInfo;->delete()V

    .line 26
    return-void
.end method

.method public getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 5

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_mPackedData_get(JLcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v1

    .line 87
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

.method public setMPackedData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 4
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSEntryInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSEntryInfo_mPackedData_set(JLcom/awox/jUPnPCP/CDSEntryInfo;J)V

    .line 83
    return-void
.end method
