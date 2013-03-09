.class public interface abstract Landroid/telephony/HtcIfTelephonyManager;
.super Ljava/lang/Object;
.source "HtcIfTelephonyManager.java"


# static fields
.field public static final DATA_UNKNOWN:I = -0x1

.field public static final ICC_TYPE_2G:I = 0x2

.field public static final ICC_TYPE_3G:I = 0x3

.field public static final ICC_TYPE_NO_ICC:I = 0x1

.field public static final ICC_TYPE_TITAN_LITE_SIM_CARD:I = 0x4

.field public static final ICC_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIMAX:I = 0x10

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x2

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x5

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x4

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x8

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x9

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x3

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x1

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x6

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x7

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# virtual methods
.method public abstract answerRingingCall()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract call(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract cancelMissedCallsNotification()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract checkTestIcc()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract confirmFirstDataRoaming()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dialWithoutDelay(Landroid/content/Intent;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract disableApnType(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract disableDataConnectivity()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract enableApnType(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableDataConnectivity()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract enableMpdp(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract endCall()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActiveCallConnectTime()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActiveCallNumber()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActivePDPList()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActivePhoneType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBackgroundCallNumber()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCFUNumber()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCFUNumberFromOperator()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCdmaNeedsProvisioning()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getCurrentCallState()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrentPhoneType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDetailIccStatus()[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeviceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGprsState()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGsmNetworkType()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHtcDeviceSlotType()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHtcNetworkType([Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIccType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIncallRecordingFileName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLastError()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLine1Number(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNeighboringCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getPdnSettings(I)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPowerKeyFlag()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPreferredNetworkType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getServiceState()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubsidyLockTypes()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUSSDVerificationStatus()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUSSDVerificationStrings()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVTLoopBackMode()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVTSimulatedMode()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract hasVTCall()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract htcCdmaEndCall()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract htcCdmaExitRadioPowerSaveMode()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract htcModemLinkOn()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isCallWaiting()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isDataConnectivityPossible()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isFdnEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isIdle()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isOffhook()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isRadioOn()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isRinging()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSimPinEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract needsOtaServiceProvisioning()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract performHtcPhoneAction(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestCW_UW_DREG()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestCW_UW_REG()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestEhrpdDomainNameChangeState()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestGetEhrpdDeviceCapability()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestGetEhrpdDisableCapability()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestISIMRead(IIIII)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestQueryISIMSupported()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestResetWSIMState()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestSetEhrpdDisableCapability(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestSetLBSNTFY(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetPdnForSettingsChange()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendAT_BRIC()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendAT_PushMail(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendCmmbAuth3GReq([B[B)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendCmmbAuthGSMReq([B)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendLanguageChange(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setCFUNumber(ZLjava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPdnSettings(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPowerKeyFlag()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPreferredNetworkType(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setRadio(Z)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setTimeZone(ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUSSDVerificationStatus(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVTLoopBackMode(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVTSimulatedMode(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showCallScreen()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showCallScreenWithDialpad(Z)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract silenceRinger()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract supplyPin(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract switchHoldAndActiveCall()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toggleRadioOnOff()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateServiceLocation()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
