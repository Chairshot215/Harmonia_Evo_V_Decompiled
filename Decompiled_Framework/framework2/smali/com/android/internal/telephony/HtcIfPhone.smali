.class public interface abstract Lcom/android/internal/telephony/HtcIfPhone;
.super Ljava/lang/Object;
.source "HtcIfPhone.java"


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "admin"

.field public static final APN_TYPE_CMAIL:Ljava/lang/String; = "cmail"

.field public static final APN_TYPE_CMMail:Ljava/lang/String; = "cmmail"

.field public static final APN_TYPE_ENTITLEMENTCHECK:Ljava/lang/String; = "entitle"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_GAME:Ljava/lang/String; = "game"

.field public static final APN_TYPE_HTTPPROXY:Ljava/lang/String; = "httpproxy"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_INTERNET:Ljava/lang/String; = "internet"

.field public static final APN_TYPE_J2ME:Ljava/lang/String; = "j2me"

.field public static final APN_TYPE_MobileMarket:Ljava/lang/String; = "MM"

.field public static final APN_TYPE_NETSHARE:Ljava/lang/String; = "netshare"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_OMADM:Ljava/lang/String; = "omadm"

.field public static final APN_TYPE_OTASP:Ljava/lang/String; = "otasp"

.field public static final APN_TYPE_OTHER:Ljava/lang/String; = "OTHER"

.field public static final APN_TYPE_STREAM:Ljava/lang/String; = "stream"

.field public static final APN_TYPE_VZW800:Ljava/lang/String; = "verizon800"

.field public static final APN_TYPE_VZWAPP:Ljava/lang/String; = "verizon"

.field public static final APN_TYPE_WAPGATEWAY:Ljava/lang/String; = "wapgateway"

.field public static final BM_GSM_ONLY:I = 0x1

.field public static final BM_GSM_UMTS_HYBRID:I = 0x3

.field public static final BM_NONE:I = 0x0

.field public static final BM_UMTS_ONLY:I = 0x2

.field public static final CARDTYPE_POSTPAY:I = 0x2

.field public static final CARDTYPE_PREPAY:I = 0x1

.field public static final CARDTYPE_UNKNOWN:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_ALREADY_SUCCESSFUL:I = 0xc

.field public static final CDMA_OTA_PROVISION_STATUS_INITIAL_REQUIRED:I = 0xd

.field public static final CDMA_OTA_PROVISION_STATUS_IN_PROGRESS:I = 0xe

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_SUCCESSFUL:I = 0x12

.field public static final CDMA_OTA_PROVISION_STATUS_PROGRAM_SUCCESSFUL:I = 0xf

.field public static final CDMA_OTA_PROVISION_STATUS_PROGRAM_UNSUCCESSFUL:I = 0x10

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_DOWNLOADED:I = 0x11

.field public static final CDMA_OTA_PROVISION_STATUS_UNSUCCESS_THREE_TIMES:I = 0x13

.field public static final CDMA_RM_AUTOMATIC_A:I = 0x3

.field public static final CDMA_RM_AUTOMATIC_B:I = 0x4

.field public static final CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final DATA_APN_MMS_PROXY:Ljava/lang/String; = "ifaceApnHttpProxy"

.field public static final DATA_APN_PROXY:Ljava/lang/String; = "ifaceApnProxy"

.field public static final DATA_APN_PROXY_PORT:Ljava/lang/String; = "ifaceApnProxyPort"

.field public static final DATA_APN_TYPES:Ljava/lang/String; = "apnTypes"

.field public static final DATA_APN_TYPES_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_IFACE_DNS:Ljava/lang/String; = "ifaceDNS"

.field public static final DATA_IFACE_GW:Ljava/lang/String; = "ifaceGW"

.field public static final DATA_IFACE_IP:Ljava/lang/String; = "ifaceIp"

.field public static final DATA_IP_ADDRESS_KEY:Ljava/lang/String; = "ipAddress"

.field public static final DATA_REQUEST_APN_TYPE:Ljava/lang/String; = "ifaceReqApn"

.field public static final FEATURE_ENABLE_ADMIN:Ljava/lang/String; = "enableADMIN"

.field public static final FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final FEATURE_ENABLE_CMAIL:Ljava/lang/String; = "enableCMAIL"

.field public static final FEATURE_ENABLE_CMMail:Ljava/lang/String; = "enableCMMail"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_DUN_ALWAYS:Ljava/lang/String; = "enableDUNAlways"

.field public static final FEATURE_ENABLE_ENTITLE:Ljava/lang/String; = "enableENTITLE"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_GAME:Ljava/lang/String; = "enableGAME"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_HTTPPROXY:Ljava/lang/String; = "enableHTTPPROXY"

.field public static final FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final FEATURE_ENABLE_INTERNET:Ljava/lang/String; = "enableINTERNET"

.field public static final FEATURE_ENABLE_J2ME:Ljava/lang/String; = "enableJ2ME"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_MobileMarket:Ljava/lang/String; = "enableMobileMarket"

.field public static final FEATURE_ENABLE_OMADM:Ljava/lang/String; = "enableOMADM"

.field public static final FEATURE_ENABLE_OTASP:Ljava/lang/String; = "enableOTASP"

.field public static final FEATURE_ENABLE_OTHER:Ljava/lang/String; = "enableOTHER"

.field public static final FEATURE_ENABLE_STREAM:Ljava/lang/String; = "enableSTREAM"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final FEATURE_ENABLE_Verizon800:Ljava/lang/String; = "enableVerizon800"

.field public static final FEATURE_ENABLE_WAPGATEWAY:Ljava/lang/String; = "enableWAPGATEWAY"

.field public static final NT_MODE_CDMA_AND_LTE_EVDO:I = 0x8

.field public static final NT_MODE_CDMA_LTE:I = 0xc

.field public static final NT_MODE_GLOBAL_LTE:I = 0xa

.field public static final NT_MODE_GSM_WCDMA_LTE:I = 0x9

.field public static final NT_MODE_LTE_ONLY:I = 0xb

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x4

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final REASON_APN_MISSING:Ljava/lang/String; = "apnMissing"

.field public static final REASON_APN_MISSING_DEFAULT:Ljava/lang/String; = "apnMissingDefault"

.field public static final REASON_APN_SETUP_COMPLETE:Ljava/lang/String; = "apnSetupComplete"

.field public static final REASON_CW_CHANGED:Ljava/lang/String; = "cwFeatureChange"

.field public static final REASON_DATACONNECTION_DENIED:Ljava/lang/String; = "dataConnectionDenied"

.field public static final REASON_ENABLE_NEW_APN:Ljava/lang/String; = "enableNewApn"

.field public static final REASON_ENTITLEMENTCHECK_SUCCESS:Ljava/lang/String; = "entilementCheckSuccess"

.field public static final REASON_GLOBAL_ROAMING_OFF:Ljava/lang/String; = "globalRoamingOff"

.field public static final REASON_GLOBAL_ROAMING_ON:Ljava/lang/String; = "globalRoamingOn"

.field public static final REASON_HTC_DISABLE_APN_TYPE:Ljava/lang/String; = "disableApnType"

.field public static final REASON_HTC_NO_APN_FOR_FOTA:Ljava/lang/String; = "noApnForFOTA"

.field public static final REASON_HTC_NO_DUN_DATA_PLAN:Ljava/lang/String; = "noDunDataPlan"

.field public static final REASON_HTC_POWER_SAVING_DISABLED:Ljava/lang/String; = "htcPowerSaveDisabled"

.field public static final REASON_HTC_POWER_SAVING_ENABLED:Ljava/lang/String; = "htcPowerSaveEnabled"

.field public static final REASON_HTC_ROAM_GUARD_DISABLED:Ljava/lang/String; = "roamGuardDisabled"

.field public static final REASON_HTC_ROAM_GUARD_ENABLED:Ljava/lang/String; = "roamGuardEnabled"

.field public static final REASON_MODEM_LINK_OFF:Ljava/lang/String; = "modemLinkOff"

.field public static final REASON_NETWORK_ATTACH:Ljava/lang/String; = "networkAttach"

.field public static final REASON_OPERATOR_BARRED:Ljava/lang/String; = "Operator Barred"

.field public static final REASON_PDP_DISCONNECT:Ljava/lang/String; = "pdpDisconnect"

.field public static final REASON_PDP_EXIST:Ljava/lang/String; = "pdpExist"

.field public static final REASON_PDP_TEARDOWN:Ljava/lang/String; = "pdpTeardown"

.field public static final REASON_ROAMING_DISABLED:Ljava/lang/String; = "roamingDisabled"

.field public static final REASON_ROAMING_ENABLED:Ljava/lang/String; = "roamingEnabled"

.field public static final REASON_ROAMING_NEED_CONFIRMED:Ljava/lang/String; = "roamingNeedConfirmed"

.field public static final REASON_UNKNOWN_PDP_DISCONNECT:Ljava/lang/String; = "unknowpdpDisconnect"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_CHANGE_TIME_KEY:Ljava/lang/String; = "stateTimeStamp"

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final UICC_2G:I = 0x0

.field public static final UICC_3G:I = 0x1

.field public static final UICC_4G_NON_PROVISIONED:I = 0x2

.field public static final UICC_4G_PROVISIONED:I = 0x3

.field public static final UICC_CARD_STATUS_KEY:Ljava/lang/String; = "uiccCardStatus"


# virtual methods
.method public abstract changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract checkFDNCapability()Z
.end method

.method public abstract checkTestIcc()Z
.end method

.method public abstract clearVoiceMessageWaiting()V
.end method

.method public abstract confirmFirstDataRoaming()V
.end method

.method public abstract dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract enableMpdp(Z)V
.end method

.method public abstract genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getActiveCid()I
.end method

.method public abstract getActivePDPList()[Ljava/lang/String;
.end method

.method public abstract getAvailableNetworksAppendAcT(Landroid/os/Message;)V
.end method

.method public abstract getBandCapability()I
.end method

.method public abstract getCFUNumber()Ljava/lang/String;
.end method

.method public abstract getCallBarringOption(ILandroid/os/Message;)V
.end method

.method public abstract getCdmaEriFileVersion()I
.end method

.method public abstract getDataCFUNumber()Ljava/lang/String;
.end method

.method public abstract getDataCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getDataCallForwardingStatus()Z
.end method

.method public abstract getDataConnectionStateTime(Ljava/lang/String;)J
.end method

.method public abstract getDetailIccStatus()[I
.end method

.method public abstract getDeviceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFdnEnabledStatus()Z
.end method

.method public abstract getGlobalDataRoamingOption()I
.end method

.method public abstract getGprsState()I
.end method

.method public abstract getHtcSimTypes(Landroid/os/Message;)V
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiSv()Ljava/lang/String;
.end method

.method public abstract getInCallPhoneType()I
.end method

.method public abstract getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLine1Number(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMessageWaitingIndicatorEnhanced()I
.end method

.method public abstract getOperatorInfo()Ljava/lang/Object;
.end method

.method public abstract getPRIVersion()Ljava/lang/String;
.end method

.method public abstract getPRIVersions()[Ljava/lang/String;
.end method

.method public abstract getPdnSettings(ILandroid/os/Message;)V
.end method

.method public abstract getPendingMO()Lcom/android/internal/telephony/Connection;
.end method

.method public abstract getPreferredOnly()I
.end method

.method public abstract getRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getSIMOperatorNumeric()Ljava/lang/String;
.end method

.method public abstract getSimTypes(Landroid/os/Message;)V
.end method

.method public abstract getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubsidyLock(ILandroid/os/Message;)V
.end method

.method public abstract getUSSDVerificationStatus()Ljava/lang/String;
.end method

.method public abstract getUSSDVerificationStrings()[Ljava/lang/String;
.end method

.method public abstract getVTSimulatedMode()Z
.end method

.method public abstract getVoiceCallForwardingStatus()Z
.end method

.method public abstract htcCdmaExitRadioPowerSaveMode()V
.end method

.method public abstract htcGetCdmaEriCallGuard()I
.end method

.method public abstract htcGetCdmaEriDistinctiveRinger()I
.end method

.method public abstract htcModemLinkOn()Z
.end method

.method public abstract initSpecificDialNumbers()V
.end method

.method public abstract isActEnabled()Z
.end method

.method public abstract isDefaultTypeStillActive()Z
.end method

.method public abstract isNetworkSelectionEnabled()Z
.end method

.method public abstract queryCAVE(Landroid/os/Message;)V
.end method

.method public abstract queryMD5(Landroid/os/Message;)V
.end method

.method public abstract querySSDUpdate(Landroid/os/Message;)V
.end method

.method public abstract querySubsidyLock(ILandroid/os/Message;)V
.end method

.method public abstract queryUIMAUTH(Landroid/os/Message;)V
.end method

.method public abstract queryVPM(Landroid/os/Message;)V
.end method

.method public abstract reEnableDataRoamingGuardDialog()V
.end method

.method public abstract registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract requesetSetPhoneType(ILandroid/os/Message;)V
.end method

.method public abstract requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestCW_UW_DREG(Landroid/os/Message;)V
.end method

.method public abstract requestCW_UW_REG(Landroid/os/Message;)V
.end method

.method public abstract requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
.end method

.method public abstract requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
.end method

.method public abstract requestGetEhrpdDisableCapability(Landroid/os/Message;)V
.end method

.method public abstract requestGetGID1()Ljava/lang/String;
.end method

.method public abstract requestGetNBPCD(Landroid/os/Message;)V
.end method

.method public abstract requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestGetSIMType()I
.end method

.method public abstract requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
.end method

.method public abstract requestGetVolteSipRegFailure(Landroid/os/Message;)V
.end method

.method public abstract requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestHtcGetDDTMMode(Landroid/os/Message;)V
.end method

.method public abstract requestHtcGetGPSOneMode(Landroid/os/Message;)V
.end method

.method public abstract requestHtcSetDDTMMode(ILandroid/os/Message;)V
.end method

.method public abstract requestHtcSetGPSOneMode(ILandroid/os/Message;)V
.end method

.method public abstract requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestOTAProvisionStatus(Landroid/os/Message;)V
.end method

.method public abstract requestReleaseAllVoiceCalls(Landroid/os/Message;)V
.end method

.method public abstract requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
.end method

.method public abstract requestSetLBSNTFY(I)V
.end method

.method public abstract requestSetPushMailDormantTime(IILandroid/os/Message;)V
.end method

.method public abstract requestSetSmartDataRoaming(ILandroid/os/Message;)V
.end method

.method public abstract requestSetVoiceRoamingMode(IILandroid/os/Message;)V
.end method

.method public abstract requestVPM(Landroid/os/Message;)V
.end method

.method public abstract requesthTcGetHybridMode(Landroid/os/Message;)V
.end method

.method public abstract requesthTcGetSystemNAM(Landroid/os/Message;)V
.end method

.method public abstract requesthTcSetHybridMode(ILandroid/os/Message;)V
.end method

.method public abstract requesthTcSetSystemNAM(ILandroid/os/Message;)V
.end method

.method public abstract resetPdnForSettingsChange()V
.end method

.method public abstract restoreSavedNetworkSelection(Landroid/os/Message;)V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract setCBMsgIdEFcbmi([BLandroid/os/Message;)V
.end method

.method public abstract setCFUNumber(ZLjava/lang/String;)Z
.end method

.method public abstract setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setDataNationalRoamingMode(I)V
.end method

.method public abstract setDataRoamingGuardResponse(ZZ)V
.end method

.method public abstract setDataRoamingGuardSetting(I)V
.end method

.method public abstract setGlobalDataRoamingOption(I)V
.end method

.method public abstract setNetworkSelectionRejectStatus(Z)V
.end method

.method public abstract setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setRadioPowerExt(Z)V
.end method

.method public abstract setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setTempCLIR(I)V
.end method

.method public abstract setTestIcc(Ljava/lang/String;Z)V
.end method

.method public abstract setUSSDVerificationStatus(Ljava/lang/String;)V
.end method

.method public abstract setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVTSimulatedMode(Z)V
.end method

.method public abstract turnOnRadioDueToECC()V
.end method

.method public abstract uiccAkaAuthenticate([B[BLandroid/os/Message;)V
.end method

.method public abstract unregisterForCollidedDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForERIInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLoopBackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMIPFailCause(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForManualState(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNBPCDInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkBusy(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNoDunDataPlan(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPhoneModeChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalFade(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForToneSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method

.method public abstract wifi2GRetry()V
.end method
