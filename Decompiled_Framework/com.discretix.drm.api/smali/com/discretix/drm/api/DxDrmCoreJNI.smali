.class public Lcom/discretix/drm/api/DxDrmCoreJNI;
.super Ljava/lang/Object;
.source "DxDrmCoreJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v1, "DxDrmJava"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native CanRewind(Ljava/io/FileDescriptor;)Z
.end method

.method public static final native CommitRights(Ljava/io/FileDescriptor;I)I
.end method

.method public static final native ConsumptionEvent(Ljava/io/FileDescriptor;I)I
.end method

.method public static final native DX_DBG_Print(Ljava/lang/String;)V
.end method

.method public static final native DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)I
.end method

.method public static final native DxDrmCoreClient_Init()I
.end method

.method public static final native DxDrmCoreClient_SetDeviceDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DxDrmCoreClient_Terminate()V
.end method

.method public static final native DxDrm_QuickReset()I
.end method

.method public static final native DxGetConfigBoolean(Ljava/lang/String;Z)Z
.end method

.method public static final native DxGetConfigNumber(Ljava/lang/String;J)J
.end method

.method public static final native DxGetConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DxIsServerActive()Z
.end method

.method public static final native DxRestartServer()J
.end method

.method public static final native DxSyncronizeOmaV1Time()J
.end method

.method public static final native DxUnsetMeteringConsent()J
.end method

.method public static final native IDxCoreImportStream_AddBuffer(JLcom/discretix/drm/api/IDxCoreImportStream;[BJ[J)I
.end method

.method public static final native IDxCoreImportStream_AddHTTPHeader(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native IDxCoreImportStream_AddHTTPHeaders(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)I
.end method

.method public static final native IDxCoreImportStream_Cancel(JLcom/discretix/drm/api/IDxCoreImportStream;)I
.end method

.method public static final native IDxCoreImportStream_Finish(JLcom/discretix/drm/api/IDxCoreImportStream;)I
.end method

.method public static final native IDxCoreImportStream_GetBrowserUrl(JLcom/discretix/drm/api/IDxCoreImportStream;)Ljava/lang/String;
.end method

.method public static final native IDxCoreImportStream_GetDataItem(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native IDxCoreImportStream_GetExpectedSize(JLcom/discretix/drm/api/IDxCoreImportStream;)J
.end method

.method public static final native IDxCoreImportStream_GetHTTPRequest(JLcom/discretix/drm/api/IDxCoreImportStream;[Lcom/discretix/drm/api/IDxHttpRequest;)I
.end method

.method public static final native IDxCoreImportStream_GetOperationType(JLcom/discretix/drm/api/IDxCoreImportStream;)I
.end method

.method public static final native IDxCoreImportStream_GetProgress(JLcom/discretix/drm/api/IDxCoreImportStream;)J
.end method

.method public static final native IDxCoreImportStream_GetTextAttribute(JLcom/discretix/drm/api/IDxCoreImportStream;I)Ljava/lang/String;
.end method

.method public static final native IDxCoreImportStream_GetTextAttributeByName(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native IDxCoreImportStream_GetUserMessage(JLcom/discretix/drm/api/IDxCoreImportStream;)J
.end method

.method public static final native IDxCoreImportStream_HandleError(JLcom/discretix/drm/api/IDxCoreImportStream;I)I
.end method

.method public static final native IDxCoreImportStream_HandleHTTPResult(JLcom/discretix/drm/api/IDxCoreImportStream;J[Z)I
.end method

.method public static final native IDxCoreImportStream_HandleUserResponse(JLcom/discretix/drm/api/IDxCoreImportStream;I)I
.end method

.method public static final native IDxCoreImportStream_HasBrowserUrl(JLcom/discretix/drm/api/IDxCoreImportStream;)Z
.end method

.method public static final native IDxCoreImportStream_HasUserNotification(JLcom/discretix/drm/api/IDxCoreImportStream;)Z
.end method

.method public static final native IDxCoreImportStream_IsSuccessful(JLcom/discretix/drm/api/IDxCoreImportStream;)Z
.end method

.method public static final native IDxCoreImportStream_SetDataItem(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native IDxCoreImportStream_SetDestinationFile(JLcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_AddHttpAuthenticationInfo(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_CreateImportStream(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_DeleteAssets(JLcom/discretix/drm/api/IDxDrmCoreClient;J)I
.end method

.method public static final native IDxDrmCoreClient_DetectMimeType(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJLjava/lang/StringBuffer;[J)I
.end method

.method public static final native IDxDrmCoreClient_GetDrmSettingsValue(JLcom/discretix/drm/api/IDxDrmCoreClient;I[J)I
.end method

.method public static final native IDxDrmCoreClient_GetHttpAuthenticationInfo(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
.end method

.method public static final native IDxDrmCoreClient_GetRightsStatus(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_GetWhiteList(JLcom/discretix/drm/api/IDxDrmCoreClient;)J
.end method

.method public static final native IDxDrmCoreClient_GetWmDrmDLA(JLcom/discretix/drm/api/IDxDrmCoreClient;)J
.end method

.method public static final native IDxDrmCoreClient_IsDrmContentByData(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJ[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)I
.end method

.method public static final native IDxDrmCoreClient_IsDrmContentByFileHandle(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/io/FileDescriptor;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxDrmContentType;)I
.end method

.method public static final native IDxDrmCoreClient_IsDrmContentByFileName(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;[Lcom/discretix/drm/api/EDxRightsStatus;[Lcom/discretix/drm/api/EDxDrmContentType;)I
.end method

.method public static final native IDxDrmCoreClient_IsDrmMimeType(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;[Lcom/discretix/drm/api/EDxDrmScheme;)Z
.end method

.method public static final native IDxDrmCoreClient_MasterClockHasChanged(JLcom/discretix/drm/api/IDxDrmCoreClient;)I
.end method

.method public static final native IDxDrmCoreClient_OnFileDelete(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OnNewFile__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OnNewFile__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmContentByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;I)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmContentByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmFileByHandle__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmFileByHandle__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/io/FileDescriptor;)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmFileByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/lang/String;I)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmFileByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreFile;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmStreamByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;J)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmStreamByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreStream;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreClient_OpenDrmStreamFromData(JLcom/discretix/drm/api/IDxDrmCoreClient;[Lcom/discretix/drm/api/IDxDrmCoreStream;[BJ)I
.end method

.method public static final native IDxDrmCoreClient_ProvisioningDelete(JLcom/discretix/drm/api/IDxDrmCoreClient;I[BJ)I
.end method

.method public static final native IDxDrmCoreClient_ProvisioningDeviceCredentials__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJ[BJ[BJ[BJ)I
.end method

.method public static final native IDxDrmCoreClient_ProvisioningDeviceCredentials__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreClient;[BJ[BJ[BJ[BJ[BJ)I
.end method

.method public static final native IDxDrmCoreClient_ProvisioningStore(JLcom/discretix/drm/api/IDxDrmCoreClient;I[BJ[BJ)I
.end method

.method public static final native IDxDrmCoreClient_ProvisioningVerify(JLcom/discretix/drm/api/IDxDrmCoreClient;I[BJ)I
.end method

.method public static final native IDxDrmCoreClient_SetDrmSettingsValue(JLcom/discretix/drm/api/IDxDrmCoreClient;IJ)I
.end method

.method public static final native IDxDrmCoreContent_AdjustClock(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;I)I
.end method

.method public static final native IDxDrmCoreContent_DeleteRights(JLcom/discretix/drm/api/IDxDrmCoreContent;)I
.end method

.method public static final native IDxDrmCoreContent_GetActiveContent(JLcom/discretix/drm/api/IDxDrmCoreContent;)J
.end method

.method public static final native IDxDrmCoreContent_GetActiveRO(JLcom/discretix/drm/api/IDxDrmCoreContent;)J
.end method

.method public static final native IDxDrmCoreContent_GetCurrentMaxProtectionLevel(JLcom/discretix/drm/api/IDxDrmCoreContent;[J[J[J[J[J)I
.end method

.method public static final native IDxDrmCoreContent_GetDRMContentType(JLcom/discretix/drm/api/IDxDrmCoreContent;)I
.end method

.method public static final native IDxDrmCoreContent_GetDRMScheme(JLcom/discretix/drm/api/IDxDrmCoreContent;)I
.end method

.method public static final native IDxDrmCoreContent_GetFileName(JLcom/discretix/drm/api/IDxDrmCoreContent;)Ljava/lang/String;
.end method

.method public static final native IDxDrmCoreContent_GetFlags(JLcom/discretix/drm/api/IDxDrmCoreContent;J[JJJ)I
.end method

.method public static final native IDxDrmCoreContent_GetLicenseChallenge(JLcom/discretix/drm/api/IDxDrmCoreContent;[B)I
.end method

.method public static final native IDxDrmCoreContent_GetNumOfContents(JLcom/discretix/drm/api/IDxDrmCoreContent;)J
.end method

.method public static final native IDxDrmCoreContent_GetNumOfROs(JLcom/discretix/drm/api/IDxDrmCoreContent;)J
.end method

.method public static final native IDxDrmCoreContent_GetNumOfTextAttributes__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;J)J
.end method

.method public static final native IDxDrmCoreContent_GetNumOfTextAttributes__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;)J
.end method

.method public static final native IDxDrmCoreContent_GetOnExpiredRightsImportStream(JLcom/discretix/drm/api/IDxDrmCoreContent;)J
.end method

.method public static final native IDxDrmCoreContent_GetRO(JLcom/discretix/drm/api/IDxDrmCoreContent;J)J
.end method

.method public static final native IDxDrmCoreContent_GetRightsInformation(JLcom/discretix/drm/api/IDxDrmCoreContent;[J[J[J[J[Z)I
.end method

.method public static final native IDxDrmCoreContent_GetSecureClock(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/util/Date;)I
.end method

.method public static final native IDxDrmCoreContent_GetTextAttributeByIndex__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;J)I
.end method

.method public static final native IDxDrmCoreContent_GetTextAttributeByIndex__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
.end method

.method public static final native IDxDrmCoreContent_GetTextAttributeByName__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public static final native IDxDrmCoreContent_GetTextAttributeByName__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native IDxDrmCoreContent_GetTextAttribute__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;IJ)Ljava/lang/String;
.end method

.method public static final native IDxDrmCoreContent_GetTextAttribute__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;I)Ljava/lang/String;
.end method

.method public static final native IDxDrmCoreContent_HandleConsumptionEvent(JLcom/discretix/drm/api/IDxDrmCoreContent;I)I
.end method

.method public static final native IDxDrmCoreContent_HandleUserResponse(JLcom/discretix/drm/api/IDxDrmCoreContent;I)I
.end method

.method public static final native IDxDrmCoreContent_InstallEmbeddedRights(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;I[Z)I
.end method

.method public static final native IDxDrmCoreContent_IsAttributeEditable(JLcom/discretix/drm/api/IDxDrmCoreContent;I)Z
.end method

.method public static final native IDxDrmCoreContent_IsSoonToBeExpired(JLcom/discretix/drm/api/IDxDrmCoreContent;JJ[Z[J[J)I
.end method

.method public static final native IDxDrmCoreContent_Lock(JLcom/discretix/drm/api/IDxDrmCoreContent;)I
.end method

.method public static final native IDxDrmCoreContent_PrepareForROIteration(JLcom/discretix/drm/api/IDxDrmCoreContent;I[J)I
.end method

.method public static final native IDxDrmCoreContent_PrepareForSuperDistribution(JLcom/discretix/drm/api/IDxDrmCoreContent;)I
.end method

.method public static final native IDxDrmCoreContent_SetActiveContent(JLcom/discretix/drm/api/IDxDrmCoreContent;J)I
.end method

.method public static final native IDxDrmCoreContent_SetActiveContentById(JLcom/discretix/drm/api/IDxDrmCoreContent;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreContent_SetIntent(JLcom/discretix/drm/api/IDxDrmCoreContent;I)I
.end method

.method public static final native IDxDrmCoreContent_SetTextAttribute__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;ILjava/lang/String;Ljava/lang/String;J)I
.end method

.method public static final native IDxDrmCoreContent_SetTextAttribute__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native IDxDrmCoreContent_StartRightsAcquisition__SWIG_0(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;IJ)I
.end method

.method public static final native IDxDrmCoreContent_StartRightsAcquisition__SWIG_1(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;I)I
.end method

.method public static final native IDxDrmCoreContent_StartRightsAcquisition__SWIG_2(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;)I
.end method

.method public static final native IDxDrmCoreContent_StartSetIntent(JLcom/discretix/drm/api/IDxDrmCoreContent;[Lcom/discretix/drm/api/IDxCoreImportStream;II)I
.end method

.method public static final native IDxDrmCoreContent_Unlock(JLcom/discretix/drm/api/IDxDrmCoreContent;)V
.end method

.method public static final native IDxDrmCoreContent_UpdateContentInfoInCache(JLcom/discretix/drm/api/IDxDrmCoreContent;)I
.end method

.method public static final native IDxDrmCoreFile_GetContentSize(JLcom/discretix/drm/api/IDxDrmCoreFile;[J)I
.end method

.method public static final native IDxDrmCoreFile_GetContentSize64(JLcom/discretix/drm/api/IDxDrmCoreFile;[J)I
.end method

.method public static final native IDxDrmCoreFile_GetDRMContentType(JLcom/discretix/drm/api/IDxDrmCoreFile;)I
.end method

.method public static final native IDxDrmCoreFile_GetFullContentSize(JLcom/discretix/drm/api/IDxDrmCoreFile;[J)I
.end method

.method public static final native IDxDrmCoreFile_GetFullContentSize64(JLcom/discretix/drm/api/IDxDrmCoreFile;[J)I
.end method

.method public static final native IDxDrmCoreFile_SWIGUpcast(J)J
.end method

.method public static final native IDxDrmCoreStream_GetDRMContentType(JLcom/discretix/drm/api/IDxDrmCoreStream;)I
.end method

.method public static final native IDxDrmCoreStream_ProcessPacket(JLcom/discretix/drm/api/IDxDrmCoreStream;J[BJ[B)I
.end method

.method public static final native IDxDrmCoreStream_SWIGUpcast(J)J
.end method

.method public static final native IDxDrmCoreStream_SetActiveContentByTrackId(JLcom/discretix/drm/api/IDxDrmCoreStream;J)I
.end method

.method public static final native IDxHttpRequest_GetHttpBodySize(JLcom/discretix/drm/api/IDxHttpRequest;)J
.end method

.method public static final native IDxHttpRequest_GetHttpHeader(JLcom/discretix/drm/api/IDxHttpRequest;JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
.end method

.method public static final native IDxHttpRequest_GetHttpMethod(JLcom/discretix/drm/api/IDxHttpRequest;)I
.end method

.method public static final native IDxHttpRequest_GetHttpUrl(JLcom/discretix/drm/api/IDxHttpRequest;)Ljava/lang/String;
.end method

.method public static final native IDxHttpRequest_GetNumOfHttpHeaders(JLcom/discretix/drm/api/IDxHttpRequest;)J
.end method

.method public static final native IDxHttpRequest_ReadHttpBody(JLcom/discretix/drm/api/IDxHttpRequest;[B)I
.end method

.method public static final native IDxHttpRequest_RestartHttpBody(JLcom/discretix/drm/api/IDxHttpRequest;)I
.end method

.method public static final native IDxRightsObject_AccumulatedSecondsLeft(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_Constraints(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_CountLeft(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_EndTime(JLcom/discretix/drm/api/IDxRightsObject;)Ljava/util/Date;
.end method

.method public static final native IDxRightsObject_GetNumOfIndividualValues(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_GetStatus__SWIG_0(JLcom/discretix/drm/api/IDxRightsObject;I)I
.end method

.method public static final native IDxRightsObject_GetStatus__SWIG_1(JLcom/discretix/drm/api/IDxRightsObject;)I
.end method

.method public static final native IDxRightsObject_GetUseRestriction(JLcom/discretix/drm/api/IDxRightsObject;)I
.end method

.method public static final native IDxRightsObject_IndividualValue(JLcom/discretix/drm/api/IDxRightsObject;J)Ljava/lang/String;
.end method

.method public static final native IDxRightsObject_InitialAccumulatedSeconds(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_InitialCount(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_InitialTimedCount(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_IntervalPeriodInSeconds(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_IsStateful(JLcom/discretix/drm/api/IDxRightsObject;)Z
.end method

.method public static final native IDxRightsObject_Permissions(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_StartTime(JLcom/discretix/drm/api/IDxRightsObject;)Ljava/util/Date;
.end method

.method public static final native IDxRightsObject_TimeLeft(JLcom/discretix/drm/api/IDxRightsObject;[J)J
.end method

.method public static final native IDxRightsObject_TimedCountLeft(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxRightsObject_TimedCountTimer(JLcom/discretix/drm/api/IDxRightsObject;)J
.end method

.method public static final native IDxUserMessage_GetMessageCode(JLcom/discretix/drm/api/IDxUserMessage;)I
.end method

.method public static final native IDxUserMessage_GetMessageParam(JLcom/discretix/drm/api/IDxUserMessage;I)Ljava/lang/String;
.end method

.method public static final native IDxUserMessage_GetMessageSeverity(JLcom/discretix/drm/api/IDxUserMessage;)I
.end method

.method public static final native IDxUserMessage_GetMessageType(JLcom/discretix/drm/api/IDxUserMessage;)I
.end method

.method public static final native IDxWhiteList_Add(JLcom/discretix/drm/api/IDxWhiteList;Ljava/lang/String;)I
.end method

.method public static final native IDxWhiteList_Contains(JLcom/discretix/drm/api/IDxWhiteList;Ljava/lang/String;)Z
.end method

.method public static final native IDxWhiteList_Delete(JLcom/discretix/drm/api/IDxWhiteList;Ljava/lang/String;)I
.end method

.method public static final native IDxWhiteList_GetAt(JLcom/discretix/drm/api/IDxWhiteList;J)Ljava/lang/String;
.end method

.method public static final native IDxWhiteList_GetCount(JLcom/discretix/drm/api/IDxWhiteList;)J
.end method

.method public static final native IDxWmDrmDLA_GetDRMSecurityVersion(JLcom/discretix/drm/api/IDxWmDrmDLA;[B)I
.end method

.method public static final native IDxWmDrmDLA_GetDRMVersion(JLcom/discretix/drm/api/IDxWmDrmDLA;[B)I
.end method

.method public static final native IDxWmDrmDLA_GetLicenseChallenge(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ[B)I
.end method

.method public static final native IDxWmDrmDLA_GetMeteringChallenge(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ[B)I
.end method

.method public static final native IDxWmDrmDLA_GetSystemInfo(JLcom/discretix/drm/api/IDxWmDrmDLA;[B)I
.end method

.method public static final native IDxWmDrmDLA_StoreLicense(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ)I
.end method

.method public static final native IDxWmDrmDLA_StoreMeteringResponse(JLcom/discretix/drm/api/IDxWmDrmDLA;[BJ[J)I
.end method

.method public static final native delete_IDxCoreImportStream(J)V
.end method

.method public static final native delete_IDxDrmCoreClient(J)V
.end method

.method public static final native delete_IDxDrmCoreContent(J)V
.end method

.method public static final native delete_IDxDrmCoreFile(J)V
.end method

.method public static final native delete_IDxDrmCoreStream(J)V
.end method

.method public static final native delete_IDxHttpRequest(J)V
.end method

.method public static final native delete_IDxRightsObject(J)V
.end method

.method public static final native delete_IDxUserMessage(J)V
.end method

.method public static final native delete_IDxWhiteList(J)V
.end method

.method public static final native delete_IDxWmDrmDLA(J)V
.end method
