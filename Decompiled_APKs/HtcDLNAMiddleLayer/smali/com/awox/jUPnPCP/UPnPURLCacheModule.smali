.class public Lcom/awox/jUPnPCP/UPnPURLCacheModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "UPnPURLCacheModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPURLCacheModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPURLCacheModule__SWIG_2(JLcom/awox/jUPnPCP/UPnPStack;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;-><init>(JZ)V

    .line 46
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

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPURLCacheModule__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;-><init>(JZ)V

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

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPURLCacheModule__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;JJLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;-><init>(JZ)V

    .line 38
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPURLCacheModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetFromURL(Ljava/lang/String;)Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPCachedURL_t;
    .locals 4
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPCachedURL_t;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPURLCacheModule_GetFromURL(JLcom/awox/jUPnPCP/UPnPURLCacheModule;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPCachedURL_t;-><init>(JZ)V

    return-object v0
.end method

.method public GetFromURLJava(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCachedURL;
    .locals 5
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPURLCacheModule_GetFromURLJava(JLcom/awox/jUPnPCP/UPnPURLCacheModule;Ljava/lang/String;)J

    move-result-wide v1

    .line 54
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/UPnPCachedURL;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/UPnPCachedURL;-><init>(JZ)V

    goto :goto_0
.end method

.method public Lock(Lcom/awox/jUPnPCP/UPnPCachedURL;)[B
    .locals 6
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCachedURL;->getCPtr(Lcom/awox/jUPnPCP/UPnPCachedURL;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPURLCacheModule_Lock(JLcom/awox/jUPnPCP/UPnPURLCacheModule;JLcom/awox/jUPnPCP/UPnPCachedURL;)[B

    move-result-object v0

    return-object v0
.end method

.method public Release(Lcom/awox/jUPnPCP/UPnPCachedURL;)V
    .locals 6
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCachedURL;->getCPtr(Lcom/awox/jUPnPCP/UPnPCachedURL;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPURLCacheModule_Release(JLcom/awox/jUPnPCP/UPnPURLCacheModule;JLcom/awox/jUPnPCP/UPnPCachedURL;)V

    .line 61
    return-void
.end method

.method public Unlock(Lcom/awox/jUPnPCP/UPnPCachedURL;)V
    .locals 6
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCachedURL;->getCPtr(Lcom/awox/jUPnPCP/UPnPCachedURL;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPURLCacheModule_Unlock(JLcom/awox/jUPnPCP/UPnPURLCacheModule;JLcom/awox/jUPnPCP/UPnPCachedURL;)V

    .line 65
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

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

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->delete()V

    .line 25
    return-void
.end method
