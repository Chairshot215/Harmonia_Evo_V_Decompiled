.class public Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "UPnPBrowseCacheModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPBrowseCacheModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPBrowseCacheModule__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;-><init>(JZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;JJLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPBrowseCacheModule__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;JJLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;-><init>(JZ)V

    .line 38
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Browse(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;J)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-wide/from16 v9, p5

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_Browse__SWIG_2(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;J)J

    move-result-wide v1

    .line 60
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public Browse(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;JLjava/lang/String;)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_Browse__SWIG_1(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;JLjava/lang/String;)J

    move-result-wide v1

    .line 55
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public Browse(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;JLjava/lang/String;Z)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v0 .. v12}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_Browse__SWIG_0(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;JLjava/lang/String;Z)J

    move-result-wide v1

    .line 50
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetInfo(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_GetInfo__SWIG_2(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;)J

    move-result-wide v1

    .line 75
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetInfo(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_GetInfo__SWIG_1(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 70
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetInfo(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;Z)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_GetInfo__SWIG_0(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v1

    .line 65
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public Search(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;J)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_Search__SWIG_2(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 90
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public Search(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-static/range {v0 .. v12}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_Search__SWIG_1(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v1

    .line 85
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public Search(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/awox/jUPnPCP/CmdBrowseCached;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v0 .. v13}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_Search__SWIG_0(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)J

    move-result-wide v1

    .line 80
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    goto :goto_0
.end method

.method public SetCacheSize(J)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseCacheModule_SetCacheSize(JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;J)V

    .line 46
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControlPointModule;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControlPointModule;->swigCMemOwn:Z

    .line 32
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->swigCPtr:J

    .line 33
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControlPointModule;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->delete()V

    .line 25
    return-void
.end method
