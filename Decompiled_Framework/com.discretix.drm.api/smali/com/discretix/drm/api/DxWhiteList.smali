.class public final Lcom/discretix/drm/api/DxWhiteList;
.super Ljava/lang/Object;
.source "DxWhiteList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final add(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/discretix/drm/api/IDxDrmCoreClient;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmCore;->DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_0

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_0
    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetWhiteList()Lcom/discretix/drm/api/IDxWhiteList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/discretix/drm/api/IDxWhiteList;->Add(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_1

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_1
    return-void
.end method

.method public static final contains(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v3, 0x1

    new-array v0, v3, [Lcom/discretix/drm/api/IDxDrmCoreClient;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmCore;->DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetWhiteList()Lcom/discretix/drm/api/IDxWhiteList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/discretix/drm/api/IDxWhiteList;->Contains(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static final delete(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/discretix/drm/api/IDxDrmCoreClient;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmCore;->DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_0

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_0
    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetWhiteList()Lcom/discretix/drm/api/IDxWhiteList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/discretix/drm/api/IDxWhiteList;->Delete(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_1

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_1
    return-void
.end method

.method public static final getItems()[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v5, 0x1

    new-array v1, v5, [Lcom/discretix/drm/api/IDxDrmCoreClient;

    const/4 v5, 0x0

    aput-object v5, v1, v8

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/discretix/drm/api/DxDrmCore;->DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v5, :cond_0

    new-array v5, v8, [Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    aget-object v5, v1, v8

    invoke-virtual {v5}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetWhiteList()Lcom/discretix/drm/api/IDxWhiteList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/discretix/drm/api/IDxWhiteList;->GetCount()J

    move-result-wide v5

    long-to-int v0, v5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v5, v1, v8

    invoke-virtual {v5}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetWhiteList()Lcom/discretix/drm/api/IDxWhiteList;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/discretix/drm/api/IDxWhiteList;->GetAt(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v4

    goto :goto_0
.end method
