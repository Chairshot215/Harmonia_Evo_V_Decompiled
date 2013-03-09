.class public Lcom/discretix/drm/api/IDxHttpRequest;
.super Ljava/lang/Object;
.source "IDxHttpRequest.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/discretix/drm/api/IDxHttpRequest;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxHttpRequest;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetHttpBodySize()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_GetHttpBodySize(JLcom/discretix/drm/api/IDxHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetHttpHeader(JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_GetHttpHeader(JLcom/discretix/drm/api/IDxHttpRequest;JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetHttpMethod()Lcom/discretix/drm/api/EDxHttpMethod;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_GetHttpMethod(JLcom/discretix/drm/api/IDxHttpRequest;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxHttpMethod;->swigToEnum(I)Lcom/discretix/drm/api/EDxHttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public GetHttpUrl()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_GetHttpUrl(JLcom/discretix/drm/api/IDxHttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetNumOfHttpHeaders()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_GetNumOfHttpHeaders(JLcom/discretix/drm/api/IDxHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method public ReadHttpBody([B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_ReadHttpBody(JLcom/discretix/drm/api/IDxHttpRequest;[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public RestartHttpBody()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxHttpRequest_RestartHttpBody(JLcom/discretix/drm/api/IDxHttpRequest;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxHttpRequest;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxHttpRequest;->delete()V

    return-void
.end method
