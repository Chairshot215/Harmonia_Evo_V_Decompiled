.class public Lcom/awox/jUPnPCP/CmdSearch;
.super Lcom/awox/jUPnPCP/CmdBrowseSearch;
.source "CmdSearch.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdSearchUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/CmdBrowseSearch;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdSearch;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdSearch__SWIG_4(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdSearch__SWIG_3(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdSearch__SWIG_2(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdSearch__SWIG_1(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdSearch__SWIG_0(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    .line 38
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdSearch;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdSearch;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdSearch;->swigCPtr:J

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdSearch;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/CmdBrowseSearch;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMSearchCriteria()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdSearch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdSearch_mSearchCriteria_get(JLcom/awox/jUPnPCP/CmdSearch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
