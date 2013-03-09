.class public Lcom/awox/jUPnPCP/PostURLCallbackReason;
.super Ljava/lang/Object;
.source "PostURLCallbackReason.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_PostURLCallbackReason()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/PostURLCallbackReason;-><init>(JZ)V

    .line 64
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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/PostURLCallbackReason;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_PostURLCallbackReason(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/PostURLCallbackReason;->delete()V

    .line 26
    return-void
.end method

.method public getMErrorCode()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PostURLCallbackReason_mErrorCode_get(JLcom/awox/jUPnPCP/PostURLCallbackReason;)I

    move-result v0

    return v0
.end method

.method public getMReason()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PostURLCallbackReason_mReason_get(JLcom/awox/jUPnPCP/PostURLCallbackReason;)I

    move-result v0

    return v0
.end method

.method public getMRetryDelay()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PostURLCallbackReason_mRetryDelay_get(JLcom/awox/jUPnPCP/PostURLCallbackReason;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMErrorCode(I)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PostURLCallbackReason_mErrorCode_set(JLcom/awox/jUPnPCP/PostURLCallbackReason;I)V

    .line 56
    return-void
.end method

.method public setMReason(I)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PostURLCallbackReason_mReason_set(JLcom/awox/jUPnPCP/PostURLCallbackReason;I)V

    .line 40
    return-void
.end method

.method public setMRetryDelay(J)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PostURLCallbackReason;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PostURLCallbackReason_mRetryDelay_set(JLcom/awox/jUPnPCP/PostURLCallbackReason;J)V

    .line 48
    return-void
.end method
