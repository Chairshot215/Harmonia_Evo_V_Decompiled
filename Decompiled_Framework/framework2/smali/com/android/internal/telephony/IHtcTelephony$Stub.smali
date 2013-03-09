.class public abstract Lcom/android/internal/telephony/IHtcTelephony$Stub;
.super Landroid/os/Binder;
.source "IHtcTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IHtcTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHtcTelephony"

.field static final TRANSACTION_akaAuthentication:I = 0x26

.field static final TRANSACTION_calculateAkaResponse:I = 0x22

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x23

.field static final TRANSACTION_calculateNafExternalKey:I = 0x24

.field static final TRANSACTION_checkTestIcc:I = 0x57

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x13

.field static final TRANSACTION_confirmFirstDataRoaming:I = 0x39

.field static final TRANSACTION_dialWithoutDelay:I = 0x3d

.field static final TRANSACTION_disableLocationUpdatesExt:I = 0x87

.field static final TRANSACTION_enableLocationUpdatesExt:I = 0x86

.field static final TRANSACTION_enableMpdp:I = 0x6c

.field static final TRANSACTION_enableRegistrationState_wifi_call:I = 0x82

.field static final TRANSACTION_getActiveCallConnectTime:I = 0x47

.field static final TRANSACTION_getActiveCallNumber:I = 0x45

.field static final TRANSACTION_getActivePDPList:I = 0x6d

.field static final TRANSACTION_getActivePhoneType:I = 0x8f

.field static final TRANSACTION_getBackgroundCallNumber:I = 0x46

.field static final TRANSACTION_getCFUNumber:I = 0x4b

.field static final TRANSACTION_getCFUNumberFromOperator:I = 0x4e

.field static final TRANSACTION_getCallStateExt:I = 0x8c

.field static final TRANSACTION_getCardCheckedState:I = 0x92

.field static final TRANSACTION_getCdmaMin:I = 0x34

.field static final TRANSACTION_getCellLocationExt:I = 0x85

.field static final TRANSACTION_getCurrentCallState:I = 0x59

.field static final TRANSACTION_getDataActivityExt:I = 0x8d

.field static final TRANSACTION_getDataStateExt:I = 0x8e

.field static final TRANSACTION_getDetailIccStatus:I = 0x38

.field static final TRANSACTION_getEsn:I = 0x33

.field static final TRANSACTION_getGlobalDataRoamingOption:I = 0x28

.field static final TRANSACTION_getGprsState:I = 0x3a

.field static final TRANSACTION_getGsmNetworkType:I = 0x56

.field static final TRANSACTION_getHtcDeviceId:I = 0x2b

.field static final TRANSACTION_getHtcDeviceSvn:I = 0x2c

.field static final TRANSACTION_getHtcIccSerialNumber:I = 0x2e

.field static final TRANSACTION_getHtcLine1AlphaTag:I = 0x30

.field static final TRANSACTION_getHtcLine1Number:I = 0x2f

.field static final TRANSACTION_getHtcNetworkType:I = 0x62

.field static final TRANSACTION_getHtcServiceStateExt:I = 0x91

.field static final TRANSACTION_getHtcSubscriberId:I = 0x2d

.field static final TRANSACTION_getHtcVoiceMailAlphaTag:I = 0x32

.field static final TRANSACTION_getHtcVoiceMailNumber:I = 0x31

.field static final TRANSACTION_getIncallRecordingFileName:I = 0x4f

.field static final TRANSACTION_getLastError:I = 0x14

.field static final TRANSACTION_getNeighboringCellInfoExt:I = 0x88

.field static final TRANSACTION_getNetworkTypeExt:I = 0x89

.field static final TRANSACTION_getPdnSettings:I = 0x5a

.field static final TRANSACTION_getPdnSettings2:I = 0x5d

.field static final TRANSACTION_getPhoneState:I = 0x7f

.field static final TRANSACTION_getPowerKeyFlag:I = 0x4a

.field static final TRANSACTION_getPreferredNetworkType:I = 0x60

.field static final TRANSACTION_getRejectAllCalls:I = 0x79

.field static final TRANSACTION_getSectorId:I = 0x1c

.field static final TRANSACTION_getServiceState:I = 0x3b

.field static final TRANSACTION_getSubsidyLockTypes:I = 0x36

.field static final TRANSACTION_getUSSDVerificationStatus:I = 0x67

.field static final TRANSACTION_getUSSDVerificationStrings:I = 0x69

.field static final TRANSACTION_getVTLoopBackMode:I = 0x55

.field static final TRANSACTION_getVTSimulatedMode:I = 0x53

.field static final TRANSACTION_getVoiceMessageCountExt:I = 0x8b

.field static final TRANSACTION_hasIccCardExt:I = 0x8a

.field static final TRANSACTION_hasVTCall:I = 0x58

.field static final TRANSACTION_hello_getDeviceId:I = 0x1

.field static final TRANSACTION_htcCdmaEndCall:I = 0x42

.field static final TRANSACTION_htcCdmaExitRadioPowerSaveMode:I = 0x40

.field static final TRANSACTION_htcModemLinkOn:I = 0x41

.field static final TRANSACTION_isCallWaiting:I = 0x4c

.field static final TRANSACTION_isFdnEnabled:I = 0x43

.field static final TRANSACTION_isInService:I = 0x90

.field static final TRANSACTION_isSimPinEnabled:I = 0x83

.field static final TRANSACTION_isUimPinEnabled:I = 0x84

.field static final TRANSACTION_launchCallForwardingSettings:I = 0x7a

.field static final TRANSACTION_notifyKeyEvent:I = 0x7e

.field static final TRANSACTION_notifyScreenBusy:I = 0x7d

.field static final TRANSACTION_openIccLogicalChannel:I = 0x12

.field static final TRANSACTION_performHtcPhoneAction:I = 0x6b

.field static final TRANSACTION_queryCAVE:I = 0x3

.field static final TRANSACTION_queryMD5:I = 0xa

.field static final TRANSACTION_querySSDUpdate:I = 0x5

.field static final TRANSACTION_queryUIMAUTH:I = 0xb

.field static final TRANSACTION_queryVPM:I = 0x8

.field static final TRANSACTION_requestCAVE:I = 0x2

.field static final TRANSACTION_requestCW_UW_DREG:I = 0x75

.field static final TRANSACTION_requestCW_UW_REG:I = 0x74

.field static final TRANSACTION_requestEhrpdDomainNameChangeState:I = 0x64

.field static final TRANSACTION_requestGetBtid:I = 0x20

.field static final TRANSACTION_requestGetDOMAIN:I = 0x16

.field static final TRANSACTION_requestGetEhrpdDeviceCapability:I = 0x66

.field static final TRANSACTION_requestGetEhrpdDisableCapability:I = 0x65

.field static final TRANSACTION_requestGetGID1:I = 0x27

.field static final TRANSACTION_requestGetHasISIM:I = 0x1d

.field static final TRANSACTION_requestGetIMPI:I = 0x15

.field static final TRANSACTION_requestGetIMPU:I = 0x17

.field static final TRANSACTION_requestGetIMSI:I = 0x19

.field static final TRANSACTION_requestGetIsGBASupported:I = 0x1e

.field static final TRANSACTION_requestGetKeyLifetime:I = 0x21

.field static final TRANSACTION_requestGetMobileNumber:I = 0x1a

.field static final TRANSACTION_requestGetPCSCF:I = 0x18

.field static final TRANSACTION_requestGetPCSCFAddress:I = 0xf

.field static final TRANSACTION_requestGetRand:I = 0x1f

.field static final TRANSACTION_requestGetSIMType:I = 0x7b

.field static final TRANSACTION_requestGetVolteSipRegFailure:I = 0xe

.field static final TRANSACTION_requestISIMRead:I = 0x70

.field static final TRANSACTION_requestImsAkaAuthentication:I = 0x1b

.field static final TRANSACTION_requestLtePermanentlyDetached:I = 0x76

.field static final TRANSACTION_requestMD5:I = 0x9

.field static final TRANSACTION_requestQueryISIMSupported:I = 0x6f

.field static final TRANSACTION_requestResetWSIMState:I = 0x72

.field static final TRANSACTION_requestSSDUpdate:I = 0x4

.field static final TRANSACTION_requestSSDUpdateConfirm:I = 0x6

.field static final TRANSACTION_requestSetEhrpdDisableCapability:I = 0x63

.field static final TRANSACTION_requestSetFastDormancy:I = 0x77

.field static final TRANSACTION_requestSetISIMAUTH:I = 0x71

.field static final TRANSACTION_requestSetLBSNTFY:I = 0x73

.field static final TRANSACTION_requestSetMultiRABTrafficThrottling:I = 0x2a

.field static final TRANSACTION_requestVPM:I = 0x7

.field static final TRANSACTION_resetPdnForSettingsChange:I = 0x5c

.field static final TRANSACTION_resetPdnForSettingsChange2:I = 0x5f

.field static final TRANSACTION_sendAT_BRIC:I = 0x3c

.field static final TRANSACTION_sendAT_PushMail:I = 0x3f

.field static final TRANSACTION_sendAllowedCSIMCommand:I = 0x44

.field static final TRANSACTION_sendCmmbAuth3GReq:I = 0x50

.field static final TRANSACTION_sendCmmbAuthGSMReq:I = 0x51

.field static final TRANSACTION_sendLanguageChange:I = 0x6e

.field static final TRANSACTION_setCFUNumber:I = 0x4d

.field static final TRANSACTION_setDataEnabled:I = 0x7c

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x25

.field static final TRANSACTION_setGlobalDataRoamingOption:I = 0x29

.field static final TRANSACTION_setPdnSettings:I = 0x5b

.field static final TRANSACTION_setPdnSettings2:I = 0x5e

.field static final TRANSACTION_setPowerKeyFlag:I = 0x49

.field static final TRANSACTION_setPreferredNetworkType:I = 0x61

.field static final TRANSACTION_setPreferredNetworkType_wifi_call:I = 0x81

.field static final TRANSACTION_setRejectAllCalls:I = 0x78

.field static final TRANSACTION_setTimeZone:I = 0x3e

.field static final TRANSACTION_setUSSDVerificationStatus:I = 0x68

.field static final TRANSACTION_setUSSDVerificationStrings:I = 0x6a

.field static final TRANSACTION_setVTLoopBackMode:I = 0x54

.field static final TRANSACTION_setVTSimulatedMode:I = 0x52

.field static final TRANSACTION_showIncallScreen:I = 0x80

.field static final TRANSACTION_supplySubsidyLockPin:I = 0x37

.field static final TRANSACTION_switchHoldAndActiveCall:I = 0x48

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x11

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x10

.field static final TRANSACTION_unBlockPin:I = 0x35

.field static final TRANSACTION_updateRegDregState:I = 0xc

.field static final TRANSACTION_updateSipInviteState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.IHtcTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHtcTelephony;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/IHtcTelephony;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hello_getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryCAVE()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->querySSDUpdate()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestVPM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryVPM()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryMD5()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryUIMAUTH()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateRegDregState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetVolteSipRegFailure()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_14
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getLastError()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetDOMAIN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPU()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCF()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_19
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_1c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSectorId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetHasISIM()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_1e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIsGBASupported()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_1f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetRand()[B

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetBtid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetKeyLifetime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateAkaResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_23
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_24
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_27
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetGID1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGlobalDataRoamingOption()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGlobalDataRoamingOption(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetMultiRABTrafficThrottling(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :sswitch_36
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSubsidyLockTypes()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    :sswitch_38
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDetailIccStatus()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->confirmFirstDataRoaming()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGprsState()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getServiceState()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_BRIC()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    :sswitch_3e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setTimeZone(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    :sswitch_3f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_PushMail(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaExitRadioPowerSaveMode()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcModemLinkOn()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    :sswitch_42
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaEndCall()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    :sswitch_43
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isFdnEnabled()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    :sswitch_44
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallConnectTime()J

    move-result-wide v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->switchHoldAndActiveCall()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPowerKeyFlag()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPowerKeyFlag()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    :sswitch_4b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isCallWaiting()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    :sswitch_4d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    :sswitch_4e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuthGSMReq([B)[B

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTSimulatedMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    :sswitch_53
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTSimulatedMode()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    :sswitch_54
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTLoopBackMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    :sswitch_55
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTLoopBackMode()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    :sswitch_56
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->checkTestIcc()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    :sswitch_58
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasVTCall()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    :sswitch_59
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCurrentCallState()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings2([Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange2()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPreferredNetworkType()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetEhrpdDisableCapability(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestEhrpdDomainNameChangeState()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDisableCapability()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDeviceCapability()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStatus(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->performHtcPhoneAction(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableMpdp(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    :sswitch_6d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePDPList()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendLanguageChange(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestQueryISIMSupported()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    :sswitch_70
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestResetWSIMState()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_73
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetLBSNTFY(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_REG()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_DREG()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestLtePermanentlyDetached()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_77
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetFastDormancy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setRejectAllCalls(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    :sswitch_79
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getRejectAllCalls()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    :sswitch_7a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->launchCallForwardingSettings()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetSIMType()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    :goto_21
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setDataEnabled(Z)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    :sswitch_7d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyScreenBusy(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    :sswitch_7e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyKeyEvent(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPhoneState()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_23

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_24
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    :sswitch_80
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->showIncallScreen()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType_wifi_call(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    :sswitch_82
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :goto_26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableRegistrationState_wifi_call(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    :sswitch_83
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isSimPinEnabled()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_26

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v0, 0x0

    goto :goto_27

    :sswitch_84
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isUimPinEnabled()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    :sswitch_85
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_28

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    :sswitch_86
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableLocationUpdatesExt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->disableLocationUpdatesExt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNeighboringCellInfoExt(I)Ljava/util/List;

    move-result-object v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNetworkTypeExt(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasIccCardExt(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_29

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    :sswitch_8b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVoiceMessageCountExt(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCallStateExt(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataActivityExt(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataStateExt(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePhoneType()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isInService(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    :sswitch_91
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcServiceStateExt(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCardCheckedState()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
