.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$3;,
        Lcom/android/phone/PhoneInterfaceManager$iSIMThread;,
        Lcom/android/phone/PhoneInterfaceManager$CFUHelper;,
        Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;,
        Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;,
        Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;,
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_SELECT_PHONE:Ljava/lang/String; = "com.android.phone.SIP_SELECT_PHONE"

.field private static final CMD_ANSWER_RINGING_CALL:I = 0x4

.field private static final CMD_CLOSE_CHANNEL:I = 0x2c

.field private static final CMD_END_CALL:I = 0x5

.field private static final CMD_EXCHANGE_APDU:I = 0x28

.field private static final CMD_HANDLE_NEIGHBORING_CELL:I = 0x2

.field private static final CMD_HANDLE_PIN_MMI:I = 0x1

.field private static final CMD_HTC_CDMA_END_CALL:I = 0xa

.field private static final CMD_HTC_CSIM_RSP:I = 0xb

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_EXT_BASE:I = 0x3e8

.field private static final CMD_HTC_FETCH_SIGNATURE_KEYS:I = 0x14

.field private static final CMD_HTC_GET_EHRPD_DEVICE_CAPABILITY:I = 0x25

.field private static final CMD_HTC_GET_EHRPD_DEVICE_CAPABILITY_RESULT:I = 0x26

.field private static final CMD_HTC_GET_EHRPD_DISABLE_CAPABILITY:I = 0x23

.field private static final CMD_HTC_GET_EHRPD_DISABLE_CAPABILITY_RESULT:I = 0x24

.field private static final CMD_HTC_GET_EHRPD_DOMAIN_NAME_CHANGE:I = 0x20

.field private static final CMD_HTC_GET_EHRPD_DOMAIN_NAME_CHANGE_RESULT:I = 0x22

.field private static final CMD_HTC_GET_PDN_SETTINGS:I = 0xc

.field private static final CMD_HTC_GET_PDN_SETTINGS2:I = 0x46

.field private static final CMD_HTC_GET_PDN_SETTINGS2_RESULT:I = 0x47

.field private static final CMD_HTC_GET_PDN_SETTINGS_RESULT:I = 0xd

.field private static final CMD_HTC_GET_PREF_NET_TYPE:I = 0x10

.field private static final CMD_HTC_GET_PREF_NET_TYPE_RESULT:I = 0x11

.field private static final CMD_HTC_KIDZONE_ACT:I = 0x3e9

.field private static final CMD_HTC_SEND_REJECT_MSG:I = 0x3c

.field private static final CMD_HTC_SEND_RING_MSG:I = 0x3d

.field private static final CMD_HTC_SET_CW_UW_DREG:I = 0x1f7

.field private static final CMD_HTC_SET_CW_UW_DREG_RESULT:I = 0x1f8

.field private static final CMD_HTC_SET_CW_UW_REG:I = 0x1f5

.field private static final CMD_HTC_SET_CW_UW_REG_RESULT:I = 0x1f6

.field private static final CMD_HTC_SET_EHRPD_CAPABILITY:I = 0x1e

.field private static final CMD_HTC_SET_EHRPD_CAPABILITY_RESULT:I = 0x1f

.field private static final CMD_HTC_SET_PDN_SETTINGS:I = 0xe

.field private static final CMD_HTC_SET_PDN_SETTINGS2:I = 0x48

.field private static final CMD_HTC_SET_PDN_SETTINGS2_RESULT:I = 0x49

.field private static final CMD_HTC_SET_PDN_SETTINGS_RESULT:I = 0xf

.field private static final CMD_HTC_SET_PREF_NET_TYPE:I = 0x12

.field private static final CMD_HTC_SET_PREF_NET_TYPE_RESULT:I = 0x13

.field private static final CMD_OPEN_CHANNEL:I = 0x2a

.field private static final CMD_SILENCE_RINGER:I = 0x6

.field private static final CW_CMD_BASE_NUM:I = 0x1f4

.field private static final DBG:Z = false

.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field public static final DSA_ACTION:Ljava/lang/String; = "com.sprint.dsa.DSA_ACTIVITY"

.field public static final DSA_EXTRA:Ljava/lang/String; = "com.sprint.dsa.url"

.field public static final DSA_TYPE:Ljava/lang/String; = "vnd.sprint.dsa/vnd.sprint.dsa.main"

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x2d

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x29

.field private static final EVENT_NEIGHBORING_CELL_DONE:I = 0x3

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x2b

.field private static final EVENT_SEND_MESSAGE:I = 0x35

.field static final EVENT_T3G_CMMB_3G_AUTH_RSP:I = 0x34

.field static final EVENT_T3G_CMMB_GSM_AUTH_RSP:I = 0x33

.field public static final EXTRA_ACTUAL_NUMBER_TO_DIAL:Ljava/lang/String; = "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

.field public static final EXTRA_ALREADY_CALLED:Ljava/lang/String; = "android.phone.extra.ALREADY_CALLED"

.field public static final EXTRA_NEW_CALL_INTENT:Ljava/lang/String; = "android.phone.extra.NEW_CALL_INTENT"

.field public static final EXTRA_ORIGINAL_URI:Ljava/lang/String; = "android.phone.extra.ORIGINAL_URI"

.field public static final EXTRA_SIP_PHONE_URI:Ljava/lang/String; = "android.phone.extra.SIP_PHONE_URI"

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInterfaceManager"

.field static final OEM_RIL_HOOK_T3G_CMMB_3G_AUTH:I = 0x50001

.field static final OEM_RIL_HOOK_T3G_CMMB_BASE:I = 0x50000

.field static final OEM_RIL_HOOK_T3G_CMMB_GSM_AUTH:I = 0x50000

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SECRET_CODE_PREFIX:Ljava/lang/String; = "##"

.field private static final SECRET_HELP_PREFIX:Ljava/lang/String; = "#4357"

.field private static final WM_START_EMERGENCYTONE:I = 0x65


# instance fields
.field private DEBUG_RETRIEVE_NETWORK_TYPE:Z

.field private TAG_NETWORK_TYPE:Ljava/lang/String;

.field private hasSeparatedServiceState:Ljava/lang/Boolean;

.field private hasTelephonyCapability:Ljava/lang/Boolean;

.field private isSinglePhone:Ljava/lang/Boolean;

.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCSIMResult:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field private mOemResult:[B

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlatformSignature:[Landroid/content/pm/Signature;

.field private mShareSignature:[Landroid/content/pm/Signature;

.field private mSignatureLock:Ljava/lang/Object;

.field mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private methodPhoneDataServiceState:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 825
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    .line 865
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$1;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 3201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager;->DEBUG_RETRIEVE_NETWORK_TYPE:Z

    .line 3202
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager;->DEBUG_RETRIEVE_NETWORK_TYPE:Z

    if-eqz v0, :cond_0

    const-string v0, "RetrieveNetworkType"

    :goto_0
    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->TAG_NETWORK_TYPE:Ljava/lang/String;

    .line 3278
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    .line 826
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 827
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 828
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 829
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 832
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 833
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 837
    new-instance v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 838
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 841
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 842
    return-void

    :cond_0
    move-object v0, v1

    .line 3202
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneInterfaceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCSIMResult:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPlatformSignature:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneInterfaceManager;Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManager;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mShareSignature:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1307
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 1308
    .local v2, hasRingingCall:Z
    const/4 v3, 0x0

    .line 1309
    .local v3, isCallAnwsered:Z
    if-eqz v2, :cond_0

    .line 1310
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 1311
    .local v0, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 1312
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1318
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 1327
    :goto_0
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v5, :cond_0

    .line 1328
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    .line 1329
    .local v4, screen:Lcom/android/phone/InCallScreen;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1330
    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->updateFakeBottomTaskbarAfterAnswerCall()V

    .line 1331
    invoke-virtual {v4, v7}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1332
    invoke-virtual {v4, v7}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 1340
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v4           #screen:Lcom/android/phone/InCallScreen;
    :cond_0
    return-void

    .line 1323
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_1
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0
.end method

.method private callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z
    .locals 12
    .parameter "givenSignature"
    .parameter "uid"
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3324
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 3325
    .local v7, packages:[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v10, v7

    if-lez v10, :cond_4

    .line 3334
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-direct {p0, v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 3335
    .local v8, pkgSignatures:[Landroid/content/pm/Signature;
    if-eqz v8, :cond_4

    array-length v10, v8

    if-lez v10, :cond_4

    .line 3336
    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3337
    if-nez p1, :cond_0

    .line 3339
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3344
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3346
    if-eqz p1, :cond_3

    array-length v10, p1

    if-lez v10, :cond_3

    .line 3347
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    .line 3348
    .local v9, sig:Landroid/content/pm/Signature;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 3349
    .local v6, matchSig:Landroid/content/pm/Signature;
    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3353
    const/4 v10, 0x1

    .line 3369
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    .end local v9           #sig:Landroid/content/pm/Signature;
    :goto_3
    return v10

    .line 3344
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 3348
    .restart local v1       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #matchSig:Landroid/content/pm/Signature;
    .restart local v9       #sig:Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3347
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 3359
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v9           #sig:Landroid/content/pm/Signature;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No signature found : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3360
    const/4 v10, 0x1

    goto :goto_3

    .line 3364
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 3366
    const-wide/16 v10, 0x1388

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3369
    :cond_5
    :goto_4
    const/4 v10, 0x0

    goto :goto_3

    .line 3367
    :catch_0
    move-exception v10

    goto :goto_4

    .line 3340
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method private callingWithPlatformSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3306
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v0

    .line 3307
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 3308
    :cond_0
    const/4 v1, 0x1

    .line 3310
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPlatformSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private callingWithShareSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3315
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v0

    .line 3316
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3317
    const/4 v1, 0x1

    .line 3319
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mShareSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 3435
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3457
    :goto_0
    :pswitch_0
    return v0

    .line 3440
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3442
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3444
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 3446
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 3448
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 3450
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 3452
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 3454
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 3435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1982
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1983
    const/4 v1, 0x0

    .line 1988
    :goto_0
    return-object v1

    .line 1986
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1987
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 2197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 2198
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2199
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/16 v11, 0x28

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 2205
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2208
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 2209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2210
    :cond_1
    return-object v10
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2
    .parameter "mPm"
    .parameter "packageName"

    .prologue
    .line 3288
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3290
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 3295
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    .end local v0           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 3300
    :catch_0
    move-exception v1

    .line 3301
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecretCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3796
    if-nez p1, :cond_1

    .line 3829
    :cond_0
    :goto_0
    return v1

    .line 3801
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3803
    .local v0, phoneType:I
    if-ne v0, v4, :cond_2

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v3, :cond_2

    const-string v3, "*2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 3806
    goto :goto_0

    .line 3809
    :cond_2
    if-ne v0, v4, :cond_3

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_VIRGIN_611:Z

    if-eqz v3, :cond_3

    const-string v3, "611"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 3812
    goto :goto_0

    .line 3815
    :cond_3
    if-ne v0, v4, :cond_4

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    if-eq v3, v2, :cond_5

    :cond_4
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->WORLDPHONE_FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    if-ne v3, v2, :cond_0

    .line 3818
    :cond_5
    const-string v3, "#4357"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_6

    move v1, v2

    .line 3819
    goto :goto_0

    .line 3820
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const-string v3, "##"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "##4357"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    move v1, v2

    .line 3826
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1992
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return-void
.end method

.method private static parseString([BI)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 3086
    const/4 v2, 0x0

    .line 3087
    .local v2, result:Ljava/lang/String;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    const/4 v1, 0x0

    .local v1, length:I
    :goto_0
    add-int v3, p1, v1

    array-length v4, p0

    if-ge v3, v4, :cond_0

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_0

    .line 3091
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p1, v1

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3094
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #result:Ljava/lang/String;
    const-string v3, "ISO-8859-1"

    invoke-direct {v2, p0, p1, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3101
    .restart local v2       #result:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 3096
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3097
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "Unknown string!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const/4 v2, 0x0

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private publish()V
    .locals 3

    .prologue
    .line 849
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 850
    const-string v1, "phone"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 794
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 795
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 799
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 803
    monitor-enter v1

    .line 804
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 806
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v2

    goto :goto_0

    .line 811
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 811
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 823
    return-void
.end method

.method private sendRequestAsync(III)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 3929
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3930
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3931
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .locals 7
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v4, 0x0

    .line 1123
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v4

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isIdle()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1133
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1138
    .local v0, callingId:J
    if-eqz p1, :cond_2

    .line 1139
    :try_start_0
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1144
    .local v3, intent:Landroid/content/Intent;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v3}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1154
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1156
    const/4 v4, 0x1

    goto :goto_0

    .line 1141
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1145
    :catch_0
    move-exception v2

    .line 1150
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1154
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private silenceRingerInternal()V
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 1370
    :cond_1
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1290
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 1291
    return-void
.end method

.method public answerRingingCallExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3956
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 1109
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1114
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1115
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1116
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public callExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "phoneType"

    .prologue
    .line 3943
    return-void
.end method

.method public cancelMissedCallsNotification()V
    .locals 1

    .prologue
    .line 1878
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1879
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 1880
    return-void
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 3130
    const/4 v0, 0x0

    return v0
.end method

.method public confirmFirstDataRoaming()V
    .locals 4

    .prologue
    .line 1736
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1742
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    :goto_0
    return-void

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone confirmFirstDataRoaming exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1094
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1096
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1097
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public dialExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "phoneType"

    .prologue
    .line 3937
    return-void
.end method

.method public dialWithoutBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 23
    .parameter "intent"
    .parameter "number"

    .prologue
    .line 2532
    sget-boolean v20, Lcom/android/phone/HtcFeatureList;->FEATURE_ASK_EXIT_E911:Z

    if-eqz v20, :cond_0

    sget-boolean v20, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-eqz v20, :cond_0

    .line 2533
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2534
    new-instance v5, Landroid/content/Intent;

    const-string v20, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2535
    .local v5, exitEMC:Landroid/content/Intent;
    const/high16 v20, 0x1002

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2684
    .end local v5           #exitEMC:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2544
    :cond_0
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "dialWithoutBroadcast"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const-string v20, "android.phone.extra.ALREADY_CALLED"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2548
    .local v3, alreadyCalled:Z
    if-eqz v3, :cond_1

    .line 2549
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "CALL already placed -- returning."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2553
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 2557
    .local v4, app:Lcom/android/phone/PhoneApp;
    const-string v20, "*147359*682*"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    sget-boolean v20, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v20, :cond_2

    .line 2558
    iget-object v15, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v15, Lcom/android/internal/telephony/PhoneProxy;

    .line 2559
    .local v15, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2560
    .local v6, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 2565
    .end local v6           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_2
    if-nez p2, :cond_3

    .line 2566
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "dialWithoutBroadcast CALL cancelled -- returning."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2569
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2570
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dialWithoutBroadcast Cannot modify outgoing call to emergency number "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2574
    :cond_4
    const-string v20, "android.phone.extra.ORIGINAL_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2577
    .local v14, originalUri:Ljava/lang/String;
    if-nez v14, :cond_5

    .line 2578
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "dialWithoutBroadcast Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2582
    :cond_5
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2587
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 2588
    .local v17, scheme:Ljava/lang/String;
    const-string v20, "sip"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_6
    const/4 v7, 0x1

    .line 2590
    .local v7, isSIP:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    .line 2593
    .local v8, mCallOption:Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string v20, "SIP_ALWAYS"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 2594
    const/4 v7, 0x1

    .line 2598
    :cond_7
    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v15, Lcom/android/internal/telephony/PhoneProxy;

    .line 2601
    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2603
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2606
    .local v12, newDialString:Ljava/lang/String;
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2608
    .local v11, networkPortion:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2610
    .restart local v6       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v11, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v10

    .line 2612
    .local v10, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez v10, :cond_c

    .line 2640
    .end local v6           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v10           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v11           #networkPortion:Ljava/lang/String;
    .end local v12           #newDialString:Ljava/lang/String;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_8
    :goto_2
    const/4 v9, 0x0

    .line 2641
    .local v9, mUseSipPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v16

    .line 2643
    .local v16, profileCount:I
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-- mCallOption "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-- profileCount "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.CALL"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2647
    .local v13, newIntent:Landroid/content/Intent;
    const-string v20, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2648
    const-string v20, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2650
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2651
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2654
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2656
    const-string v20, "sip"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 2657
    :cond_9
    const/4 v9, 0x1

    .line 2669
    :cond_a
    :goto_3
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mUseSipPhone = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    if-nez v9, :cond_13

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2588
    .end local v7           #isSIP:Z
    .end local v8           #mCallOption:Ljava/lang/String;
    .end local v9           #mUseSipPhone:Z
    .end local v13           #newIntent:Landroid/content/Intent;
    .end local v16           #profileCount:I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2614
    .restart local v6       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v7       #isSIP:Z
    .restart local v8       #mCallOption:Ljava/lang/String;
    .restart local v10       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v11       #networkPortion:Ljava/lang/String;
    .restart local v12       #newDialString:Ljava/lang/String;
    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_c
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2618
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 2621
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "isModeCLIRForLexikon"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2626
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 2627
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v15, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2631
    :cond_e
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2658
    .end local v6           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v10           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v11           #networkPortion:Ljava/lang/String;
    .end local v12           #newDialString:Ljava/lang/String;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .restart local v9       #mUseSipPhone:Z
    .restart local v13       #newIntent:Landroid/content/Intent;
    .restart local v16       #profileCount:I
    :cond_f
    const-string v20, "tel"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    if-eqz v16, :cond_10

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 2659
    :cond_10
    const/4 v9, 0x0

    goto :goto_3

    .line 2661
    :cond_11
    if-eqz v8, :cond_12

    const-string v20, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 2663
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2665
    :cond_12
    if-eqz v8, :cond_a

    const-string v20, "SIP_ALWAYS"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2666
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2678
    :cond_13
    new-instance v18, Landroid/content/Intent;

    const-string v20, "com.android.phone.SIP_SELECT_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2679
    .local v18, selectPhoneIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/phone/SipCallOptionHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2680
    const-string v20, "android.phone.extra.NEW_CALL_INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2681
    const/high16 v20, 0x1000

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 19
    .parameter "intent"

    .prologue
    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 896
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 897
    .local v9, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 899
    .local v7, number:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_DISABLE_3_WAY_CALL:Z

    if-eqz v1, :cond_1

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    .line 902
    .local v17, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v1, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 906
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_DISABLE_3_WAY_CALL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v18, Lcom/android/phone/PhoneInterfaceManager$2;

    invoke-direct/range {v18 .. v19}, Lcom/android/phone/PhoneInterfaceManager$2;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    .line 917
    .local v18, thread:Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 918
    const/4 v1, 0x0

    .line 1073
    .end local v7           #number:Ljava/lang/String;
    .end local v9           #action:Ljava/lang/String;
    .end local v17           #state:Lcom/android/internal/telephony/Phone$State;
    .end local v18           #thread:Ljava/lang/Thread;
    :goto_0
    return v1

    .line 924
    .restart local v7       #number:Ljava/lang/String;
    .restart local v9       #action:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 928
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 931
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v7}, Lcom/android/phone/util/HomeDialing;->isAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/util/HomeDialing;->havePreference(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v1, v7, v0}, Lcom/android/phone/util/HomeDialing;->appendPreferredCountryCode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 948
    :cond_3
    if-eqz v7, :cond_7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v13, 0x1

    .line 955
    .local v13, emergencyNumber:Z
    :goto_1
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 956
    if-eqz v13, :cond_8

    const-string v9, "android.intent.action.CALL_EMERGENCY"

    .line 959
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    :cond_4
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 963
    if-eqz v13, :cond_9

    .line 964
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call emergency number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with CALL Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 975
    .local v15, invokeFrameworkDialer:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v15}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 978
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 935
    .end local v13           #emergencyNumber:Z
    .end local v15           #invokeFrameworkDialer:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v7}, Lcom/android/phone/util/HomeDialing;->startHomeDialingActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 937
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v1, v3, :cond_6

    .line 938
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 939
    .local v10, broacastIntent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.LAUNCHDIALER"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 943
    .end local v10           #broacastIntent:Landroid/content/Intent;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 948
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 956
    .restart local v13       #emergencyNumber:Z
    :cond_8
    const-string v9, "android.intent.action.CALL"

    goto/16 :goto_2

    .line 980
    :cond_9
    const/4 v11, 0x0

    .line 1022
    .local v11, callNow:Z
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1030
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1031
    const/4 v11, 0x1

    .line 1034
    :cond_a
    if-eqz v11, :cond_b

    .line 1035
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-class v3, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1036
    const/high16 v1, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 1040
    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v2, broadcastIntent:Landroid/content/Intent;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1042
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    :cond_c
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 1045
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 1047
    const-string v1, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v2, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 1049
    .local v16, originalData:Landroid/net/Uri;
    const-string v1, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mNeedToBroadcast:Z

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/PhoneInterfaceManager;->isSecretCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1060
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/phone/PhoneInterfaceManager;->dialWithoutBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1068
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 981
    .end local v2           #broadcastIntent:Landroid/content/Intent;
    .end local v11           #callNow:Z
    .end local v16           #originalData:Landroid/net/Uri;
    :cond_d
    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 987
    if-nez v13, :cond_e

    .line 988
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call non-emergency number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with EMERGENCY_CALL Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 994
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "emergency_tone"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 995
    .local v14, iEmergencyTone:I
    packed-switch v14, :pswitch_data_0

    .line 1006
    :cond_f
    :goto_5
    const/4 v11, 0x1

    .line 1007
    .restart local v11       #callNow:Z
    goto/16 :goto_3

    .line 998
    .end local v11           #callNow:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isPureGsmUmtsPhone(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f

    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1000
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO get ThreadID before EMC tone == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1071
    .end local v7           #number:Ljava/lang/String;
    .end local v9           #action:Ljava/lang/String;
    .end local v13           #emergencyNumber:Z
    .end local v14           #iEmergencyTone:I
    :catch_0
    move-exception v12

    .line 1072
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    const-string v3, "dialWithoutDelay"

    invoke-static {v1, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1008
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v7       #number:Ljava/lang/String;
    .restart local v9       #action:Ljava/lang/String;
    .restart local v13       #emergencyNumber:Z
    :cond_10
    :try_start_1
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1064
    .restart local v2       #broadcastIntent:Landroid/content/Intent;
    .restart local v11       #callNow:Z
    .restart local v16       #originalData:Landroid/net/Uri;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v4, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/PhoneApp;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 995
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    .line 1800
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1806
    const/4 v3, 0x3

    .line 1807
    .local v3, result:I
    if-eqz p1, :cond_6

    .line 1808
    const/4 v0, 0x0

    .line 1809
    .local v0, checkPlatformKey:Z
    const/4 v1, 0x0

    .line 1810
    .local v1, checkSprintKey:Z
    const-string v5, "admin"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1811
    const/4 v0, 0x1

    .line 1813
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_0

    .line 1814
    const/4 v1, 0x1

    .line 1826
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 1827
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1844
    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_1
    :goto_1
    return v4

    .line 1818
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :cond_2
    const-string v5, "ims"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1819
    const/4 v0, 0x1

    goto :goto_0

    .line 1821
    :cond_3
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    const-string v5, "verizon"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1823
    const/4 v0, 0x1

    goto :goto_0

    .line 1830
    :cond_4
    if-eqz v1, :cond_5

    .line 1832
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/content/HtcContext;->callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1839
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_6
    :goto_2
    move v4, v3

    .line 1844
    goto :goto_1

    .line 1840
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :catch_0
    move-exception v2

    .line 1841
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone disableApnType exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public disableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 4004
    const/4 v0, 0x0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 6

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1850
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableDataConnectivity(), caller pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const/4 v2, 0x0

    .line 1857
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1859
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    const/4 v2, 0x1

    .line 1864
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #result:Z
    :goto_0
    return v2

    .line 1861
    .restart local v2       #result:Z
    :catch_0
    move-exception v1

    .line 1862
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone disableDataConnectivity exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1920
    return-void
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4046
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    .line 1751
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1757
    const/4 v3, 0x3

    .line 1758
    .local v3, result:I
    if-eqz p1, :cond_6

    .line 1759
    const/4 v0, 0x0

    .line 1760
    .local v0, checkPlatformKey:Z
    const/4 v1, 0x0

    .line 1761
    .local v1, checkSprintKey:Z
    const-string v5, "admin"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1762
    const/4 v0, 0x1

    .line 1764
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_0

    .line 1765
    const/4 v1, 0x1

    .line 1777
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 1778
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1795
    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_1
    :goto_1
    return v4

    .line 1769
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :cond_2
    const-string v5, "ims"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1770
    const/4 v0, 0x1

    goto :goto_0

    .line 1772
    :cond_3
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    const-string v5, "verizon"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1774
    const/4 v0, 0x1

    goto :goto_0

    .line 1781
    :cond_4
    if-eqz v1, :cond_5

    .line 1783
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/content/HtcContext;->callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1790
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_6
    :goto_2
    move v4, v3

    .line 1795
    goto :goto_1

    .line 1791
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :catch_0
    move-exception v2

    .line 1792
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone enableApnType exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public enableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 4000
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1710
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1711
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableDataConnectivity(), caller pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v2, 0x0

    .line 1718
    .local v2, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1720
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1725
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #result:Z
    :goto_0
    return v2

    .line 1722
    .restart local v2       #result:Z
    :catch_0
    move-exception v1

    .line 1723
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone enableDataConnectivity exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1914
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4042
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3553
    return-void
.end method

.method public endCall()Z
    .locals 2

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 1220
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public endCallExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3950
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCallConnectTime()J
    .locals 5

    .prologue
    .line 2724
    const-wide/16 v1, 0x0

    .line 2728
    .local v1, connectTime:J
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2730
    .local v3, mForegroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2732
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2734
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2736
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v1

    .line 2740
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-wide v1
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2697
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2698
    const/4 v2, 0x0

    .line 2702
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2704
    .local v1, mForegroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2706
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2708
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2710
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2713
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2715
    const-string v3, "conference"

    .line 2719
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_0
    return-object v3

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3557
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2745
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2746
    const/4 v2, 0x0

    .line 2750
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2752
    .local v1, mBackgroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2754
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2756
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2758
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2762
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-object v2
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2782
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2783
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2795
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2796
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2797
    .local v0, getCFU:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->start()V

    .line 2799
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->getCFU()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCallStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4024
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1896
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1906
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1907
    return-object v0

    .line 1898
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1902
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCellLocationExt(I)Landroid/os/Bundle;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4037
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCallState()I
    .locals 5

    .prologue
    .line 3411
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3412
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3413
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3414
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 3416
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3418
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3429
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    return v4

    .line 3420
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3422
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 3424
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3426
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataActivityExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4032
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getDataStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4028
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1406
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getExtVoiceCallPhoneType()I
    .locals 1

    .prologue
    .line 4088
    const/4 v0, 0x0

    return v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1732
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v0

    return v0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 2
    .parameter "stack"

    .prologue
    .line 3205
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    .line 3206
    .local v1, networkType:I
    const/4 v0, 0x0

    .line 3274
    .local v0, debugNetworkTypeShown:Z
    return v1
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3014
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 2217
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1925
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    :goto_0
    const/4 v1, 0x0

    .line 1939
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1945
    :goto_1
    return-object v1

    .line 1927
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_0
    move-exception v2

    .line 1932
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1941
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_1
    move-exception v2

    .line 1942
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 1
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4051
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 13

    .prologue
    .line 2045
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 2046
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasTelephonyCapability:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 2048
    :try_start_1
    const-string v9, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2049
    .local v0, cls:Ljava/lang/Class;
    const-string v9, "BUILT_PHONE_CAPABILITIES"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2050
    .local v4, fld:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2051
    .local v5, phoneCap:I
    const-string v9, "BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_DUAL_STAND_BY"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2052
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2053
    .local v6, phoneCap_DD:I
    and-int v9, v5, v6

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->isSinglePhone:Ljava/lang/Boolean;

    .line 2054
    const-string v9, "PhoneInterfaceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SinglePhone = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManager;->isSinglePhone:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasTelephonyCapability:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2061
    .end local v0           #cls:Ljava/lang/Class;
    .end local v4           #fld:Ljava/lang/reflect/Field;
    .end local v5           #phoneCap:I
    .end local v6           #phoneCap_DD:I
    :cond_0
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasSeparatedServiceState:Ljava/lang/Boolean;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->isSinglePhone:Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->isSinglePhone:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 2064
    :try_start_3
    const-string v9, "com.android.internal.telephony.Phone"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2065
    .restart local v0       #cls:Ljava/lang/Class;
    const-string v9, "getDataServiceState"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->methodPhoneDataServiceState:Ljava/lang/reflect/Method;

    .line 2066
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->methodPhoneDataServiceState:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasSeparatedServiceState:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2071
    .end local v0           #cls:Ljava/lang/Class;
    :cond_1
    :goto_3
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2072
    const/4 v1, 0x0

    .line 2073
    .local v1, dataRadioTech:Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasSeparatedServiceState:Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasSeparatedServiceState:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2077
    :try_start_5
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->methodPhoneDataServiceState:Ljava/lang/reflect/Method;

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2081
    .local v2, dss:Landroid/telephony/ServiceState;
    :goto_4
    if-eqz v2, :cond_2

    .line 2082
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2086
    .end local v2           #dss:Landroid/telephony/ServiceState;
    :cond_2
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xa8

    if-ne v9, v10, :cond_19

    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v9, :cond_19

    .line 2088
    const-string v9, "gsm.network.type"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2092
    .local v7, radioString:Ljava/lang/String;
    const-string v9, "GPRS"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2093
    const/4 v9, 0x1

    .line 2169
    .end local v7           #radioString:Ljava/lang/String;
    :goto_5
    return v9

    .line 2053
    .end local v1           #dataRadioTech:Ljava/lang/Integer;
    .restart local v0       #cls:Ljava/lang/Class;
    .restart local v4       #fld:Ljava/lang/reflect/Field;
    .restart local v5       #phoneCap:I
    .restart local v6       #phoneCap_DD:I
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2057
    .end local v0           #cls:Ljava/lang/Class;
    .end local v4           #fld:Ljava/lang/reflect/Field;
    .end local v5           #phoneCap:I
    .end local v6           #phoneCap_DD:I
    :catch_0
    move-exception v3

    .line 2058
    .local v3, e:Ljava/lang/Exception;
    :try_start_6
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasTelephonyCapability:Ljava/lang/Boolean;

    goto :goto_1

    .line 2071
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 2066
    .restart local v0       #cls:Ljava/lang/Class;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 2067
    .end local v0           #cls:Ljava/lang/Class;
    :catch_1
    move-exception v3

    .line 2068
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_7
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->hasSeparatedServiceState:Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 2078
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dataRadioTech:Ljava/lang/Integer;
    :catch_2
    move-exception v3

    .line 2079
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #dss:Landroid/telephony/ServiceState;
    goto :goto_4

    .line 2094
    .end local v2           #dss:Landroid/telephony/ServiceState;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #radioString:Ljava/lang/String;
    :cond_5
    const-string v9, "EDGE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2095
    const/4 v9, 0x2

    goto :goto_5

    .line 2096
    :cond_6
    const-string v9, "UMTS"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2097
    const/4 v9, 0x3

    goto :goto_5

    .line 2098
    :cond_7
    const-string v9, "HSDPA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2099
    const/16 v9, 0x8

    goto :goto_5

    .line 2100
    :cond_8
    const-string v9, "HSUPA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2101
    const/16 v9, 0x9

    goto :goto_5

    .line 2102
    :cond_9
    const-string v9, "HSPA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2103
    const/16 v9, 0xa

    goto :goto_5

    .line 2104
    :cond_a
    const-string v9, "CDMA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "CDMA-IS95A"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "CDMA-IS95B"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2105
    :cond_b
    const/4 v9, 0x4

    goto :goto_5

    .line 2106
    :cond_c
    const-string v9, "CDMA - 1xRTT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "1xRTT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2107
    :cond_d
    const/4 v9, 0x7

    goto :goto_5

    .line 2108
    :cond_e
    const-string v9, "CDMA - EvDo rev. 0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "EvDo-rev.0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2109
    :cond_f
    const/4 v9, 0x5

    goto/16 :goto_5

    .line 2110
    :cond_10
    const-string v9, "CDMA - EvDo rev. A"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "EvDo-rev.A"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2111
    :cond_11
    const/4 v9, 0x6

    goto/16 :goto_5

    .line 2112
    :cond_12
    const-string v9, "CDMA - EvDo rev. B"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "EvDo-rev.B"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2113
    :cond_13
    const/16 v9, 0xc

    goto/16 :goto_5

    .line 2114
    :cond_14
    const-string v9, "CDMA - eHRPD"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    const-string v9, "eHRPD"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 2115
    :cond_15
    const/16 v9, 0xe

    goto/16 :goto_5

    .line 2116
    :cond_16
    const-string v9, "LTE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2117
    const/16 v9, 0xd

    goto/16 :goto_5

    .line 2118
    :cond_17
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_18

    .line 2119
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 2120
    :cond_18
    if-nez v1, :cond_19

    .line 2121
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 2128
    .end local v7           #radioString:Ljava/lang/String;
    :cond_19
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->isSinglePhone:Ljava/lang/Boolean;

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->isSinglePhone:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 2129
    :cond_1a
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2130
    .local v8, radiotech:I
    :goto_6
    if-nez v8, :cond_1b

    .line 2131
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 2138
    :cond_1b
    :goto_7
    packed-switch v8, :pswitch_data_0

    .line 2169
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 2129
    .end local v8           #radiotech:I
    :cond_1c
    const/4 v8, 0x0

    goto :goto_6

    .line 2135
    :cond_1d
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .restart local v8       #radiotech:I
    goto :goto_7

    .line 2140
    :pswitch_0
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 2142
    :pswitch_1
    const/4 v9, 0x2

    goto/16 :goto_5

    .line 2144
    :pswitch_2
    const/4 v9, 0x3

    goto/16 :goto_5

    .line 2146
    :pswitch_3
    const/16 v9, 0x8

    goto/16 :goto_5

    .line 2148
    :pswitch_4
    const/16 v9, 0x9

    goto/16 :goto_5

    .line 2150
    :pswitch_5
    const/16 v9, 0xa

    goto/16 :goto_5

    .line 2153
    :pswitch_6
    const/4 v9, 0x4

    goto/16 :goto_5

    .line 2155
    :pswitch_7
    const/4 v9, 0x7

    goto/16 :goto_5

    .line 2157
    :pswitch_8
    const/4 v9, 0x5

    goto/16 :goto_5

    .line 2159
    :pswitch_9
    const/4 v9, 0x6

    goto/16 :goto_5

    .line 2161
    :pswitch_a
    const/16 v9, 0xc

    goto/16 :goto_5

    .line 2163
    :pswitch_b
    const/16 v9, 0xe

    goto/16 :goto_5

    .line 2165
    :pswitch_c
    const/16 v9, 0xd

    goto/16 :goto_5

    .line 2167
    :pswitch_d
    const/16 v9, 0xf

    goto/16 :goto_5

    .line 2138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getNetworkTypeExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4066
    const/4 v0, 0x0

    return v0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 2
    .parameter "profileSlot"

    .prologue
    .line 3135
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 3136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3137
    const/16 v0, 0xc

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 3153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3154
    const/16 v0, 0x46

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 3156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 6

    .prologue
    .line 1195
    const/4 v1, 0x0

    .line 1199
    .local v1, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getPowerKeyFlag()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 1210
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1203
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 1205
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1208
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPowerKeyFlag result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1210
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 2

    .prologue
    .line 3176
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3177
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 3178
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3181
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 1

    .prologue
    .line 2226
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2227
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getSubsidyLockTypes()I
    .locals 1

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1411
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock()I

    move-result v0

    return v0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3463
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3464
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3473
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3474
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVTLoopBackMode()Z
    .locals 1

    .prologue
    .line 3118
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 3109
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4058
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1873
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1874
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public handlePinMmiExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 4020
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCardExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4074
    const/4 v0, 0x0

    return v0
.end method

.method public hasVTCall()Z
    .locals 1

    .prologue
    .line 3126
    const/4 v0, 0x0

    return v0
.end method

.method public htcCdmaEndCall()Z
    .locals 2

    .prologue
    .line 2252
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 2253
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1

    .prologue
    .line 2236
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2237
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    .line 2238
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2245
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public isCallWaiting()Z
    .locals 3

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1385
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1387
    const/4 v1, 0x1

    .line 1390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 4008
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4012
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4016
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 2690
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 2691
    .local v0, bEnable:Z
    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3971
    const/4 v0, 0x0

    return v0
.end method

.method public isOffhook()Z
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffhookExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3963
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioOn()Z
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioOnExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3987
    const/4 v0, 0x0

    return v0
.end method

.method public isRinging()Z
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRingingExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3967
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1400
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public isUimPinEnabled()Z
    .locals 1

    .prologue
    .line 3975
    const/4 v0, 0x0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public performHtcPhoneAction(I)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x3e9

    const/4 v3, 0x0

    .line 3486
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performHtcPhoneAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3488
    packed-switch p1, :pswitch_data_0

    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3548
    :goto_0
    return-void

    .line 3490
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 3491
    .local v0, screen:Lcom/android/phone/InCallScreen;
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3494
    const/4 v1, 0x1

    invoke-direct {p0, v4, v1, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(III)V

    goto :goto_0

    .line 3496
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3501
    .end local v0           #screen:Lcom/android/phone/InCallScreen;
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 3502
    .restart local v0       #screen:Lcom/android/phone/InCallScreen;
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3506
    const/4 v1, 0x2

    invoke-direct {p0, v4, v1, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(III)V

    goto :goto_0

    .line 3508
    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3513
    .end local v0           #screen:Lcom/android/phone/InCallScreen;
    :pswitch_2
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3518
    :pswitch_3
    const-string v1, "ACTION_SEND_MSG"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3519
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 3520
    .restart local v0       #screen:Lcom/android/phone/InCallScreen;
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3523
    invoke-direct {p0, v4, v5, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(III)V

    goto :goto_0

    .line 3525
    :cond_2
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3540
    .end local v0           #screen:Lcom/android/phone/InCallScreen;
    :pswitch_4
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public queryCAVE()I
    .locals 2

    .prologue
    .line 3864
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3865
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 2

    .prologue
    .line 3893
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3894
    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 2

    .prologue
    .line 3872
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3873
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 2

    .prologue
    .line 3897
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3898
    const/16 v0, 0x76

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 2

    .prologue
    .line 3884
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3885
    const/16 v0, 0x6e

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "randu"

    .prologue
    .line 3860
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3861
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestCW_UW_DREG()V
    .locals 4

    .prologue
    .line 3849
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 3850
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3852
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x1f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_DREG(Landroid/os/Message;)V

    .line 3855
    :cond_0
    return-void
.end method

.method public requestCW_UW_REG()V
    .locals 4

    .prologue
    .line 3841
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 3842
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3844
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x1f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    .line 3847
    :cond_0
    return-void
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 2

    .prologue
    .line 3389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3390
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3392
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 2

    .prologue
    .line 3403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3406
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 2

    .prologue
    .line 3396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3399
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 3578
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3579
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3580
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3581
    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 3888
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3889
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 3890
    .local v0, paraMD5:[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestQueryISIMSupported()Z
    .locals 2

    .prologue
    .line 3571
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3572
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3573
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    .line 3574
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestQueryISIMSupported()Z

    move-result v1

    return v1
.end method

.method public requestResetWSIMState()Z
    .locals 2

    .prologue
    .line 3592
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3593
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3594
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    .line 3595
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestResetWSIMState()Z

    move-result v1

    return v1
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "randssd"

    .prologue
    .line 3868
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3869
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authbs"

    .prologue
    .line 3876
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3877
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 2
    .parameter "ehrpdmode"

    .prologue
    .line 3383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3384
    const/16 v0, 0x1e

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3386
    :cond_0
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 3585
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3586
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3587
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    .line 3588
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1
    .parameter "lbsvalue"

    .prologue
    .line 3835
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3836
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSetLBSNTFY(I)V

    .line 3837
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3880
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3881
    const/16 v0, 0x6c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resetPdnForSettingsChange()V
    .locals 1

    .prologue
    .line 3168
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 3169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3170
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->resetPdnForSettingsChange()V

    .line 3173
    :cond_0
    return-void
.end method

.method public sendAT_BRIC()V
    .locals 4

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1227
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1229
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "UNIAT"

    aput-object v2, v0, v1

    .line 1230
    const/4 v1, 0x1

    const-string v2, "AT@BRIC=1\r"

    aput-object v2, v0, v1

    .line 1231
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1232
    return-void
.end method

.method public sendAT_PushMail(II)V
    .locals 5
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1261
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1263
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "UNIAT"

    aput-object v2, v0, v1

    .line 1264
    if-nez p1, :cond_1

    .line 1265
    const-string v1, "AT+PushMail=0\r"

    aput-object v1, v0, v3

    .line 1271
    :goto_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_2

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 1282
    :goto_1
    return-void

    .line 1267
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+PushMail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 1278
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1279
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "command"

    .prologue
    .line 2804
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2805
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 2807
    .local v1, result:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2809
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Lcom/android/internal/telephony/Phone;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2816
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 2818
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCSIMResult:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2824
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2826
    return-object v1

    .line 2820
    :catch_0
    move-exception v0

    .line 2822
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "interrupted while trying to sendAllowedCSIMCommand"

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2824
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 8
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    .line 3020
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3021
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 3023
    .local v2, result:[B
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3025
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3026
    .local v1, p:Landroid/os/Parcel;
    const v3, 0x50001

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3028
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3029
    const-string v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCmmbAuth3GReq szRAND = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/android/phone/PhoneInterfaceManager;->parseString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " szAUTN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p2, v6}, Lcom/android/phone/PhoneInterfaceManager;->parseString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v7, 0x34

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 3034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3038
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 3040
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3047
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 3049
    return-object v2

    .line 3043
    :catch_0
    move-exception v0

    .line 3045
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to sendCmmbAuthGSMReq"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3047
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #p:Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 8
    .parameter "szRAND"

    .prologue
    .line 3053
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3054
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 3056
    .local v2, result:[B
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3058
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3059
    .local v1, p:Landroid/os/Parcel;
    const/high16 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3061
    const-string v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCmmbAuthGSMReq szRAND(byte) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/android/phone/PhoneInterfaceManager;->parseString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 3066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3070
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 3072
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3079
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 3081
    return-object v2

    .line 3075
    :catch_0
    move-exception v0

    .line 3077
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to sendCmmbAuthGSMReq"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3079
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #p:Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public sendLanguageChange(I)V
    .locals 4
    .parameter "languageCode"

    .prologue
    .line 3561
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3562
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 3563
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "UNIAT"

    aput-object v2, v0, v1

    .line 3564
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+HTC_LANGUAGE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3566
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 3567
    return-void
.end method

.method public setActivePhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4096
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 2787
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2788
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2789
    .local v0, setCFU:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->start()V

    .line 2791
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->setCFU(ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4102
    const/4 v0, 0x1

    return v0
.end method

.method public setExtVoiceCallPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4082
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 3
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 3144
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 3145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3146
    const/16 v0, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3149
    :cond_0
    return-void
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 3161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3162
    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3164
    :cond_0
    return-void
.end method

.method public setPowerKeyFlag()V
    .locals 2

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setPowerKeyFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 3186
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 3187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithShareSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3191
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3193
    const/16 v0, 0x12

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3196
    :cond_1
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1704
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1706
    const/4 v0, 0x1

    return v0
.end method

.method public setRadioExt(ZI)Z
    .locals 1
    .parameter "turnOn"
    .parameter "phoneType"

    .prologue
    .line 3996
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeZone(ZI)V
    .locals 4
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1236
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1237
    .local v1, commands:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "UNIAT"

    aput-object v3, v1, v2

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1239
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "at@settimezone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    if-eqz p1, :cond_1

    .line 1241
    const-string v2, "1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :goto_0
    if-gez p2, :cond_0

    .line 1247
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1250
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1251
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1253
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1254
    return-void

    .line 1243
    :cond_1
    const-string v2, "0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3469
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 3470
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 3480
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3481
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    return-void
.end method

.method public setVTLoopBackMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3114
    return-void
.end method

.method public setVTSimulatedMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3105
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1168
    invoke-direct {p0, v0, v0}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .parameter "showDialpad"

    .prologue
    .line 1175
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1348
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 1349
    return-void
.end method

.method public silenceRingerExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3960
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 1416
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1417
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1418
    .local v0, checkSimPin:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1419
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 3979
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1424
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1425
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1426
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "pin"

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1441
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 1442
    .local v0, checkSubsidyLockPin:Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;->start()V

    .line 1443
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;->checkSubsidyPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldAndActiveCall()V
    .locals 3

    .prologue
    .line 2768
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2771
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    :goto_0
    return-void

    .line 2773
    :catch_0
    move-exception v0

    .line 2775
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "switchHoldAndActiveCall e="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 2

    .prologue
    .line 1688
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1689
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1690
    return-void

    .line 1689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleRadioOnOffExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3992
    return-void
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newpin"

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1432
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1433
    .local v0, unBlockSimPin:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->start()V

    .line 1434
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public updateRegDregState(II)V
    .locals 2
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 3902
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3905
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3906
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3907
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3908
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1681
    return-void
.end method

.method public updateServiceLocationExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3984
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 3910
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3912
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3916
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3917
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3918
    return-void
.end method
