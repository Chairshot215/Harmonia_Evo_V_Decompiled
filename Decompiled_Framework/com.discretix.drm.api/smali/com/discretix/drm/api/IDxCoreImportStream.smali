.class public Lcom/discretix/drm/api/IDxCoreImportStream;
.super Ljava/lang/Object;
.source "IDxCoreImportStream.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/discretix/drm/api/IDxCoreImportStream;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxCoreImportStream;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddBuffer([BJ[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_AddBuffer(JLcom/discretix/drm/api/IDxCoreImportStream;[BJ[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public AddHTTPHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_AddHTTPHeader(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public AddHTTPHeaders(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_AddHTTPHeaders(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public Cancel()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_Cancel(JLcom/discretix/drm/api/IDxCoreImportStream;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public Finish()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_Finish(JLcom/discretix/drm/api/IDxCoreImportStream;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetBrowserUrl()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetBrowserUrl(JLcom/discretix/drm/api/IDxCoreImportStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDataItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetDataItem(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetExpectedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetExpectedSize(JLcom/discretix/drm/api/IDxCoreImportStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetHTTPRequest([Lcom/discretix/drm/api/IDxHttpRequest;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetHTTPRequest(JLcom/discretix/drm/api/IDxCoreImportStream;[Lcom/discretix/drm/api/IDxHttpRequest;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetOperationType()Lcom/discretix/drm/api/EDxOperationType;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetOperationType(JLcom/discretix/drm/api/IDxCoreImportStream;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxOperationType;->swigToEnum(I)Lcom/discretix/drm/api/EDxOperationType;

    move-result-object v0

    return-object v0
.end method

.method public GetProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetProgress(JLcom/discretix/drm/api/IDxCoreImportStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetTextAttribute(JLcom/discretix/drm/api/IDxCoreImportStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttributeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetTextAttributeByName(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserMessage()Lcom/discretix/drm/api/IDxUserMessage;
    .locals 4

    iget-wide v2, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_GetUserMessage(JLcom/discretix/drm/api/IDxCoreImportStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/discretix/drm/api/IDxUserMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/discretix/drm/api/IDxUserMessage;-><init>(JZ)V

    goto :goto_0
.end method

.method public HandleError(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxDrmStatus;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_HandleError(JLcom/discretix/drm/api/IDxCoreImportStream;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public HandleHTTPResult(J[Z)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_HandleHTTPResult(JLcom/discretix/drm/api/IDxCoreImportStream;J[Z)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxUserResponse;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_HandleUserResponse(JLcom/discretix/drm/api/IDxCoreImportStream;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public HasBrowserUrl()Z
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_HasBrowserUrl(JLcom/discretix/drm/api/IDxCoreImportStream;)Z

    move-result v0

    return v0
.end method

.method public HasUserNotification()Z
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_HasUserNotification(JLcom/discretix/drm/api/IDxCoreImportStream;)Z

    move-result v0

    return v0
.end method

.method public IsSuccessful()Z
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_IsSuccessful(JLcom/discretix/drm/api/IDxCoreImportStream;)Z

    move-result v0

    return v0
.end method

.method public SetDataItem(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_SetDataItem(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetDestinationFile(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxCoreImportStream_SetDestinationFile(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->delete_IDxCoreImportStream(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxCoreImportStream;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxCoreImportStream;->delete()V

    return-void
.end method
