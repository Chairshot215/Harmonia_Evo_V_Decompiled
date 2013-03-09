.class public final Lcom/discretix/drm/api/DxWmDrmDLA;
.super Ljava/lang/Object;
.source "DxWmDrmDLA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDRMSecurityVersion()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/discretix/drm/api/IDxWmDrmDLA;->GetDRMSecurityVersion([B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public getDRMVersion()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/discretix/drm/api/IDxWmDrmDLA;->GetDRMVersion([B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public getLicenseChallenge([BJ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/discretix/drm/api/IDxWmDrmDLA;->GetLicenseChallenge([BJ[B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public getMeteringChallenge([BJ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/discretix/drm/api/IDxWmDrmDLA;->GetMeteringChallenge([BJ[B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public getSystemInfo()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/discretix/drm/api/IDxWmDrmDLA;->GetSystemInfo([B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public storeLicense([BJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v3, v4}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/discretix/drm/api/IDxWmDrmDLA;->StoreLicense([BJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v2, v3, :cond_1

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v3, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :cond_1
    return-void
.end method

.method public storeMeteringResponse([BJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmClient;->getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NOT_INITIALIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_0
    const/4 v4, 0x1

    new-array v2, v4, [J

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/discretix/drm/api/IDxWmDrmDLA;->StoreMeteringResponse([BJ[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_1

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_1
    const/4 v4, 0x0

    aget-wide v4, v2, v4

    return-wide v4
.end method
