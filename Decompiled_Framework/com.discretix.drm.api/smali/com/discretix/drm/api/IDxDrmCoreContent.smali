.class public Lcom/discretix/drm/api/IDxDrmCoreContent;
.super Ljava/lang/Object;
.source "IDxDrmCoreContent.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/discretix/drm/api/IDxDrmCoreContent;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxDrmCoreContent;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AdjustClock([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxAutoMode;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p2}, Lcom/discretix/drm/api/EDxAutoMode;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_AdjustClock(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public DeleteRights()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_DeleteRights(JLcom/discretix/drm/api/IDxDrmCoreContent;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetActiveContent()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetActiveContent(JLcom/discretix/drm/api/IDxDrmCoreContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetActiveRO()Lcom/discretix/drm/api/IDxRightsObject;
    .locals 4

    iget-wide v2, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetActiveRO(JLcom/discretix/drm/api/IDxDrmCoreContent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/discretix/drm/api/IDxRightsObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/discretix/drm/api/IDxRightsObject;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetCurrentMaxProtectionLevel([J[J[J[J[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 8

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetCurrentMaxProtectionLevel(JLcom/discretix/drm/api/IDxDrmCoreContent;[J[J[J[J[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetDRMContentType()Lcom/discretix/drm/api/EDxDrmContentType;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetDRMContentType(JLcom/discretix/drm/api/IDxDrmCoreContent;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmContentType;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmContentType;

    move-result-object v0

    return-object v0
.end method

.method public GetDRMScheme()Lcom/discretix/drm/api/EDxDrmScheme;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetDRMScheme(JLcom/discretix/drm/api/IDxDrmCoreContent;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmScheme;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmScheme;

    move-result-object v0

    return-object v0
.end method

.method public GetFileName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetFileName(JLcom/discretix/drm/api/IDxDrmCoreContent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetFlags(J[JJJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 10

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetFlags(JLcom/discretix/drm/api/IDxDrmCoreContent;J[JJJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetLicenseChallenge([B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetLicenseChallenge(JLcom/discretix/drm/api/IDxDrmCoreContent;[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetNumOfContents()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetNumOfContents(JLcom/discretix/drm/api/IDxDrmCoreContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetNumOfROs()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetNumOfROs(JLcom/discretix/drm/api/IDxDrmCoreContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetNumOfTextAttributes()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetNumOfTextAttributes__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetNumOfTextAttributes(J)J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetNumOfTextAttributes__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetOnExpiredRightsImportStream()Lcom/discretix/drm/api/IDxCoreImportStream;
    .locals 4

    iget-wide v2, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetOnExpiredRightsImportStream(JLcom/discretix/drm/api/IDxDrmCoreContent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/discretix/drm/api/IDxCoreImportStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/discretix/drm/api/IDxCoreImportStream;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetRO(J)Lcom/discretix/drm/api/IDxRightsObject;
    .locals 4

    iget-wide v2, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetRO(JLcom/discretix/drm/api/IDxDrmCoreContent;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/discretix/drm/api/IDxRightsObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/discretix/drm/api/IDxRightsObject;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetRightsInformation([J[J[J[J[Z)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 8

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetRightsInformation(JLcom/discretix/drm/api/IDxDrmCoreContent;[J[J[J[J[Z)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetSecureClock(Ljava/util/Date;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetSecureClock(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetTextAttribute__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;J)Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue()I

    move-result v3

    move-object v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetTextAttribute__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttributeByIndex(JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetTextAttributeByIndex__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttributeByIndex(JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 9

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetTextAttributeByIndex__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttributeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetTextAttributeByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTextAttributeByName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_GetTextAttributeByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HandleConsumptionEvent(Lcom/discretix/drm/api/EDxConsumptionEvent;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxConsumptionEvent;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_HandleConsumptionEvent(JLcom/discretix/drm/api/IDxDrmCoreContent;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxUserResponse;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_HandleUserResponse(JLcom/discretix/drm/api/IDxDrmCoreContent;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public InstallEmbeddedRights([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxAutoMode;[Z)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p2}, Lcom/discretix/drm/api/EDxAutoMode;->swigValue()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_InstallEmbeddedRights(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;I[Z)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public IsAttributeEditable(Lcom/discretix/drm/api/EDxTextAttribute;)Z
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_IsAttributeEditable(JLcom/discretix/drm/api/IDxDrmCoreContent;I)Z

    move-result v0

    return v0
.end method

.method public IsSoonToBeExpired(JJ[Z[J[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 10

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_IsSoonToBeExpired(JLcom/discretix/drm/api/IDxDrmCoreContent;JJ[Z[J[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public Lock()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_Lock(JLcom/discretix/drm/api/IDxDrmCoreContent;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public PrepareForROIteration(Lcom/discretix/drm/api/EDxROIterationMode;[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxROIterationMode;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_PrepareForROIteration(JLcom/discretix/drm/api/IDxDrmCoreContent;I[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public PrepareForSuperDistribution()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_PrepareForSuperDistribution(JLcom/discretix/drm/api/IDxDrmCoreContent;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetActiveContent(J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_SetActiveContent(JLcom/discretix/drm/api/IDxDrmCoreContent;J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetActiveContentById(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_SetActiveContentById(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetIntent(Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxIntent;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_SetIntent(JLcom/discretix/drm/api/IDxDrmCoreContent;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue()I

    move-result v3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_SetTextAttribute__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;Ljava/lang/String;Ljava/lang/String;J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 8

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue()I

    move-result v3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_SetTextAttribute__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;ILjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public StartRightsAcquisition([Lcom/discretix/drm/api/IDxCoreImportStream;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_StartRightsAcquisition__SWIG_2(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public StartRightsAcquisition([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p2}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_StartRightsAcquisition__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public StartRightsAcquisition([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p2}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_StartRightsAcquisition__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;IJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public StartSetIntent([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxIntent;Lcom/discretix/drm/api/EDxAutoMode;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-virtual {p2}, Lcom/discretix/drm/api/EDxIntent;->swigValue()I

    move-result v4

    invoke-virtual {p3}, Lcom/discretix/drm/api/EDxAutoMode;->swigValue()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_StartSetIntent(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;II)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public Unlock()V
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_Unlock(JLcom/discretix/drm/api/IDxDrmCoreContent;)V

    return-void
.end method

.method public UpdateContentInfoInCache()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreContent_UpdateContentInfoInCache(JLcom/discretix/drm/api/IDxDrmCoreContent;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxDrmCoreContent;->delete()V

    return-void
.end method
