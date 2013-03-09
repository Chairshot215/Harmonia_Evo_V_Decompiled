.class public Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;
.super Ljava/lang/Object;
.source "HTCMediaServerManager.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->new_HTCMediaServerManager()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->HTCMediaServerManager_GetFriendlyName(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsMusicShareEnable()Z
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->HTCMediaServerManager_IsMusicShareEnable(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Z

    move-result v0

    return v0
.end method

.method public IsPictureShareEnable()Z
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->HTCMediaServerManager_IsPictureShareEnable(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Z

    move-result v0

    return v0
.end method

.method public IsVideoShareEnable()Z
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->HTCMediaServerManager_IsVideoShareEnable(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Z

    move-result v0

    return v0
.end method

.method public SetFriendlyName(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->HTCMediaServerManager_SetFriendlyName(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetMediaTypeShared(ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->HTCMediaServerManager_SetMediaTypeShared(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;ZZZ)V

    .line 50
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;->delete_HTCMediaServerManager(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->delete()V

    .line 26
    return-void
.end method
