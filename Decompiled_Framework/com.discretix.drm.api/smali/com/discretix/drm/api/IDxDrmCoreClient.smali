.class public Lcom/discretix/drm/api/IDxDrmCoreClient;
.super Ljava/lang/Object;
.source "IDxDrmCoreClient.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/discretix/drm/api/IDxDrmCoreClient;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxDrmCoreClient;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_AddHttpAuthenticationInfo(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public CreateImportStream([Lcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_CreateImportStream(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public DeleteAssets(J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_DeleteAssets(JLcom/discretix/drm/api/IDxDrmCoreClient;J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public DetectMimeType([BJLjava/lang/StringBuffer;[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 8

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_DetectMimeType(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJLjava/lang/StringBuffer;[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_GetDrmSettingsValue(JLcom/discretix/drm/api/IDxDrmCoreClient;I[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_GetHttpAuthenticationInfo(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetRightsStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_GetRightsStatus(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxRightsStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxRightsStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetWhiteList()Lcom/discretix/drm/api/IDxWhiteList;
    .locals 4

    iget-wide v2, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_GetWhiteList(JLcom/discretix/drm/api/IDxDrmCoreClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/discretix/drm/api/IDxWhiteList;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/discretix/drm/api/IDxWhiteList;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;
    .locals 4

    iget-wide v2, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_GetWmDrmDLA(JLcom/discretix/drm/api/IDxDrmCoreClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/discretix/drm/api/IDxWmDrmDLA;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/discretix/drm/api/IDxWmDrmDLA;-><init>(JZ)V

    goto :goto_0
.end method

.method public IsDrmContentByData([BJ[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 10

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_IsDrmContentByData(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJ[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public IsDrmContentByFileHandle(Ljava/io/FileDescriptor;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 8

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_IsDrmContentByFileHandle(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/io/FileDescriptor;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public IsDrmContentByFileName(Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxRightsStatus;[Lcom/discretix/drm/api/EDxDrmContentType;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 9

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_IsDrmContentByFileName(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxRightsStatus;[Lcom/discretix/drm/api/EDxDrmContentType;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public IsDrmMimeType(Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;)Z
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_IsDrmMimeType(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;)Z

    move-result v0

    return v0
.end method

.method public MasterClockHasChanged()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_MasterClockHasChanged(JLcom/discretix/drm/api/IDxDrmCoreClient;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OnFileDelete(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OnFileDelete(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OnNewFile(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OnNewFile__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OnNewFile(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OnNewFile__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmContentByName([Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmContentByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmContentByName([Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p3}, Lcom/discretix/drm/api/EDxFileOpenMode;->swigValue()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmContentByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmFileByHandle([Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmFileByHandle__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmFileByHandle([Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmFileByHandle__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmFileByName([Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmFileByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmFileByName([Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p3}, Lcom/discretix/drm/api/EDxFileOpenMode;->swigValue()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmFileByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmStreamByName([Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmStreamByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmStreamByName([Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmStreamByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public OpenDrmStreamFromData([Lcom/discretix/drm/api/IDxDrmCoreStream;[BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_OpenDrmStreamFromData(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreStream;[BJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public ProvisioningDelete(Lcom/discretix/drm/api/EDxDrmScheme;[BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxDrmScheme;->swigValue()I

    move-result v3

    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_ProvisioningDelete(JLcom/discretix/drm/api/IDxDrmCoreClient;I[BJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public ProvisioningDeviceCredentials([BJ[BJ[BJ[BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 15

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-wide/from16 v13, p11

    invoke-static/range {v0 .. v14}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_ProvisioningDeviceCredentials__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJ[BJ[BJ[BJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public ProvisioningDeviceCredentials([BJ[BJ[BJ[BJ[BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move-object/from16 v16, p13

    move-wide/from16 v17, p14

    invoke-static/range {v1 .. v18}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_ProvisioningDeviceCredentials__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJ[BJ[BJ[BJ[BJ)I

    move-result v1

    invoke-static {v1}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    return-object v1
.end method

.method public ProvisioningStore(Lcom/discretix/drm/api/EDxStoreAsset;[BJ[BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 10

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue()I

    move-result v3

    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_ProvisioningStore(JLcom/discretix/drm/api/IDxDrmCoreClient;I[BJ[BJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public ProvisioningVerify(Lcom/discretix/drm/api/EDxDrmScheme;[BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxDrmScheme;->swigValue()I

    move-result v3

    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_ProvisioningVerify(JLcom/discretix/drm/api/IDxDrmCoreClient;I[BJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue()I

    move-result v3

    move-object v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreClient_SetDrmSettingsValue(JLcom/discretix/drm/api/IDxDrmCoreClient;IJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreClient;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxDrmCoreClient;->delete()V

    return-void
.end method
