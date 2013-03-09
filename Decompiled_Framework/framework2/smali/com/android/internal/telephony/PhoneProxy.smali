.class public Lcom/android/internal/telephony/PhoneProxy;
.super Landroid/os/Handler;
.source "PhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;
.implements Lcom/android/internal/telephony/HtcIfPhoneProxy;


# static fields
.field private static final DEBUG_PDN_SETTING_INTERFACE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_PDN_SETTING_INTERFACE:Z = false

.field private static final EVENT_ENTER_LPM:I = 0x2

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x65

.field private static final EVENT_GET_IMEISV_DONE:I = 0x67

.field private static final EVENT_GET_IMEI_DONE:I = 0x66

.field private static final EVENT_HTC_GET_DEVICE_MFG_CODE_IN_NV:I = 0x6f

.field private static final EVENT_HTC_GET_PDN_SETTING2:I = 0x6a

.field private static final EVENT_HTC_GET_PDN_SETTING2_CONT:I = 0x6b

.field private static final EVENT_HTC_GET_PDN_SETTING2_RESULT:I = 0x6c

.field private static final EVENT_HTC_SET_PDN_SETTING2:I = 0x6d

.field private static final EVENT_HTC_SET_PDN_SETTING2_RESULT:I = 0x6e

.field private static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x69

.field private static final EVENT_RADIO_AVAILABLE:I = 0x68

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x4

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x1

.field protected static final EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE:I = 0x64

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_RADIO_POWER:I = 0x6

.field private static final EVENT_VOICE_RADIO_TECHNOLOGY_CHANGED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static final pdnIpTypes:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field protected mActivePhone:Lcom/android/internal/telephony/Phone;

.field protected mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDesiredPowerState:Z

.field private mDeviceMfgCodeRequested:Ljava/lang/Integer;

.field private mEsn:Ljava/lang/String;

.field private mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

.field private mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

.field private mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field protected mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mMeid:Ljava/lang/String;

.field protected mOutgoingPhone:Ljava/lang/String;

.field protected mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mResetModemOnRadioTechnologyChange:Z

.field private notifyModemStorageStatus:Z

.field private rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x52

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "IPv4"

    aput-object v3, v0, v1

    const-string v3, "IPv6"

    aput-object v3, v0, v2

    const-string v3, "IPv4v6"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v0, v1

    const-string v3, "2"

    aput-object v3, v0, v2

    const-string v3, "3"

    aput-object v3, v0, v5

    const-string v3, "4"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "5"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "ota"

    aput-object v3, v0, v1

    const-string v1, "internet"

    aput-object v1, v0, v2

    const-string v1, "pam"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/internal/telephony/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    :cond_0
    const-string v1, "persist.radio.reset_on_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x68

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForEnterLowPowerMode(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_6

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    const-string v1, "htctelephonyinternal"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephonyinternal"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "htctelephonyinternal"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    const-string v1, "htctelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->enableFullyIHtcTelephony:Z

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephony;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephony"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "htctelephony"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->sendEmergencyPlusCallBackModeStatus(Z)V

    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method private getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    :cond_0
    return-object v0
.end method

.method private getMMDataConnectionTrackerClass()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V
    .locals 11

    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_1

    iget-object v8, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    const/4 v8, 0x1

    aget-object v8, v3, v8

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    move-object v4, v8

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    const/4 v8, 0x2

    aget-object v8, v3, v8

    check-cast v8, Landroid/os/Message;

    move-object v6, v8

    check-cast v6, Landroid/os/Message;

    const/4 v8, 0x3

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    iget-object v8, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v8, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v1, v8

    check-cast v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v8, v1

    if-ge v0, v8, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v8, v1

    if-ge v0, v8, :cond_2

    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/internal/telephony/APNParam;

    aget-object v8, v1, v0

    iget v9, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-direct {v5, v8, v9}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0x6b

    invoke-virtual {p4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v5, v3, v8

    const/4 v8, 0x3

    aput-object v7, v3, v8

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-direct {p0, v5, v2, v8}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v8

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v5

    :goto_1
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "End of query PDN(cont)"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    :cond_3
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 7

    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    iget-object v4, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    iget-object v0, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Landroid/os/Message;

    move-object v2, v4

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v4, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v3, :cond_2

    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-static {v2, v5, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 17

    const/4 v14, 0x1

    aget-object v13, p2, v14

    check-cast v13, Landroid/os/Message;

    if-eqz v13, :cond_3

    const/4 v1, 0x0

    const/4 v14, 0x0

    aget-object v14, p2, v14

    check-cast v14, [Ljava/lang/String;

    move-object v12, v14

    check-cast v12, [Ljava/lang/String;

    sget-boolean v14, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v14, :cond_8

    if-eqz v12, :cond_8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v6, 0x0

    const/4 v14, 0x4

    new-array v7, v14, [Ljava/lang/Object;

    move-object v10, v4

    const-string v14, "PHONE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    :cond_1
    const/4 v11, -0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_1
    const/4 v5, 0x0

    sparse-switch v11, :sswitch_data_0

    :goto_2
    if-eqz v5, :cond_4

    const/4 v14, 0x0

    aput-object v5, v7, v14

    const/4 v14, 0x0

    aget-object v10, v5, v14

    const/16 v14, 0x6b

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    :goto_3
    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    :goto_4
    sparse-switch v8, :sswitch_data_1

    :cond_2
    :goto_5
    if-eqz v9, :cond_6

    const/4 v14, 0x1

    aput-object v9, v7, v14

    const/4 v14, 0x2

    aput-object v13, v7, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-object v15, v7, v14

    move/from16 v0, p1

    iput v0, v6, Landroid/os/Message;->arg1:I

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v14}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_3

    const/4 v14, 0x0

    invoke-static {v13, v14, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void

    :pswitch_0
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    const/16 v14, 0xa8

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    aget-object v2, v12, v14

    const/4 v14, 0x1

    aget-object v4, v12, v14

    goto/16 :goto_0

    :pswitch_1
    array-length v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    const/4 v14, 0x0

    aget-object v3, v12, v14

    const/4 v14, 0x1

    aget-object v2, v12, v14

    const/4 v14, 0x2

    aget-object v4, v12, v14

    goto/16 :goto_0

    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    const/16 v14, 0x6c

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    goto :goto_3

    :sswitch_2
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    const/4 v14, 0x1

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    const/4 v14, 0x2

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_4
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    const/4 v14, 0x4

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    :cond_6
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_7

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    const-string v14, "Incorrect Format"

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string v14, "null"

    goto :goto_7

    :cond_8
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_9

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v16, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incorrect Parameters - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    const-string v14, "null"

    goto :goto_8

    :catch_0
    move-exception v14

    goto/16 :goto_1

    :catch_1
    move-exception v14

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private htcDmCommandForMfgCode()Ljava/lang/String;
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "C8F88D00"

    goto :goto_0
.end method

.method private htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;
    .locals 18

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_9

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v15, :cond_e

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    shr-int/lit8 v15, v15, 0x1

    new-array v3, v15, [I

    const/4 v4, 0x0

    :goto_0
    array-length v15, v3

    if-ge v4, v15, :cond_2

    add-int/lit8 v14, v4, 0x1

    array-length v15, v3

    if-ge v14, v15, :cond_1

    mul-int/lit8 v14, v14, 0x2

    :goto_1
    const/4 v13, 0x0

    mul-int/lit8 v15, v4, 0x2

    :try_start_0
    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :goto_2
    add-int/lit8 v15, v4, 0x1

    mul-int/lit8 v15, v15, 0x2

    if-ge v14, v15, :cond_0

    shl-int/lit8 v15, v13, 0x4

    and-int/lit16 v13, v15, 0xf0

    :cond_0
    aput v13, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_3
    array-length v15, v3

    if-ge v10, v15, :cond_3

    const/16 v15, 0x20

    aget v16, v3, v10

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    aget v15, v3, v10

    const/16 v16, 0x7e

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x1

    if-lt v10, v15, :cond_a

    const/4 v9, 0x0

    :goto_4
    if-ge v10, v9, :cond_4

    array-length v15, v3

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x1

    aget v15, v3, v15

    if-nez v15, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    array-length v15, v3

    sub-int/2addr v15, v10

    sub-int v8, v15, v9

    const/4 v15, 0x5

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v15, v10, v6

    add-int/2addr v8, v15

    const/4 v15, 0x3

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v6

    new-array v7, v15, [B

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_5

    aget v15, v3, v4

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_8

    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit16 v15, v15, 0xf0

    shr-int/lit8 v15, v15, 0x4

    int-to-byte v12, v15

    const/16 v15, 0xa

    if-ge v12, v15, :cond_6

    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    :goto_7
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    aput-byte v12, v7, v15

    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit8 v15, v15, 0xf

    int-to-byte v12, v15

    const/16 v15, 0xa

    if-ge v12, v15, :cond_7

    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    :goto_8
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    add-int/lit8 v15, v15, 0x1

    aput-byte v12, v7, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_7

    :cond_7
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_8

    :cond_8
    const-string v15, "persist.radio.htc_mfg_code"

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_9
    :goto_9
    const-string v15, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")DeviceMfgCode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_a
    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :cond_b
    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :cond_c
    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :cond_d
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :cond_e
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :catch_0
    move-exception v15

    goto/16 :goto_2
.end method

.method private htcRequestMfgCode()Ljava/lang/Integer;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyModemStorageAvalibility()V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageStatus:Z

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageStatus:Z

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    :try_start_0
    const-string v6, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "requestSetEncryptionState"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setup storage fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private pdnIpTypeLookup(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p3

    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_9

    move-object v4, p2

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    if-eqz v4, :cond_9

    const/4 v3, 0x6

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez p3, :cond_a

    add-int/lit8 v7, v3, 0x1

    new-array v0, v7, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    :cond_0
    if-lt v3, v5, :cond_1

    :try_start_0
    array-length v7, v0

    sub-int/2addr v7, v3

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v8, v0, v7

    :cond_1
    const/4 v7, 0x2

    if-lt v3, v7, :cond_2

    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    :cond_2
    const/4 v7, 0x3

    if-lt v3, v7, :cond_3

    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->state:I

    if-eqz v8, :cond_b

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    :cond_3
    const/4 v5, 0x4

    if-lt v3, v5, :cond_4

    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x3

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v6, v0, v5

    :cond_4
    const/4 v5, 0x5

    if-lt v3, v5, :cond_5

    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x4

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    if-ltz v5, :cond_c

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    sget-object v7, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_c

    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v5, v5, v7

    :goto_2
    aput-object v5, v0, v6

    :cond_5
    const/4 v5, 0x6

    if-lt v3, v5, :cond_6

    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x5

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_6
    const/4 v5, 0x7

    if-lt v3, v5, :cond_7

    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x6

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_7
    const/16 v5, 0x8

    if-lt v3, v5, :cond_8

    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    aput-object v6, v0, v5

    :cond_8
    const/16 v5, 0x9

    if-lt v3, v5, :cond_9

    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x8

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    return-object v0

    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_0

    :cond_a
    array-length v7, p3

    add-int/2addr v7, v3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_4
    array-length v7, p3

    if-ge v2, v7, :cond_0

    aget-object v7, p3, v2

    aput-object v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move v5, v6

    goto :goto_1

    :cond_c
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing PDN ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_1

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v4, "0"

    goto :goto_2

    :pswitch_2
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v4, "0"

    goto :goto_3

    :pswitch_3
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_2

    :cond_4
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_5
    if-lez v3, :cond_4

    move-object v1, p3

    const/4 v2, 0x2

    :goto_6
    array-length v4, v1

    if-ge v2, v4, :cond_4

    add-int/lit8 v4, v2, -0x1

    aget-object v5, p3, v2

    aput-object v5, v1, v4

    add-int/2addr v2, v3

    goto :goto_6

    :pswitch_5
    move-object v1, p3

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 14

    const/4 v8, 0x0

    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    instance-of v9, v6, Ljava/lang/Exception;

    if-nez v9, :cond_4

    const/4 v4, 0x0

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    const-string v10, "getAPNParams"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/internal/telephony/APNParam;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/os/Message;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    const/4 v9, 0x2

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-object v8

    :catch_0
    move-exception v2

    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v2

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :try_start_2
    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    :cond_2
    if-ltz v7, :cond_3

    const/4 v5, 0x0

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v9, :pswitch_data_0

    :goto_2
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v2

    goto :goto_1

    :catch_2
    move-exception v2

    if-eqz p3, :cond_2

    check-cast p3, [Ljava/lang/String;

    move-object/from16 v3, p3

    check-cast v3, [Ljava/lang/String;

    array-length v9, v3

    add-int/lit8 v7, v9, -0x1

    :goto_3
    if-ltz v7, :cond_2

    aget-object v9, v3, v7

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :pswitch_1
    const-string v5, "get3GPPAPNParams"

    goto :goto_2

    :pswitch_2
    const-string v5, "getEHRPDAPNParams"

    goto :goto_2

    :pswitch_3
    const-string v5, "getLTEAPNParams"

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Only supported PDN1 format"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object v8, v6

    check-cast v8, Ljava/lang/Exception;

    goto/16 :goto_1

    :cond_5
    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "MMDct not created"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v9

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private requestPhoneClassChangeDone(ZILandroid/os/Message;)Z
    .locals 8

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "requestPhoneClassChangeDone"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    const-string v3, "PHONE"

    const-string v4, "RIL interface PhoneClassChange with phoneType not existed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 13

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    instance-of v8, v5, Ljava/lang/Exception;

    if-nez v8, :cond_3

    const/4 v3, 0x0

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v8, v0

    const-string v9, "setAPNParams"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/internal/telephony/APNParam;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v8, 0x2

    iput v8, p2, Landroid/os/Message;->arg2:I

    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-object v7

    :catch_0
    move-exception v2

    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN2 error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :try_start_2
    iget-object v8, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    :goto_2
    const/4 v8, 0x1

    if-lt v6, v8, :cond_2

    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x0

    iget v8, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v8, :pswitch_data_0

    :goto_3
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v8, 0x1

    iput v8, p2, Landroid/os/Message;->arg2:I

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    goto/16 :goto_1

    :pswitch_1
    const-string v4, "set3GPPAPNParams"

    goto/16 :goto_3

    :pswitch_2
    const-string v4, "setEHRPDAPNParams"

    goto/16 :goto_3

    :pswitch_3
    const-string v4, "setLTEAPNParams"

    goto/16 :goto_3

    :cond_2
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only supported PDN1 format : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move-object v7, v5

    check-cast v7, Ljava/lang/Exception;

    goto/16 :goto_1

    :cond_4
    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/Exception;

    const-string v8, "MMDct not created"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v8

    goto/16 :goto_2

    :catch_3
    move-exception v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 4

    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v7, 0x0

    aget-object v7, p2, v7

    check-cast v7, [Ljava/lang/String;

    move-object v5, v7

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, p2, v7

    check-cast v6, Landroid/os/Message;

    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    new-instance v4, Lcom/android/internal/telephony/APNParam;

    invoke-direct {v4}, Lcom/android/internal/telephony/APNParam;-><init>()V

    const/16 v7, 0x6e

    invoke-virtual {p3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_5

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v7, "Incorrect Parameters"

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :pswitch_0
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_0

    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    :goto_4
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    if-nez v0, :cond_0

    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    const/4 v7, 0x3

    :try_start_2
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_6
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_7
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    const/4 v7, 0x5

    :try_start_3
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_8
    const/4 v7, 0x6

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_0
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    :sswitch_1
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_5

    :cond_3
    const/4 v7, 0x0

    goto :goto_6

    :pswitch_1
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v7, 0x1

    :try_start_4
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v3

    :goto_9
    sparse-switch v3, :sswitch_data_1

    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    :goto_a
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    const/4 v7, 0x3

    :try_start_5
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_b
    const/4 v7, 0x4

    :try_start_6
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_c
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_d
    const/4 v7, 0x5

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    const/4 v7, 0x7

    :try_start_7
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_e
    const/16 v7, 0x8

    :try_start_8
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->authType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_f
    const/16 v7, 0x9

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_2
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    :sswitch_3
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    :cond_4
    const/4 v7, 0x0

    goto :goto_c

    :cond_5
    const-string v7, "null"

    goto/16 :goto_0

    :cond_6
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_7

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_10
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect Parameters - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v7, "null"

    goto :goto_10

    :catch_1
    move-exception v7

    goto :goto_f

    :catch_2
    move-exception v7

    goto :goto_e

    :catch_3
    move-exception v7

    goto/16 :goto_d

    :catch_4
    move-exception v7

    goto/16 :goto_b

    :catch_5
    move-exception v7

    goto/16 :goto_9

    :catch_6
    move-exception v7

    goto/16 :goto_8

    :catch_7
    move-exception v7

    goto/16 :goto_7

    :catch_8
    move-exception v7

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized setPowerStateToDesired()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerStateToDesired : mDesiredPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRadioState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public checkFDNCapability()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkFDNCapability()Z

    move-result v0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->checkTestIcc()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkTestIcc()Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    return-void
.end method

.method public clearVoiceMessageWaiting()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearVoiceMessageWaiting()V

    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    return-void
.end method

.method public confirmFirstDataRoaming()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->confirmFirstDataRoaming()V

    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    return-void
.end method

.method public enableMpdp(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableMpdp(Z)V

    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveCid()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveCid()I

    move-result v0

    return v0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworksAppendAcT(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBandCapability()I

    move-result v0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallType()Lcom/android/internal/telephony/Phone$CallType;

    move-result-object v0

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionStateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEmergencyPreference()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyState()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    return-void
.end method

.method public getEntitleErrorCause()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFdnEnabledStatus()Z

    move-result v0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 4

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalDataRoamingOption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getGprsState()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v0

    return v0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    return-void
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get imei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImeiSv()Ljava/lang/String;
    .locals 2

    const-string v0, "get getImeiSv"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallPhoneType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const-string v1, "00000000000000"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "gsm.cdma.meid.workaround"

    const-string v2, "empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeid, strWorkaround="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Ljava/lang/String;

    if-ltz p1, :cond_0

    if-gt p1, v6, :cond_0

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p2, v1, v4

    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v2, 0x5

    if-gt v2, p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc8

    if-gt v2, p1, :cond_2

    const/16 v2, 0xcc

    if-gt p1, v2, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit16 v2, p1, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public getPreferredOnly()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPreferredOnly()I

    move-result v0

    return v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    return-void
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    return-void
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVTSimulatedMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x61

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x49

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Switching phone from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Phone to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "GSM"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v18, "CDMAPhone"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v15, 0x1

    const-string v18, "Setting Radio Power to Off"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "GSM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "Make a new CDMAPhone and destroy the old GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_4

    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v16

    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_6

    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    const/4 v14, 0x0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    if-eqz v10, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    new-instance v19, Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setPhone(Lcom/android/internal/telephony/Phone;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephony;->setPhone(Lcom/android/internal/telephony/Phone;)V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const-string v18, "Resetting Radio"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setmIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v18, "phoneName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-gez v18, :cond_15

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v18

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    goto/16 :goto_0

    :cond_c
    const-string v18, "GSMPhone"

    goto/16 :goto_1

    :cond_d
    const-string v18, "Unable to transfer pending dialing call to CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v18, "Make a new GSMPhone and destroy the old CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_10

    :cond_f
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v16

    :cond_10
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_12

    :cond_11
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v14, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    const/4 v14, 0x0

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    if-eqz v10, :cond_14

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->turnOnRadioDueToECC()V

    goto/16 :goto_2

    :cond_14
    const-string v18, "Unable to transfer pending dialing call to GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_16

    sget-boolean v18, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v18, :cond_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->requestPhoneClassChangeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    const-string v18, "PHONE"

    const-string v19, "Radio available"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageAvalibility()V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v17, v18

    check-cast v17, [Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    const/16 v18, 0x3

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEsn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mMeid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    const-string v18, "ro.cdma.meid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    const-string v18, "PHONE"

    const-string v19, "Get IMEI fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImei "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    const-string v18, "ro.gsm.imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    const-string v18, "PHONE"

    const-string v19, "Get EVENT_GET_IMEISV_DONE fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImeiSv "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_ENTER_LPM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.enter_lpm"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1a

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v8, v18

    check-cast v8, [Ljava/lang/String;

    if-eqz v8, :cond_0

    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x0

    aget-object v5, v8, v18

    const/16 v18, 0x3

    aget-object v6, v8, v18

    const-string v18, "ril.cdmaphoneapp.mdn"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "ril.cdmaphoneapp.min"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CDMA mdn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    const-string v18, "PHONE"

    const-string v19, "Error for poll state "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->htcRequestMfgCode()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x4 -> :sswitch_d
        0x64 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_e
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    return-void
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    return v0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriDistinctiveRinger()I

    move-result v0

    return v0
.end method

.method public htcModemLinkOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->htcNotifyDataConnectionDisconnect(Z)Z

    move-result v0

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->initSpecificDialNumbers()V

    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public isActEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isActEnabled()Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDefaultTypeStillActive()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isNetworkSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    return-void
.end method

.method public queryAvoidNetwork(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvoidNetwork(Landroid/os/Message;)V

    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    return-void
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->querySSDUpdate(Landroid/os/Message;)V

    return-void
.end method

.method public querySubsidyLock(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->querySubsidyLock(ILandroid/os/Message;)V

    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryVPM(Landroid/os/Message;)V

    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->reEnableDataRoamingGuardDialog()V

    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    return-void
.end method

.method public requesetSetPhoneType(ILandroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-nez p1, :cond_1

    const-string v1, "Please speicify the phone type"

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch phone type ougoing phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_3

    const-string v1, "GSM"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const-string v1, "CDMA"

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to change mode outgoing phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestCW_UW_DREG(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_DREG(Landroid/os/Message;)V

    return-void
.end method

.method public requestCW_UW_REG(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    return-void
.end method

.method public requestClearAvoidNetwork(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestClearAvoidNetwork(Landroid/os/Message;)V

    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetNBPCD(Landroid/os/Message;)V

    return-void
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestGetSIMType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    return-void
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetDDTMMode(Landroid/os/Message;)V

    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetGPSOneMode(Landroid/os/Message;)V

    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetDDTMMode(ILandroid/os/Message;)V

    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetGPSOneMode(ILandroid/os/Message;)V

    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestOTAProvisionStatus(Landroid/os/Message;)V

    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public requestSelectNextNetwork(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSelectNextNetwork(Landroid/os/Message;)V

    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSetLBSNTFY(I)V

    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetVoiceRoamingMode(IILandroid/os/Message;)V

    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetHybridMode(Landroid/os/Message;)V

    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetSystemNAM(Landroid/os/Message;)V

    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetHybridMode(ILandroid/os/Message;)V

    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetSystemNAM(ILandroid/os/Message;)V

    return-void
.end method

.method public resetPdnForSettingsChange()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v2, :cond_1

    const-string v2, " changePdnSettings"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->resetRadioForDisconnectingPdn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " Need reset the Radio due to LTE VZWIMS has been modified"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    :cond_0
    :goto_1
    if-nez v1, :cond_4

    const-string v2, "getNewMPDNTable"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/DataConnectionTracker;)Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCBMsgIdEFcbmi([BLandroid/os/Message;)V

    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardResponse(ZZ)V

    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardSetting(I)V

    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    return-void
.end method

.method public setEmergencyRadioOn()V
    .locals 0

    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 0

    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3

    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalDataRoamingOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionRejectStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionRejectStatus(Z)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    if-ltz p1, :cond_1

    if-gt p1, v10, :cond_1

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    :goto_0
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v4, 0x4

    :try_start_2
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    const/4 v4, 0x5

    const/4 v5, 0x3

    :try_start_3
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_4
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_5
    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p3, v3, v8

    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v8, v7, v3}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/4 v4, 0x5

    if-gt v4, p1, :cond_2

    const/16 v4, 0x9

    if-gt p1, v4, :cond_2

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    add-int/lit8 v4, p1, -0x5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc8

    if-gt v4, p1, :cond_3

    const/16 v4, 0xcc

    if-gt p1, v4, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    add-int/lit16 v4, p1, -0xc8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto/16 :goto_0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v10

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_5

    :catch_3
    move-exception v4

    goto :goto_4

    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V

    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setRX_Diversity(IILandroid/os/Message;)V

    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPowerExt(Z)V

    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setTempCLIR(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setTempCLIR(I)V

    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;->setTestIcc(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTestIcc(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setVTSimulatedMode(Z)V

    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    return-void
.end method

.method public stopDtmf()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    return-void
.end method

.method public turnOnRadioDueToECC()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->turnOnRadioDueToECC()V

    return-void
.end method

.method public uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V

    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCollidedDisconnect(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCollidedDisconnect(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForERIInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForFailEntitlementCheck(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForHTCECCStatus(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLoopBackMode(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNBPCDInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkBusy(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNoDunDataPlan(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRSSI_Report(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioOn(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOn(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalFade(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForToneSignalInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallConnected(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    return-void
.end method

.method public wifi2GRetry()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    return-void
.end method
