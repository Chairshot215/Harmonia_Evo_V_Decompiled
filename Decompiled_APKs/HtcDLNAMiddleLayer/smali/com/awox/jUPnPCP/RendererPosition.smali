.class public Lcom/awox/jUPnPCP/RendererPosition;
.super Ljava/lang/Object;
.source "RendererPosition.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/RendererPosition;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCMemOwn:Z

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getMAbsoluteCounter()I
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->RendererPosition_mAbsoluteCounter_get(JLcom/awox/jUPnPCP/RendererPosition;)I

    move-result v0

    return v0
.end method

.method public getMAbsoluteSeconds()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->RendererPosition_mAbsoluteSeconds_get(JLcom/awox/jUPnPCP/RendererPosition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMRelativeCounter()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->RendererPosition_mRelativeCounter_get(JLcom/awox/jUPnPCP/RendererPosition;)I

    move-result v0

    return v0
.end method

.method public getMRelativeSeconds()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->RendererPosition_mRelativeSeconds_get(JLcom/awox/jUPnPCP/RendererPosition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMfProvedPosition()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/RendererPosition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->RendererPosition_mfProvedPosition_get(JLcom/awox/jUPnPCP/RendererPosition;)Z

    move-result v0

    return v0
.end method
