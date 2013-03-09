.class public final Lcom/discretix/drm/api/DxDrmClient;
.super Ljava/lang/Object;
.source "DxDrmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;
    }
.end annotation


# static fields
.field private static g_dxDrmClient:Lcom/discretix/drm/api/DxDrmClient;


# instance fields
.field private mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    iput-object v2, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    return-void
.end method

.method private checkStreaming(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const-class v1, Lcom/discretix/drm/api/DxDrmClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/discretix/drm/api/DxDrmClient;->g_dxDrmClient:Lcom/discretix/drm/api/DxDrmClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/DxDrmClient;

    invoke-direct {v0}, Lcom/discretix/drm/api/DxDrmClient;-><init>()V

    sput-object v0, Lcom/discretix/drm/api/DxDrmClient;->g_dxDrmClient:Lcom/discretix/drm/api/DxDrmClient;

    :cond_0
    sget-object v0, Lcom/discretix/drm/api/DxDrmClient;->g_dxDrmClient:Lcom/discretix/drm/api/DxDrmClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final importDrmObject(Lcom/discretix/drm/api/DrmImportEngine;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v4, Lcom/discretix/drm/api/DrmImportListener;

    invoke-direct {v4}, Lcom/discretix/drm/api/DrmImportListener;-><init>()V

    invoke-virtual {p1, v4}, Lcom/discretix/drm/api/DrmImportEngine;->setImportListener(Lcom/discretix/drm/api/IDrmImportListener;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/discretix/drm/api/DrmImportEngine;->start()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    invoke-virtual {p1}, Lcom/discretix/drm/api/DrmImportEngine;->getDestFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/discretix/drm/api/DrmImportEngine;->getContentMimeType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/discretix/drm/api/DrmImportEngine;->destroy()V

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v3, v4, :cond_0

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v4, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "DxDrmClient"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Lcom/discretix/drm/api/DrmImportEngine;->destroy()V

    throw v4

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v4, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;

    invoke-direct {v4, p2, v1, v0}, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method AddHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/discretix/drm/api/IDxDrmCoreClient;->AddHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method GetHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final deleteAssets(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v1, p1, p2}, Lcom/discretix/drm/api/IDxDrmCoreClient;->DeleteAssets(J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_0
    return-void
.end method

.method public final detectMimeType(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v0, 0x1

    new-array v5, v0, [J

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v5, v0

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x202

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v9, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v6

    if-gtz v6, :cond_1

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v8, v9

    move-object v0, v10

    :goto_1
    return-object v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    int-to-long v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/IDxDrmCoreClient;->DetectMimeType([BJLjava/lang/StringBuffer;[J)Lcom/discretix/drm/api/EDxDrmStatus;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    move-object v8, v9

    move-object v0, v10

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v0

    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_3
    move-object v8, v9

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_4
    if-eqz v8, :cond_6

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_5
    move-object v0, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v8, :cond_7

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_7
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto :goto_6

    :catch_6
    move-exception v7

    move-object v8, v9

    goto :goto_4
.end method

.method public final getContentInfo(Landroid/os/ParcelFileDescriptor;)Lcom/discretix/drm/api/DxContentInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/16 v1, 0x202

    const/4 v0, 0x1

    const/4 v11, 0x0

    sget-object v12, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    new-array v5, v0, [Lcom/discretix/drm/api/EDxDrmContentType;

    new-array v2, v0, [Lcom/discretix/drm/api/EDxDrmScheme;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/IDxDrmCoreClient;->IsDrmContentByFileHandle(Ljava/io/FileDescriptor;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v12

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v12, v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v12}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_0
    new-instance v6, Lcom/discretix/drm/api/DxContentInfo;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v2, v11

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v5, v11

    invoke-direct/range {v6 .. v11}, Lcom/discretix/drm/api/DxContentInfo;-><init>(Ljava/lang/String;Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/String;Ljava/lang/String;Lcom/discretix/drm/api/EDxDrmContentType;)V

    return-object v6
.end method

.method public final getContentInfo(Ljava/lang/String;)Lcom/discretix/drm/api/DxContentInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/16 v1, 0x202

    const/4 v8, 0x0

    const/4 v0, 0x1

    sget-object v13, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    new-array v6, v0, [Lcom/discretix/drm/api/EDxDrmContentType;

    new-array v2, v0, [Lcom/discretix/drm/api/EDxDrmScheme;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-array v5, v0, [Lcom/discretix/drm/api/EDxRightsStatus;

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/discretix/drm/api/IDxDrmCoreClient;->IsDrmContentByFileName(Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxRightsStatus;[Lcom/discretix/drm/api/EDxDrmContentType;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v13

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v13, v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v13}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_0
    new-instance v7, Lcom/discretix/drm/api/DxContentInfo;

    aget-object v9, v2, v8

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v6, v8

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/discretix/drm/api/DxContentInfo;-><init>(Ljava/lang/String;Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/String;Ljava/lang/String;Lcom/discretix/drm/api/EDxDrmContentType;)V

    return-object v7
.end method

.method public final getDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v2, 0x1

    new-array v1, v2, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v4

    iget-object v2, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v2, p1, v1}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_0
    aget-wide v2, v1, v4

    return-wide v2
.end method

.method getRightsStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetRightsStatus(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxDrmCoreClient;->GetWmDrmDLA()Lcom/discretix/drm/api/IDxWmDrmDLA;

    move-result-object v0

    return-object v0
.end method

.method public final importDrmObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/discretix/drm/api/DxPlatformUtils;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine;

    invoke-direct {v0, p2, v1, v1}, Lcom/discretix/drm/api/DrmImportEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/discretix/drm/api/DxDrmClient;->importDrmObject(Lcom/discretix/drm/api/DrmImportEngine;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final importDrmObject(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p1}, Lcom/discretix/drm/api/DxPlatformUtils;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine;

    invoke-direct {v0, p2, v2, v2}, Lcom/discretix/drm/api/DrmImportEngine;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/discretix/drm/api/DxDrmClient;->importDrmObject(Lcom/discretix/drm/api/DrmImportEngine;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method isDrmMimeType(Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;)Z
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v0, p1, p2}, Lcom/discretix/drm/api/IDxDrmCoreClient;->IsDrmMimeType(Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;)Z

    move-result v0

    return v0
.end method

.method public final openDrmContent(Landroid/content/Context;Landroid/net/Uri;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    return-object v0
.end method

.method public final openDrmContent(Landroid/content/Context;Landroid/net/Uri;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/discretix/drm/api/DxDrmUtils;->resolveFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    return-object v0
.end method

.method public final openDrmContent(Landroid/os/ParcelFileDescriptor;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/discretix/drm/api/IDxDrmCoreFile;

    const/4 v2, 0x0

    aput-object v2, v0, v5

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/discretix/drm/api/IDxDrmCoreClient;->OpenDrmFileByHandle([Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v1, v2, :cond_1

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    :cond_1
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_INVALID_FORMAT:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v1, v2, :cond_2

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;

    invoke-direct {v2}, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;-><init>()V

    throw v2

    :cond_2
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CONTENT_NOT_RECOGNIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v1, v2, :cond_3

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_4

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_4
    new-instance v2, Lcom/discretix/drm/api/DxDrmFile;

    aget-object v3, v0, v5

    invoke-direct {v2, v3}, Lcom/discretix/drm/api/DxDrmFile;-><init>(Lcom/discretix/drm/api/IDxDrmCoreContent;)V

    return-object v2
.end method

.method public final openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_0
    invoke-direct {p0, p1}, Lcom/discretix/drm/api/DxDrmClient;->checkStreaming(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v8, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-direct {v8}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>()V

    throw v8

    :cond_1
    const/16 v9, 0x3f

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-nez v3, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_2
    if-eq v3, v11, :cond_3

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-array v2, v1, [Lcom/discretix/drm/api/IDxDrmCoreContent;

    const/4 v9, 0x0

    aput-object v9, v2, v8

    iget-object v9, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    sget-object v10, Lcom/discretix/drm/api/EDxFileOpenMode;->DX_OPEN_FOR_READ:Lcom/discretix/drm/api/EDxFileOpenMode;

    invoke-virtual {v9, v2, v4, v10}, Lcom/discretix/drm/api/IDxDrmCoreClient;->OpenDrmContentByName([Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v9, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v5, v9, :cond_4

    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-direct {v8}, Ljava/io/FileNotFoundException;-><init>()V

    throw v8

    :cond_3
    move-object v4, p1

    goto :goto_0

    :cond_4
    sget-object v9, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_INVALID_FORMAT:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v5, v9, :cond_5

    new-instance v8, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;

    invoke-direct {v8}, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;-><init>()V

    throw v8

    :cond_5
    sget-object v9, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CONTENT_NOT_RECOGNIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v5, v9, :cond_6

    new-instance v8, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-direct {v8, v4}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    sget-object v9, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v9, :cond_7

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :cond_7
    new-instance v0, Lcom/discretix/drm/api/DxDrmFile;

    aget-object v9, v2, v8

    invoke-direct {v0, v9}, Lcom/discretix/drm/api/DxDrmFile;-><init>(Lcom/discretix/drm/api/IDxDrmCoreContent;)V

    add-int/lit8 v7, v3, 0x1

    if-eq v3, v11, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_9

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "cid:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v0, v6}, Lcom/discretix/drm/api/DxDrmFile;->setActiveContentById(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-object v0

    :cond_9
    move v1, v8

    goto :goto_1

    :cond_a
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/discretix/drm/api/DxDrmFile;->setActiveContent(J)V

    goto :goto_2
.end method

.method public final openDrmContent(Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/discretix/drm/api/IDxDrmCoreContent;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    if-nez p1, :cond_0

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/discretix/drm/api/DxDrmClient;->checkStreaming(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-direct {v2}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v2, v0, p1, p2}, Lcom/discretix/drm/api/IDxDrmCoreClient;->OpenDrmContentByName([Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    :cond_2
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_INVALID_FORMAT:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v1, v2, :cond_3

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;

    invoke-direct {v2}, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;-><init>()V

    throw v2

    :cond_3
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CONTENT_NOT_RECOGNIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v1, v2, :cond_4

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-direct {v2, p1}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_5
    new-instance v2, Lcom/discretix/drm/api/DxDrmFile;

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Lcom/discretix/drm/api/DxDrmFile;-><init>(Lcom/discretix/drm/api/IDxDrmCoreContent;)V

    return-object v2
.end method

.method public final openDrmFileByName(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    return-object v0
.end method

.method public final openDrmFileByName(Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    return-object v0
.end method

.method public final openDrmFileByUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Landroid/content/Context;Landroid/net/Uri;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    return-object v0
.end method

.method public final openDrmFileByUri(Landroid/content/Context;Landroid/net/Uri;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Landroid/content/Context;Landroid/net/Uri;Lcom/discretix/drm/api/EDxFileOpenMode;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    return-object v0
.end method

.method public final openDrmStream(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/16 v6, 0x3f

    const/4 v5, 0x0

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/discretix/drm/api/DxDrmClient;->checkStreaming(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-direct {v3}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>()V

    throw v3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/discretix/drm/api/IDxDrmCoreStream;

    const/4 v3, 0x0

    aput-object v3, v0, v5

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    move-object v1, p1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v3, v0, v1}, Lcom/discretix/drm/api/IDxDrmCoreClient;->OpenDrmStreamByName([Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v2, v3, :cond_3

    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    :cond_3
    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_INVALID_FORMAT:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v2, v3, :cond_4

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;

    invoke-direct {v3}, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;-><init>()V

    throw v3

    :cond_4
    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CONTENT_NOT_RECOGNIZED:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v2, v3, :cond_5

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;

    invoke-direct {v3, v1}, Lcom/discretix/drm/api/exceptions/DrmNotProtectedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v2, v3, :cond_6

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_6
    new-instance v3, Lcom/discretix/drm/api/DxDrmStream;

    aget-object v4, v0, v5

    invoke-direct {v3, v4}, Lcom/discretix/drm/api/DxDrmStream;-><init>(Lcom/discretix/drm/api/IDxDrmCoreStream;)V

    return-object v3
.end method

.method public final provisioningDelete(Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v2, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    array-length v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/discretix/drm/api/IDxDrmCoreClient;->ProvisioningDelete(Lcom/discretix/drm/api/EDxDrmScheme;[BJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_0
    return-void
.end method

.method public final provisioningDeviceCredentials(Ljava/lang/String;[BI[BI[BI)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmTagExistsException;,
            Lcom/discretix/drm/api/exceptions/DrmAssetExistException;,
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v14, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    array-length v3, v2

    int-to-long v3, v3

    move/from16 v0, p3

    int-to-long v6, v0

    move/from16 v0, p5

    int-to-long v9, v0

    move/from16 v0, p7

    int-to-long v12, v0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v1 .. v13}, Lcom/discretix/drm/api/IDxDrmCoreClient;->ProvisioningDeviceCredentials([BJ[BJ[BJ[BJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v14

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_TAG_ALREADY_EXIST:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v14, v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmTagExistsException;

    invoke-direct {v1}, Lcom/discretix/drm/api/exceptions/DrmTagExistsException;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_ASSET_ALREADY_EXIST:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v14, v1, :cond_1

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmAssetExistException;

    invoke-direct {v1}, Lcom/discretix/drm/api/exceptions/DrmAssetExistException;-><init>()V

    throw v1

    :cond_1
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_INVALID_FORMAT:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v14, v1, :cond_2

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;

    invoke-direct {v1}, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;-><init>()V

    throw v1

    :cond_2
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v14, v1, :cond_3

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v14}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_3
    return-void
.end method

.method public final provisioningStore(Lcom/discretix/drm/api/EDxStoreAsset;Ljava/lang/String;[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmTagExistsException;,
            Lcom/discretix/drm/api/exceptions/DrmAssetExistException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v8, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    array-length v1, v2

    int-to-long v3, v1

    int-to-long v6, p4

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/discretix/drm/api/IDxDrmCoreClient;->ProvisioningStore(Lcom/discretix/drm/api/EDxStoreAsset;[BJ[BJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v8

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_TAG_ALREADY_EXIST:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v8, v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmTagExistsException;

    invoke-direct {v0}, Lcom/discretix/drm/api/exceptions/DrmTagExistsException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_ASSET_ALREADY_EXIST:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v8, v0, :cond_1

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmAssetExistException;

    invoke-direct {v0}, Lcom/discretix/drm/api/exceptions/DrmAssetExistException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_INVALID_FORMAT:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v8, v0, :cond_2

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;

    invoke-direct {v0}, Lcom/discretix/drm/api/exceptions/DrmInvalidFormatException;-><init>()V

    throw v0

    :cond_2
    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v8, v0, :cond_3

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v8}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final provisioningVerify(Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmProvisioningFailureException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v2, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    array-length v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/discretix/drm/api/IDxDrmCoreClient;->ProvisioningVerify(Lcom/discretix/drm/api/EDxDrmScheme;[BJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_VERIFICATION_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmProvisioningFailureException;

    invoke-direct {v2}, Lcom/discretix/drm/api/exceptions/DrmProvisioningFailureException;-><init>()V

    throw v2

    :cond_0
    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v2, :cond_1

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_1
    return-void
.end method

.method public final setDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmClient;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/discretix/drm/api/IDxDrmCoreClient;->SetDrmSettingsValue(Lcom/discretix/drm/api/EDxDrmSettingsItem;J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_0
    return-void
.end method
