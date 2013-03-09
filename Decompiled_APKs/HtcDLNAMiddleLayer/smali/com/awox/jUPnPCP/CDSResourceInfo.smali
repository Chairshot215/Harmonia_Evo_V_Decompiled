.class public Lcom/awox/jUPnPCP/CDSResourceInfo;
.super Ljava/lang/Object;
.source "CDSResourceInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSResourceInfo__SWIG_4()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    .line 56
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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSResourceInfo__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSResourceInfo__SWIG_0(JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSResourceInfo__SWIG_3(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CDSResourceInfo__SWIG_2(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    .line 48
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CDSResourceInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Clone()Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 5

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_Clone(JLcom/awox/jUPnPCP/CDSResourceInfo;)J

    move-result-wide v1

    .line 94
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

.method public GetBestResourceIndexJava(Ljava/lang/String;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .locals 4
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetBestResourceIndexJava__SWIG_2(JLcom/awox/jUPnPCP/CDSResourceInfo;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;-><init>(JZ)V

    return-object v0
.end method

.method public GetBestResourceIndexJava(Ljava/lang/String;Ljava/lang/String;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetBestResourceIndexJava__SWIG_1(JLcom/awox/jUPnPCP/CDSResourceInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;-><init>(JZ)V

    return-object v0
.end method

.method public GetBestResourceIndexJava(Ljava/lang/String;Ljava/lang/String;I)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v6, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetBestResourceIndexJava__SWIG_0(JLcom/awox/jUPnPCP/CDSResourceInfo;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;-><init>(JZ)V

    return-object v6
.end method

.method public GetExtraInfo(JILcom/awox/jUPnPCP/SWIGTYPE_p_awCString;Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;)J

    move-result-wide v6

    invoke-static {p5}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awCString;)J

    move-result-wide v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetExtraInfo(JLcom/awox/jUPnPCP/CDSResourceInfo;JIJJ)V

    .line 82
    return-void
.end method

.method public GetExtraInfoCount(J)J
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetExtraInfoCount(JLcom/awox/jUPnPCP/CDSResourceInfo;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetExtraInfoData(JI)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetExtraInfoData(JLcom/awox/jUPnPCP/CDSResourceInfo;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetExtraInfoName(JI)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetExtraInfoName(JLcom/awox/jUPnPCP/CDSResourceInfo;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetInfo(JJ)Lcom/awox/jUPnPCP/SWIGTYPE_p_awString;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v7, Lcom/awox/jUPnPCP/SWIGTYPE_p_awString;

    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetInfo(JLcom/awox/jUPnPCP/CDSResourceInfo;JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awString;-><init>(JZ)V

    return-object v7
.end method

.method public GetInfoAsCString(JJ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetInfoAsCString(JLcom/awox/jUPnPCP/CDSResourceInfo;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetInfoAsULong(JJ)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetInfoAsULong(JLcom/awox/jUPnPCP/CDSResourceInfo;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetMemoryUsage()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetMemoryUsage(JLcom/awox/jUPnPCP/CDSResourceInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetMimeTypeForResourceIndex(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetMimeTypeForResourceIndex(JLcom/awox/jUPnPCP/CDSResourceInfo;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetProtocolInfoForResourceIndex(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetProtocolInfoForResourceIndex(JLcom/awox/jUPnPCP/CDSResourceInfo;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetResourceCount()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetResourceCount(JLcom/awox/jUPnPCP/CDSResourceInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetResourceIndexOfURI(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetResourceIndexOfURI(JLcom/awox/jUPnPCP/CDSResourceInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;
    .locals 5
    .parameter

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_GetThumbnailURI(JLcom/awox/jUPnPCP/CDSResourceInfo;Ljava/lang/String;)J

    move-result-wide v1

    .line 124
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/ThumbnailGetResult;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/ThumbnailGetResult;-><init>(JZ)V

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_CDSResourceInfo(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/CDSResourceInfo;->delete()V

    .line 26
    return-void
.end method

.method public getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 5

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_mPackedData_get(JLcom/awox/jUPnPCP/CDSResourceInfo;)J

    move-result-wide v1

    .line 107
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
    .line 102
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CDSResourceInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CDSResourceInfo_mPackedData_set(JLcom/awox/jUPnPCP/CDSResourceInfo;J)V

    .line 103
    return-void
.end method
