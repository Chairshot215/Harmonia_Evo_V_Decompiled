.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public CWUWDeRegistration(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public CWUWRegistration(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public enableRegistrationState_wifi_call(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getATCSCB(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryAvoidNetwork(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryBCSMS(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestClearAvoidNetwork(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestEnable3GInd(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestExitPowerSaveMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetAKey(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetAppProfileMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetBCSMSServiceLabel(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetBCSMSServiceNumber(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetBSInfo(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetCurrentServiceDomain(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetDDTM(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetEHRPDAPNParams(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetGPSOneMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetHybridMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetLTEAPNParams(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetMSL(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetNAM(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetOMADMTrigger(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetOTKSL(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetRadioSysInfo(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetSystemGPSTime(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetSystemLocalTime(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestGetWiMAXMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestPhoneClassChangeDone(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSelectNextNetwork(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetAKey(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetAppProfileMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetDDTM(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetEHRPDAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetEhrpdEmergencyCallBackMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetFastDormancy(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetGPSOneMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetHybridMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetLBSNTFY(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetLTEAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetMIPProfile(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetNAI(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetNAM(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetPscallEnterDormancy(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestSetWiMAXMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .locals 0

    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setATCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setBCSMS(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setOnCBOnIcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setPhoneType(I)V
    .locals 0

    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public unSetCBOnIcc(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnNewCB(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
