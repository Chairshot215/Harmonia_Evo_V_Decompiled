.class public Lcom/discretix/drm/api/DxDrmCore;
.super Ljava/lang/Object;
.source "DxDrmCore.java"

# interfaces
.implements Lcom/discretix/drm/api/DxDrmCoreConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CanRewind(Ljava/io/FileDescriptor;)Z
    .locals 1

    invoke-static {p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->CanRewind(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public static CommitRights(Ljava/io/FileDescriptor;Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxIntent;->swigValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->CommitRights(Ljava/io/FileDescriptor;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public static ConsumptionEvent(Ljava/io/FileDescriptor;Lcom/discretix/drm/api/EDxConsumptionEvent;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    invoke-virtual {p1}, Lcom/discretix/drm/api/EDxConsumptionEvent;->swigValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->ConsumptionEvent(Ljava/io/FileDescriptor;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public static DX_DBG_Print(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DX_DBG_Print(Ljava/lang/String;)V

    return-void
.end method

.method public static DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    invoke-static {p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public static DxDrmCoreClient_Init()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxDrmCoreClient_Init()I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public static DxDrmCoreClient_SetDeviceDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxDrmCoreClient_SetDeviceDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public static DxDrmCoreClient_Terminate()V
    .locals 0

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxDrmCoreClient_Terminate()V

    return-void
.end method

.method public static DxDrm_QuickReset()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxDrm_QuickReset()I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public static DxGetConfigBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxGetConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static DxGetConfigNumber(Ljava/lang/String;J)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxGetConfigNumber(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static DxGetConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxGetConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static DxIsServerActive()Z
    .locals 1

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxIsServerActive()Z

    move-result v0

    return v0
.end method

.method public static DxRestartServer()J
    .locals 2

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxRestartServer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static DxSyncronizeOmaV1Time()J
    .locals 2

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxSyncronizeOmaV1Time()J

    move-result-wide v0

    return-wide v0
.end method

.method public static DxUnsetMeteringConsent()J
    .locals 2

    invoke-static {}, Lcom/discretix/drm/api/DxDrmCoreJNI;->DxUnsetMeteringConsent()J

    move-result-wide v0

    return-wide v0
.end method
