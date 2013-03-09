.class public interface abstract Lcom/android/internal/telephony/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;,
        Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;,
        Lcom/android/internal/telephony/CommandsInterface$SimTypes;,
        Lcom/android/internal/telephony/CommandsInterface$RadioState;
    }
.end annotation


# static fields
.field public static final APP_INIT:I = 0x65

.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final CDMA_SMS_FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final CDMA_SMS_FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final CDMA_SMS_FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final CDMA_SMS_FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final FACILITY_BAIC:I = 0x3

.field public static final FACILITY_BAICr:I = 0x4

.field public static final FACILITY_BAOC:I = 0x0

.field public static final FACILITY_BAOIC:I = 0x1

.field public static final FACILITY_BAOICxH:I = 0x2

.field public static final FACILITY_BA_ALL:I = 0x5

.field public static final FACILITY_BA_FD:I = 0x9

.field public static final FACILITY_BA_MO:I = 0x6

.field public static final FACILITY_BA_MT:I = 0x7

.field public static final FACILITY_BA_SIM:I = 0x8

.field public static final GSM_SMS_FAIL_CAUSE_MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final GSM_SMS_FAIL_CAUSE_UNSPECIFIED_ERROR:I = 0xff

.field public static final GSM_SMS_FAIL_CAUSE_USIM_APP_TOOLKIT_BUSY:I = 0xd4

.field public static final GSM_SMS_FAIL_CAUSE_USIM_DATA_DOWNLOAD_ERROR:I = 0xd5

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final SIM_APP_RESET:I = 0x66

.field public static final SIM_REFRESH_FILE_UPDATED:I = 0x0

.field public static final SIM_REFRESH_INIT:I = 0x1

.field public static final SIM_REFRESH_RESET:I = 0x2

.field public static final SIM_REFRESH_RESULT_OEM_BASE:I = 0x64

.field public static final SIM_SESSION_RESET:I = 0x67

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field public static final USSD_MODE_TERMINATED_BY_NETWORK:I = 0x2


# virtual methods
.method public abstract CWUWDeRegistration(Landroid/os/Message;)V
.end method

.method public abstract CWUWRegistration(Landroid/os/Message;)V
.end method

.method public abstract acceptCall(Landroid/os/Message;)V
.end method

.method public abstract acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnRuim(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract enableAllDaySleep(ILandroid/os/Message;)V
.end method

.method public abstract enablePS_W2G_Handover(ILandroid/os/Message;)V
.end method

.method public abstract enableRegistrationState_wifi_call(ILandroid/os/Message;)V
.end method

.method public abstract exitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getATCSCB(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworksAppendAcT(Landroid/os/Message;)V
.end method

.method public abstract getBandCapability(ILandroid/os/Message;)V
.end method

.method public abstract getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract getCDMASubscription(Landroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCdmaBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getCdmaSubscriptionSource(Landroid/os/Message;)V
.end method

.method public abstract getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getDeviceIdentity(Landroid/os/Message;)V
.end method

.method public abstract getDeviceMemoryFull(Landroid/os/Message;)V
.end method

.method public abstract getDrxInfo(Landroid/os/Message;)V
.end method

.method public abstract getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;
.end method

.method public abstract getHtcSimTypes(Landroid/os/Message;)V
.end method

.method public abstract getIMEI(Landroid/os/Message;)V
.end method

.method public abstract getIMEISV(Landroid/os/Message;)V
.end method

.method public abstract getIMSI(Landroid/os/Message;)V
.end method

.method public abstract getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccCardStatus(Landroid/os/Message;)V
.end method

.method public abstract getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastDataCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastPdpFailCause(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getMute(Landroid/os/Message;)V
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getOperator(Landroid/os/Message;)V
.end method

.method public abstract getPDPContextList(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPhoneBookEntries(IILandroid/os/Message;)V
.end method

.method public abstract getPhoneBookEntriesLength(Landroid/os/Message;)V
.end method

.method public abstract getPhoneBookMemory(Landroid/os/Message;)V
.end method

.method public abstract getPhoneFunctionality(Landroid/os/Message;)V
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getPreferredOperatorList(Landroid/os/Message;)V
.end method

.method public abstract getPreferredVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getRuimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getSIMExpiredStatus(Landroid/os/Message;)V
.end method

.method public abstract getSMSC(Landroid/os/Message;)V
.end method

.method public abstract getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract getSimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getSimTypes(Landroid/os/Message;)V
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getSubscriberNumber(Landroid/os/Message;)V
.end method

.method public abstract getSubsidyLock(ILandroid/os/Message;)V
.end method

.method public abstract getVTSimulatedMode()Z
.end method

.method public abstract getVoiceRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
.end method

.method public abstract hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract iccCloseChannel(ILandroid/os/Message;)V
.end method

.method public abstract iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryAvoidNetwork(Landroid/os/Message;)V
.end method

.method public abstract queryBCSMS(IILandroid/os/Message;)V
.end method

.method public abstract queryCAVE(Landroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryMD5(Landroid/os/Message;)V
.end method

.method public abstract querySSDUpdate(Landroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract queryUIMAUTH(Landroid/os/Message;)V
.end method

.method public abstract queryVPM(Landroid/os/Message;)V
.end method

.method public abstract registerCLINotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerCallWaitingInformation(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerDialToneNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAcdbTableChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaitingTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaCTMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaCTModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForE911Status(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForECallUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEnterLowPowerMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForISIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLBS(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControl(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForModemLinkStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMsgWaitIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOMADMTrigger(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPDSSInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRUIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirNumInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMExpiredStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForServiceDomainChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSmartNetworkNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSystemInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForTPMR(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerMMLUFailNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerSMSFullNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(Landroid/os/Message;)V
.end method

.method public abstract removePreferredOperatorList(ILandroid/os/Message;)V
.end method

.method public abstract reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract reportStkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestCheckFDNStatus(Landroid/os/Message;)V
.end method

.method public abstract requestClearAvoidNetwork(Landroid/os/Message;)V
.end method

.method public abstract requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
.end method

.method public abstract requestEnable3GInd(ILandroid/os/Message;)V
.end method

.method public abstract requestExitPowerSaveMode(Landroid/os/Message;)V
.end method

.method public abstract requestGetAKey(Landroid/os/Message;)V
.end method

.method public abstract requestGetAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
.end method

.method public abstract requestGetAppProfileMode(Landroid/os/Message;)V
.end method

.method public abstract requestGetBCSMSServiceLabel(IILandroid/os/Message;)V
.end method

.method public abstract requestGetBCSMSServiceNumber(Landroid/os/Message;)V
.end method

.method public abstract requestGetBSInfo(Landroid/os/Message;)V
.end method

.method public abstract requestGetCurrentServiceDomain(Landroid/os/Message;)V
.end method

.method public abstract requestGetDDTM(Landroid/os/Message;)V
.end method

.method public abstract requestGetEHRPDAPNParams(ILandroid/os/Message;)V
.end method

.method public abstract requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
.end method

.method public abstract requestGetEhrpdDisableCapability(Landroid/os/Message;)V
.end method

.method public abstract requestGetGPSOneMode(Landroid/os/Message;)V
.end method

.method public abstract requestGetHybridMode(Landroid/os/Message;)V
.end method

.method public abstract requestGetLTEAPNParams(ILandroid/os/Message;)V
.end method

.method public abstract requestGetMSL(Landroid/os/Message;)V
.end method

.method public abstract requestGetNAM(Landroid/os/Message;)V
.end method

.method public abstract requestGetNBPCD(Landroid/os/Message;)V
.end method

.method public abstract requestGetOMADMTrigger(Landroid/os/Message;)V
.end method

.method public abstract requestGetOTKSL(Landroid/os/Message;)V
.end method

.method public abstract requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestGetRadioSysInfo(Landroid/os/Message;)V
.end method

.method public abstract requestGetSectorID(ILandroid/os/Message;)V
.end method

.method public abstract requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
.end method

.method public abstract requestGetSystemGPSTime(Landroid/os/Message;)V
.end method

.method public abstract requestGetSystemLocalTime(Landroid/os/Message;)V
.end method

.method public abstract requestGetVolteSipRegFailure(Landroid/os/Message;)V
.end method

.method public abstract requestGetWiMAXMode(Landroid/os/Message;)V
.end method

.method public abstract requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract requestISIMRead(IIIIILandroid/os/Message;)V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestOTAProvisionStatus(Landroid/os/Message;)V
.end method

.method public abstract requestPhoneClassChangeDone(Landroid/os/Message;)V
.end method

.method public abstract requestPhoneClassChangeDone(ZILandroid/os/Message;)V
.end method

.method public abstract requestQueryISIMSupported(Landroid/os/Message;)V
.end method

.method public abstract requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestReleaseAllVoiceCalls(Landroid/os/Message;)V
.end method

.method public abstract requestResetWSIMState(Landroid/os/Message;)V
.end method

.method public abstract requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSelectNextNetwork(Landroid/os/Message;)V
.end method

.method public abstract requestSendECallUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSetAKey(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSetAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
.end method

.method public abstract requestSetAppProfileMode(ILandroid/os/Message;)V
.end method

.method public abstract requestSetDDTM(ILandroid/os/Message;)V
.end method

.method public abstract requestSetEHRPDAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
.end method

.method public abstract requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
.end method

.method public abstract requestSetEmergencyCallCategory(ILandroid/os/Message;)V
.end method

.method public abstract requestSetFastDormancy(IILandroid/os/Message;)V
.end method

.method public abstract requestSetGPSOneMode(ILandroid/os/Message;)V
.end method

.method public abstract requestSetHybridMode(ILandroid/os/Message;)V
.end method

.method public abstract requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSetLBSNTFY(ILandroid/os/Message;)V
.end method

.method public abstract requestSetLTEAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
.end method

.method public abstract requestSetMIPProfile(ILandroid/os/Message;)V
.end method

.method public abstract requestSetMultiRABTrafficThrottling(IILandroid/os/Message;)V
.end method

.method public abstract requestSetNAI(ILandroid/os/Message;)V
.end method

.method public abstract requestSetNAM(ILandroid/os/Message;)V
.end method

.method public abstract requestSetPdnProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSetPscallEnterDormancy(Landroid/os/Message;)V
.end method

.method public abstract requestSetPushMailDormantTime(IILandroid/os/Message;)V
.end method

.method public abstract requestSetSmartDataRoaming(ILandroid/os/Message;)V
.end method

.method public abstract requestSetTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract requestSetVoiceRoamingMode(IILandroid/os/Message;)V
.end method

.method public abstract requestSetWiMAXMode(ILandroid/os/Message;)V
.end method

.method public abstract requestVPM(Landroid/os/Message;)V
.end method

.method public abstract resetRadio(Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
.end method

.method public abstract sendSMSExtend(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMSExtendMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract separateConnection(ILandroid/os/Message;)V
.end method

.method public abstract setAGPSHostName(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setAGPSServer([IILandroid/os/Message;)V
.end method

.method public abstract setATCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setBCSMS(IILandroid/os/Message;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCLIP(ZLandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastConfig([ILandroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscriptionSource(ILandroid/os/Message;)V
.end method

.method public abstract setCelluarPower(ZLandroid/os/Message;)V
.end method

.method public abstract setCurrentPreferredNetworkType()V
.end method

.method public abstract setDeviceMemoryFull(ZLandroid/os/Message;)V
.end method

.method public abstract setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V
.end method

.method public abstract setLocationUpdates(ZLandroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManualAppendAcT(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManualExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setOnCBOnIcc(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnT3gPsdbg(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
.end method

.method public abstract setPhoneBookMemory(ILandroid/os/Message;)V
.end method

.method public abstract setPhoneType(I)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
.end method

.method public abstract setRX_Diversity(IILandroid/os/Message;)V
.end method

.method public abstract setRadioPower(ZLandroid/os/Message;)V
.end method

.method public abstract setSMSC(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setVTSimulatedMode(Z)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V
.end method

.method public abstract uiccApplicationIO(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract uiccDeactivateApplication(ILandroid/os/Message;)V
.end method

.method public abstract uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V
.end method

.method public abstract uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V
.end method

.method public abstract uiccSelectApplication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract uim3gContextAuthenticate(I[B[BLandroid/os/Message;)V
.end method

.method public abstract unSetCBOnIcc(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCallRing(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCallSetUp(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatEvent(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnIccSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNITZTime(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewCB(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewCdmaSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsOnSim(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsStatus(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnT3gPsdbg(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUSSD(Landroid/os/Handler;)V
.end method

.method public abstract unregisterCLINotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterCallWaitingInformation(Landroid/os/Handler;)V
.end method

.method public abstract unregisterDialToneNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterFor3GIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAcdbTableChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaitingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaitingTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaCTMccMncChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaCTModeChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForE911Status(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForECallUSSD(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForERIInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEnterLowPowerMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForForLineControl(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHTCECCStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForISIMReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLBS(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLoopBackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMIPFailCause(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForManualState(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForModemLinkStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMsgWaitIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNBPCDInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNVReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkBusy(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOMADMTrigger(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPDSSInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPhoneModeChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRSSI_Report(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRUIMLockedOrAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRUIMReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioStateChangedExt(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioTechnologyChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirNumInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRilConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIMExpiredStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIMHotSwap(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIMReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIMSWAPStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForServiceDomainChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalFade(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSmartNetworkNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSystemInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForTPMR(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForToneSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterMMLUFailNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterPBReadyNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterSMSFullNotify(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIccAppRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract usingHtcIccCardProxy(Ljava/lang/Boolean;)Z
.end method

.method public abstract vtAnswer(Landroid/os/Message;)V
.end method

.method public abstract vtCHUP(ILandroid/os/Message;)V
.end method

.method public abstract vtDial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract vtHangup(Landroid/os/Message;)V
.end method

.method public abstract writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method
