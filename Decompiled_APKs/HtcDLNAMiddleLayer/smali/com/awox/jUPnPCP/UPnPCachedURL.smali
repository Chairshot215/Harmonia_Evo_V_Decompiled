.class public Lcom/awox/jUPnPCP/UPnPCachedURL;
.super Ljava/lang/Object;
.source "UPnPCachedURL.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPCachedURL;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCachedURL_GetURL(JLcom/awox/jUPnPCP/UPnPCachedURL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCMemOwn:Z

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
