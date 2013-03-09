.class public Lcom/awox/jUPnPCP/ThumbnailGetResult;
.super Ljava/lang/Object;
.source "ThumbnailGetResult.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_ThumbnailGetResult(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/ThumbnailGetResult;-><init>(JZ)V

    .line 56
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/ThumbnailGetResult;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_ThumbnailGetResult(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->delete()V

    .line 26
    return-void
.end method

.method public getMProfileID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ThumbnailGetResult_mProfileID_get(JLcom/awox/jUPnPCP/ThumbnailGetResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ThumbnailGetResult_mURI_get(JLcom/awox/jUPnPCP/ThumbnailGetResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMProfileID(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ThumbnailGetResult_mProfileID_set(JLcom/awox/jUPnPCP/ThumbnailGetResult;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setMURI(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ThumbnailGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ThumbnailGetResult_mURI_set(JLcom/awox/jUPnPCP/ThumbnailGetResult;Ljava/lang/String;)V

    .line 48
    return-void
.end method
