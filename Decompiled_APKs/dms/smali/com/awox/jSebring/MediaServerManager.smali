.class public Lcom/awox/jSebring/MediaServerManager;
.super Ljava/lang/Object;
.source "MediaServerManager.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->new_MediaServerManager__SWIG_2()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jSebring/MediaServerManager;-><init>(JZ)V

    .line 48
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
    iput-boolean p3, p0, Lcom/awox/jSebring/MediaServerManager;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/awox/jSebring/jSebringJNI;->new_MediaServerManager__SWIG_5(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jSebring/MediaServerManager;-><init>(JZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/awox/jSebring/jSebringJNI;->new_MediaServerManager__SWIG_4(JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jSebring/MediaServerManager;-><init>(JZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;Lcom/awox/jSebring/SWIGTYPE_p_void;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_awMultiMBusEngine;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/awox/jSebring/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_void;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/awox/jSebring/jSebringJNI;->new_MediaServerManager__SWIG_3(JJJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jSebring/MediaServerManager;-><init>(JZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/awox/jSebring/jSebringJNI;->new_MediaServerManager__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jSebring/MediaServerManager;-><init>(JZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;Lcom/awox/jSebring/SWIGTYPE_p_void;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_f_p_void_p_q_const__char_p_q_const__char__void;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jSebring/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/awox/jSebring/jSebringJNI;->new_MediaServerManager__SWIG_0(JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jSebring/MediaServerManager;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jSebring/MediaServerManager;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddSharedFolder(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_AddSharedFolder(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ClearDatabase()I
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_ClearDatabase(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public GetCurrentStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetCurrentStatus(JLcom/awox/jSebring/MediaServerManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetFriendlyName(JLcom/awox/jSebring/MediaServerManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMediaTypeShared()I
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetMediaTypeShared(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public GetParentalLockCode(Lcom/awox/jSebring/SWIGTYPE_p_p_char;)I
    .locals 4
    .parameter

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_p_char;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_p_char;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetParentalLockCode(JLcom/awox/jSebring/MediaServerManager;J)I

    move-result v0

    return v0
.end method

.method public GetSharedFolderList(Lcom/awox/jSebring/SWIGTYPE_p_p_awPtrList;)I
    .locals 4
    .parameter

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_p_awPtrList;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_p_awPtrList;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetSharedFolderList(JLcom/awox/jSebring/MediaServerManager;J)I

    move-result v0

    return v0
.end method

.method public GetSharedFolderListAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetSharedFolderListAsString(JLcom/awox/jSebring/MediaServerManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUpdateInterval(Lcom/awox/jSebring/SWIGTYPE_p_uint32;)I
    .locals 4
    .parameter

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_uint32;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_uint32;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_GetUpdateInterval(JLcom/awox/jSebring/MediaServerManager;J)I

    move-result v0

    return v0
.end method

.method public IsRunning()Z
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_IsRunning(JLcom/awox/jSebring/MediaServerManager;)Z

    move-result v0

    return v0
.end method

.method public IsUpdating()Z
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_IsUpdating(JLcom/awox/jSebring/MediaServerManager;)Z

    move-result v0

    return v0
.end method

.method public RemoveSharedFolder(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_RemoveSharedFolder(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ResetParentalLock()I
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_ResetParentalLock(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public RestartDMS()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_RestartDMS(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public SetFriendlyName(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_SetFriendlyName(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetMediaTypeShared(ZZZ)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_SetMediaTypeShared(JLcom/awox/jSebring/MediaServerManager;ZZZ)I

    move-result v0

    return v0
.end method

.method public SetParentalLock(Ljava/lang/String;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_SetParentalLock(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public SetParentalLockCode(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_SetParentalLockCode(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetShared(Ljava/lang/String;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_SetShared(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public SetUpdateInterval(Lcom/awox/jSebring/SWIGTYPE_p_uint32;)I
    .locals 4
    .parameter

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jSebring/SWIGTYPE_p_uint32;->getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_uint32;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_SetUpdateInterval(JLcom/awox/jSebring/MediaServerManager;J)I

    move-result v0

    return v0
.end method

.method public StartDMS(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_StartDMS__SWIG_1(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public StartDMS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_StartDMS__SWIG_0(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public StopDMS()I
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_StopDMS(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public Update()I
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_Update(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public UpdatePath(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_UpdatePath(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public UpdateStatus()I
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManager_UpdateStatus(JLcom/awox/jSebring/MediaServerManager;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jSebring/jSebringJNI;->delete_MediaServerManager(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jSebring/MediaServerManager;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jSebring/MediaServerManager;->delete()V

    .line 26
    return-void
.end method
