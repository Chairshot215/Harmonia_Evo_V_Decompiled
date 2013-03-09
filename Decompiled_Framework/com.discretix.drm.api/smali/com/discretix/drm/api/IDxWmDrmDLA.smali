.class public Lcom/discretix/drm/api/IDxWmDrmDLA;
.super Ljava/lang/Object;
.source "IDxWmDrmDLA.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxWmDrmDLA;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetDRMSecurityVersion([B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_GetDRMSecurityVersion(JLcom/discretix/drm/api/IDxWmDrmDLA;[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetDRMVersion([B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_GetDRMVersion(JLcom/discretix/drm/api/IDxWmDrmDLA;[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetLicenseChallenge([BJ[B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_GetLicenseChallenge(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetMeteringChallenge([BJ[B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_GetMeteringChallenge(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetSystemInfo([B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_GetSystemInfo(JLcom/discretix/drm/api/IDxWmDrmDLA;[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public StoreLicense([BJ)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_StoreLicense(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public StoreMeteringResponse([BJ[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxWmDrmDLA_StoreMeteringResponse(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ[J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxWmDrmDLA;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxWmDrmDLA;->delete()V

    return-void
.end method
