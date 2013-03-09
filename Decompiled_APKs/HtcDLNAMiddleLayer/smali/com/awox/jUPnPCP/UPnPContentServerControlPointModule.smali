.class public Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "UPnPContentServerControlPointModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPContentServerControlPointModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPContentServerControlPointModule__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;-><init>(JZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPContentServerControlPointModule__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;-><init>(JZ)V

    .line 34
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControlPointModule;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControlPointModule;->swigCMemOwn:Z

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;->swigCPtr:J

    .line 29
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControlPointModule;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
