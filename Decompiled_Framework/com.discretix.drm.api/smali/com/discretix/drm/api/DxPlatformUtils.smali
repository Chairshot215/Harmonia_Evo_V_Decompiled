.class public Lcom/discretix/drm/api/DxPlatformUtils;
.super Ljava/lang/Object;
.source "DxPlatformUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DxPlatformUtils"

.field private static gContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceManifacturer()Ljava/lang/String;
    .locals 1

    const-string v0, "Android Device Manifacturer"

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    const-string v0, "Android Device Model"

    return-object v0
.end method

.method public static getDeviceRevision()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getFreeSpaceInKB()J
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    int-to-long v1, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v1, v5

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    goto :goto_0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v1, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isContentMimeTypeSupported(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DxPlatformUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkRoaming()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v3, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    if-nez v3, :cond_1

    const-string v3, "DxPlatformUtils"

    const-string v4, "Couldn\'t get context for Roaming check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v3, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const-string v3, "DxPlatformUtils"

    const-string v4, "Couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/discretix/drm/api/DxPlatformUtils;->gContext:Landroid/content/Context;

    return-void
.end method

.method public static setIMSI(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/discretix/drm/api/DxDrmCore;->DxDrmCoreClient_SetDeviceDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method
