.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$6;,
        Lcom/android/phone/PhoneApp$IncorrectTimerCallback;,
        Lcom/android/phone/PhoneApp$TimerCallback;,
        Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;,
        Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WorkingHandler;,
        Lcom/android/phone/PhoneApp$RadioThread;,
        Lcom/android/phone/PhoneApp$ContactInfo;,
        Lcom/android/phone/PhoneApp$QueryHandler;,
        Lcom/android/phone/PhoneApp$CbQueryHandler;,
        Lcom/android/phone/PhoneApp$PackageChangeBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x0

.field static ENABLE_SDR_FEATURE:Z = false

.field private static final EVENT_ACCEPT_NEXT_REDIAL:I = 0x320

.field private static final EVENT_CLEAR_MWI_NOTIFICATION:I = 0x12d

.field private static final EVENT_CPA_SERVICE_STATE_CHANGE:I = 0x25b

.field private static final EVENT_DATA_CONNECTION_STATE_CHANGE:I = 0x259

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field private static final EVENT_ENTITLEMENT_CHECK_FAIL:I = 0x28

.field private static final EVENT_FORCE_SCREEN_ON:I = 0x258

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0xcc

.field private static final EVENT_HEADSET_LONGPRESS_TIMEOUT:I = 0x64

.field private static final EVENT_INIT:I = -0x1

.field private static final EVENT_MOBILE_DATA_CONNECTED:I = 0x11

.field private static final EVENT_MOBILE_DATA_DISCONNECTED:I = 0x12

.field private static final EVENT_NETWORK_LIST_SCAN_COMPLETED:I = 0xc8

.field private static final EVENT_NETWORK_REGISTRATION_STATE:I = 0xc9

.field protected static final EVENT_PHONE_MODE_CHANGED:I = 0x1f4

.field private static final EVENT_PREINFLATE_LAYOUT:I = 0x324

.field private static final EVENT_QUERY_MO_PACKAGES:I = 0x323

.field protected static final EVENT_QUEUE_SET_PHONETYPE:I = 0x1f7

.field protected static final EVENT_RELEASE_ALL_CALL_RESULT:I = 0x1f8

.field protected static final EVENT_REQUESET_SET_PHONETYPE:I = 0x1f5

.field protected static final EVENT_REQUESET_SET_PHONETYPE_DONE:I = 0x1f6

.field private static final EVENT_RESET_SCREEN_TIMEOUT_AFTER_NO_CALL:I = 0xcb

.field private static final EVENT_ROAMING_NEED_CONFIRM:I = 0x321

.field private static final EVENT_SETUPWIZARD_IS_DONE:I = 0xca

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0xcd

.field private static final EVENT_SIM_ABSENT:I = 0x1

.field private static final EVENT_SIM_LOCKED:I = 0x2

.field private static final EVENT_SIM_NETWORK_LOCKED:I = 0x3

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_SMART_DATA_ROAMING_REQUEST:I = 0x37

.field private static final EVENT_SMART_DATA_ROAMING_STATUS_QUERY_DONE:I = 0x38

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field private static final EVENT_UNSOL_MM_LU_FAILED_CAUSE:I = 0x190

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field private static final IMS_REGISTRATION:Ljava/lang/String; = "IMS_REGISTRATION"

.field private static final IMS_REG_STATUS:Ljava/lang/String; = "IMS_REG_STATUS"

.field static final INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final IS_MFG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final LONG_PRESS_DELAY_SCREEN_OFF:I = 0x7d0

.field private static final MEDIA_DOUBLE_CLICK_INTERVAL:I = 0x3e8

.field public static final MEMORY_SAVE:Z = true

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_INITIATE:I = 0x33

.field private static final MSG_RESET_SUPP_SERVICE_REQUEST:I = 0x322

.field static final MT_CALL_INFO_PROJECTION:[Ljava/lang/String; = null

.field static final NUMBER_COLUMN_INDEX:I = 0x1

.field static final PHONENUMBER_COLUMN_INDEX:I = 0x0

.field private static final QUERY_MT_INFO_TOKEN:I = 0x258

.field private static final QUERY_TOKEN:I = 0x1f4

.field private static final RESET_MUTE_STATE_EVENT:I = 0x2bc

.field static final RINGTONE_COLUMN_INDEX:I = 0x1

.field static final SEND_TO_VOICEMAIL_COLUMN_INDEX:I = 0x2

.field static final SMART_DATA_ROAMING_DISABLED:I = 0x2

.field static final SMART_DATA_ROAMING_ENABLE:I = 0x1

.field static final SMART_DATA_ROAMING_FORBIDDEN:I = 0x6

.field static final SMART_DATA_ROAMING_NET_BUSY:I = 0x5

.field static final SMART_DATA_ROAMING_SEARCHING:I = 0x3

.field static final SMART_DATA_ROAMING_SUCCESS:I = 0x4

.field private static final VDBG:Z

.field static mDockState:I

.field private static mIsKidzone:Z

.field private static mLastMediaButtonUpTime:J

.field private static mLongPressed:Z

.field static mManualMode:Z

.field static mPhoneChanging:Z

.field private static mProximityEnable:Z

.field private static mReboot:Z

.field static mResumeE911:Z

.field static mRoaming:Z

.field static mSimState:Ljava/lang/String;

.field private static mWorkingHandler:Landroid/os/Handler;

.field public static sIsNaviShowable:I

.field private static sMe:Lcom/android/phone/PhoneApp;

.field static sVoiceCapable:Z


# instance fields
.field private final ACTION_LOCATIONS_NAVI_ON:Ljava/lang/String;

.field private final IS_NAVI_ON:Ljava/lang/String;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field private imsReceiver:Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;

.field private imsRegistered:Z

.field private isFromTimer:Z

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field mAcceptNextRedial:Z

.field private mAutoConnect:Z

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field public mCM:Lcom/android/internal/telephony/CallManager;

.field private mCSCallForward:Lcom/android/phone/CSCallForward;

.field private mCachedSimPin:Ljava/lang/String;

.field private mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContactInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/PhoneApp$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContactInfoLock:Ljava/lang/Object;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCtCustomization:Lcom/android/phone/HtcCtCustomize;

.field private mDockMode:I

.field private mEventualSDRresult:Z

.field private mFlipForSpeaker:Z

.field mHandler:Landroid/os/Handler;

.field private mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

.field private final mHtcReceiver:Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;

.field private mIgnoreTouchUserActivity:Z

.field public mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCorrectTimeout:Landroid/os/Handler;

.field private mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

.field mIsCwConnected:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsLandscapeMode:Z

.field private mIsSimPinEnabled:Z

.field private mIsTTYPlugged:Z

.field private mKeyguardDisableCount:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLaputaNaviForeground:Z

.field mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;

.field public mNeedToBroadcast:Z

.field private mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

.field private mNetworkListQueryServiceConnection:Landroid/content/ServiceConnection;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyDataConnected:Z

.field private mOperatorInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private final mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPausedInCallScreenInstance:Lcom/android/phone/InCallScreen;

.field private mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mPreloadCallCard:Landroid/view/View;

.field private mPreloadConfiguration:Landroid/content/res/Configuration;

.field private mPreloadInCallScreen:Landroid/view/View;

.field private mPreviousMobileData:Ljava/lang/Boolean;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mQueryHandler:Lcom/android/phone/PhoneApp$QueryHandler;

.field private mRadioSwitch:Z

.field public mReadyToShowCallScreen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field private mSenseVersion:F

.field private mSettingUpTtyInProgress:Ljava/lang/Integer;

.field private mSettingUpTtyPendingIndex:I

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

.field private mSimReady:Z

.field private mSmartDataRoamingMode:I

.field private mStatusBarCallForward:Lcom/android/phone/CSCallForward;

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTimeout:Landroid/os/Handler;

.field private mTimerCallback:Lcom/android/phone/PhoneApp$TimerCallback;

.field private mTtyEnabled:Z

.field private mUiModeObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field private mWorkingThread:Landroid/os/HandlerThread;

.field private mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;

.field public notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;

.field private timer:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    sput-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 305
    const-string v1, "factory2"

    const-string v2, "ro.bootmode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneApp;->IS_MFG:Z

    .line 313
    const-string v1, ""

    sput-object v1, Lcom/android/phone/PhoneApp;->mSimState:Ljava/lang/String;

    .line 316
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "number"

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/phone/PhoneApp;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 321
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "number"

    aput-object v2, v1, v4

    const-string v2, "custom_ringtone"

    aput-object v2, v1, v5

    const-string v2, "send_to_voicemail"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/phone/PhoneApp;->MT_CALL_INFO_PROJECTION:[Ljava/lang/String;

    .line 420
    sput v4, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 421
    sput-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 557
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mLongPressed:Z

    .line 573
    sput-boolean v4, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    .line 574
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mManualMode:Z

    .line 575
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mRoaming:Z

    .line 591
    const/4 v1, -0x1

    sput v1, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    .line 662
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mReboot:Z

    .line 683
    sput-object v0, Lcom/android/phone/PhoneApp;->mWorkingHandler:Landroid/os/Handler;

    .line 690
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    if-eqz v1, :cond_0

    const-string v0, "com.android.internal.telephony.entitlement_check_fail"

    :cond_0
    sput-object v0, Lcom/android/phone/PhoneApp;->INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String;

    .line 6114
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 6115
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1725
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 203
    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->mAutoConnect:Z

    .line 310
    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->mRadioSwitch:Z

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneApp;->mSenseVersion:F

    .line 326
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mFlipForSpeaker:Z

    .line 352
    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    .line 356
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    .line 360
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    .line 417
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 418
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 419
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 462
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 464
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 465
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 466
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 467
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 474
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 480
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mReadyToShowCallScreen:Z

    .line 502
    iput v1, p0, Lcom/android/phone/PhoneApp;->mDockMode:I

    .line 506
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    new-instance v0, Lcom/android/phone/PhoneApp$PackageChangeBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PackageChangeBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHtcReceiver:Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;

    .line 548
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 562
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z

    .line 565
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mEventualSDRresult:Z

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    .line 585
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

    .line 595
    const-string v0, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ACTION_LOCATIONS_NAVI_ON:Ljava/lang/String;

    .line 597
    const-string v0, "isNaviOn"

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->IS_NAVI_ON:Ljava/lang/String;

    .line 600
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPreloadConfiguration:Landroid/content/res/Configuration;

    .line 606
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->imsReceiver:Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;

    .line 607
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->imsRegistered:Z

    .line 611
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 632
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 646
    new-instance v0, Lcom/android/phone/PhoneApp$TimerCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$TimerCallback;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mTimerCallback:Lcom/android/phone/PhoneApp$TimerCallback;

    .line 649
    new-instance v0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    .line 667
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mContactInfoLock:Ljava/lang/Object;

    .line 675
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 678
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 679
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 682
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mWorkingThread:Landroid/os/HandlerThread;

    .line 826
    new-instance v0, Lcom/android/phone/PhoneApp$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$3;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 1726
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 1727
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->setUmtsTTYStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneApp;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/PhoneApp;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneApp;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/PhoneApp;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/phone/PhoneApp;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mLongPressed:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    sput-boolean p0, Lcom/android/phone/PhoneApp;->mLongPressed:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->isFromTimer:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->isFromTimer:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/PhoneApp;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneApp;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMLoctaionUpdateError(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onQuerySDRComplete(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mRadioSwitch:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mRadioSwitch:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/phone/PhoneApp;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcNBPCDUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/phone/PhoneApp;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/PhoneApp;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/PhoneApp;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->showCPAServiceNotification(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->inflateLayoutCache()V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mReboot:Z

    return v0
.end method

.method static synthetic access$3802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    sput-boolean p0, Lcom/android/phone/PhoneApp;->mReboot:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mAutoConnect:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    invoke-static {p0}, Lcom/android/phone/PhoneApp;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$IncorrectTimerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->displayWarningDialog()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->showTMORoamingDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->turnAirplaneModeByAlarm()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneApp;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->checkHtcCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/phone/PhoneApp;->mDockMode:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/phone/PhoneApp;->mDockMode:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;

    return-object p1
.end method

.method static synthetic access$5500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/phone/PhoneApp;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5600()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mSimReady:Z

    return p1
.end method

.method static synthetic access$5800()J
    .locals 2

    .prologue
    .line 186
    sget-wide v0, Lcom/android/phone/PhoneApp;->mLastMediaButtonUpTime:J

    return-wide v0
.end method

.method static synthetic access$5802(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    sput-wide p0, Lcom/android/phone/PhoneApp;->mLastMediaButtonUpTime:J

    return-wide p0
.end method

.method static synthetic access$5900(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->reDialLastNumber()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->callNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/phone/PhoneApp;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->notifyRadioTimezone()V

    return-void
.end method

.method static synthetic access$6402(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->imsRegistered:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/phone/PhoneApp;->timer:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$CbQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public static assetSwitcher(Landroid/content/res/Resources;Z)V
    .locals 24
    .parameter "res"
    .parameter "naviModeOn"

    .prologue
    .line 6321
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 6323
    .local v20, conf:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 6325
    .local v21, dm:Landroid/util/DisplayMetrics;
    const/4 v5, 0x0

    .line 6326
    .local v5, locale:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_0

    .line 6327
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 6328
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6333
    :cond_0
    move-object/from16 v0, v21

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v3, v4, :cond_2

    .line 6334
    move-object/from16 v0, v21

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6335
    .local v12, width:I
    move-object/from16 v0, v21

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6341
    .local v13, height:I
    :goto_0
    move-object/from16 v0, v20

    iget v10, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 6342
    .local v10, keyboardHidden:I
    const/4 v3, 0x1

    if-ne v10, v3, :cond_1

    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6344
    const/4 v10, 0x3

    .line 6347
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 6348
    .local v2, assetManager:Landroid/content/res/AssetManager;
    if-eqz p1, :cond_4

    .line 6349
    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, v20

    iget v7, v0, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, v21

    iget v8, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit16 v8, v8, 0xa0

    move-object/from16 v0, v20

    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, v20

    iget v11, v0, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, v20

    iget v14, v0, Landroid/content/res/Configuration;->screenLayout:I

    move-object/from16 v0, v20

    iget v15, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v17, v0

    const/16 v18, 0x3

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v19, "REL"

    sget-object v23, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    :goto_1
    add-int v19, v19, v22

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 6366
    :goto_2
    return-void

    .line 6337
    .end local v2           #assetManager:Landroid/content/res/AssetManager;
    .end local v10           #keyboardHidden:I
    .end local v12           #width:I
    .end local v13           #height:I
    :cond_2
    move-object/from16 v0, v21

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6338
    .restart local v12       #width:I
    move-object/from16 v0, v21

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13       #height:I
    goto :goto_0

    .line 6349
    .restart local v2       #assetManager:Landroid/content/res/AssetManager;
    .restart local v10       #keyboardHidden:I
    :cond_3
    const/16 v19, 0x1

    goto :goto_1

    .line 6357
    :cond_4
    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, v20

    iget v7, v0, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, v21

    iget v8, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit16 v8, v8, 0xa0

    move-object/from16 v0, v20

    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, v20

    iget v11, v0, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, v20

    iget v14, v0, Landroid/content/res/Configuration;->screenLayout:I

    move-object/from16 v0, v20

    iget v15, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v19, "REL"

    sget-object v23, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    :goto_3
    add-int v19, v19, v22

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    goto :goto_2

    :cond_5
    const/16 v19, 0x1

    goto :goto_3
.end method

.method public static btDispose()V
    .locals 1

    .prologue
    .line 6151
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6152
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeBeforeRadioTechnologyChange()V

    .line 6154
    :cond_0
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 5802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5803
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5804
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5806
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 5807
    const/4 v0, 0x0

    .line 5809
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 5808
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private callNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 4621
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 4623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4625
    .local v0, intentPhone:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4629
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4632
    :cond_0
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 4635
    return-void
.end method

.method private checkHtcCustomization(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 5681
    const-string v1, "content://customization_settings/SettingTable/application_roaming"

    .line 5683
    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/phone/PhoneApp;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5684
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    if-eqz v0, :cond_0

    .line 5686
    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneApp;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 5688
    :cond_0
    return-void
.end method

.method private checkNaviShowable()V
    .locals 4

    .prologue
    .line 6252
    sget v2, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 6253
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6254
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6255
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput v2, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    .line 6257
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void

    .line 6255
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2416
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2417
    return-object v0
.end method

.method private createHtcIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 5615
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.launcher.action.mode_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5616
    .local v0, htcIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5618
    sget-boolean v1, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v1, :cond_0

    .line 5619
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5620
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5621
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5622
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 5625
    :cond_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5627
    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2428
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2430
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2431
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter "showDialpad"

    .prologue
    .line 2439
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2440
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2441
    return-object v0
.end method

.method private displayWarningDialog()V
    .locals 4

    .prologue
    .line 6235
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6236
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0e019d

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6237
    const v2, 0x7f0e0199

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6238
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6239
    const v2, 0x1040013

    new-instance v3, Lcom/android/phone/PhoneApp$4;

    invoke-direct {v3, p0}, Lcom/android/phone/PhoneApp$4;-><init>(Lcom/android/phone/PhoneApp;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6243
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 6244
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 6245
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6246
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 6248
    return-void
.end method

.method public static dispose()V
    .locals 3

    .prologue
    .line 6127
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;

    if-eqz v1, :cond_0

    .line 6128
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;

    invoke-virtual {v1}, Lcom/android/phone/HtcNBPCDUtil;->dispose()V

    .line 6131
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->dispose(Lcom/android/internal/telephony/Phone;)V

    .line 6132
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 6133
    .local v0, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_2

    .line 6134
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    .line 6135
    const-string v1, "PhoneApp"

    const-string v2, "unregisterForNetworkLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    :cond_1
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 6138
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    .line 6139
    const-string v1, "PhoneApp"

    const-string v2, "unregisterForMmiInitiate and unregisterForMmiInitiate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6140
    :cond_3
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 6141
    sget-object v1, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 6143
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6144
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    sget-object v2, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 6146
    :cond_4
    return-void
.end method

.method public static disposehtcCDMAPhone()V
    .locals 2

    .prologue
    .line 6118
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    if-eqz v0, :cond_0

    .line 6119
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->dispose()V

    .line 6120
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    .line 6121
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 6122
    const-string v0, "PhoneApp"

    const-string v1, "HTC Cdma Phone App dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6124
    :cond_0
    return-void
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2445
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 5752
    const/4 v1, 0x0

    .line 5753
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5798
    :cond_0
    :goto_0
    return-object v2

    .line 5756
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5758
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5759
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 5760
    const-string v0, "PhoneApp"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5763
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 5764
    const-string v0, "PhoneApp"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5768
    :cond_3
    const/4 v7, 0x0

    .line 5769
    goto :goto_0

    .line 5771
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 5772
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 5773
    const-string v0, "PhoneApp"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5775
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5777
    :cond_5
    const/4 v7, 0x0

    .line 5778
    goto :goto_0

    .line 5780
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5781
    const/4 v8, 0x0

    .line 5782
    .local v8, data:[B
    const/4 v6, 0x0

    .line 5785
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 5786
    invoke-direct {p0, v8}, Lcom/android/phone/PhoneApp;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 5791
    if-eqz v7, :cond_8

    .line 5792
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5795
    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_1
    move-object v2, v6

    .line 5798
    goto :goto_0

    .line 5787
    :catch_0
    move-exception v9

    .line 5788
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5789
    const/4 v6, 0x0

    .line 5791
    if-eqz v7, :cond_8

    .line 5792
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5795
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 5791
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_b

    .line 5792
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 5793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5795
    :cond_a
    const/4 v7, 0x0

    :cond_b
    throw v0
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 2382
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method private getMobileDataSettingEnabled()Z
    .locals 1

    .prologue
    .line 4643
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 6260
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6261
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6262
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone$DataState;

    .line 6264
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getOffAlarm()Z
    .locals 2

    .prologue
    .line 6286
    const-string v1, "dev.bootreason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6287
    .local v0, reason:Ljava/lang/String;
    const-string v1, "rtc_alarm"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 2392
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSubsidyLockType(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 5162
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 5171
    :goto_0
    return-void

    .line 5164
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 5167
    .local v1, type:I
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;I)V

    .line 5169
    .local v0, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 4525
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4539
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 4540
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleQueryTTYMode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): Error getting TTY state."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    :goto_0
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_0

    .line 4575
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;

    .line 4578
    :cond_0
    return-void

    .line 4542
    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v4, v5, v6

    .line 4543
    .local v4, ttymode:I
    const-string v5, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleQueryTTYMode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): TTY enable state successfully queried. ttymode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4547
    .local v3, ttyModeChanged:Landroid/content/Intent;
    const-string v7, "ttyEnabled"

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4548
    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 4551
    packed-switch v4, :pswitch_data_0

    .line 4563
    const-string v2, "tty_off"

    .line 4566
    .local v2, audioTtyMode:Ljava/lang/String;
    :goto_2
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4567
    .local v1, audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tty_mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 4547
    goto :goto_1

    .line 4553
    :pswitch_0
    const-string v2, "tty_full"

    .line 4554
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 4556
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :pswitch_1
    const-string v2, "tty_vco"

    .line 4557
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 4559
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :pswitch_2
    const-string v2, "tty_hco"

    .line 4560
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 4551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 4384
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 4386
    .local v2, ss:Landroid/telephony/ServiceState;
    if-eqz v2, :cond_0

    .line 4387
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 4388
    .local v3, state:I
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 4392
    .end local v3           #state:I
    :cond_0
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v4, :cond_5

    .line 4394
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4395
    .local v1, phoneType:I
    if-ne v1, v7, :cond_5

    .line 4397
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_7

    .line 4399
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4401
    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    if-eq v4, v7, :cond_1

    .line 4403
    sput v7, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    .line 4404
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->setNeedShowRoamingOption(Landroid/content/Context;Z)V

    .line 4405
    sput-boolean v9, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    .line 4426
    :cond_1
    :goto_0
    sput v8, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    .line 4427
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    .line 4430
    .local v0, nGsmGlobalOption:I
    if-nez v0, :cond_2

    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    if-ne v4, v8, :cond_2

    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getNeedShowRoamingOption()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4435
    const-string v4, "PhoneApp"

    const-string v5, "triggerRoamingDialog(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->triggerRoamingDialog(Landroid/content/Context;Z)V

    .line 4440
    :cond_2
    if-eq v0, v8, :cond_3

    if-ne v0, v7, :cond_4

    :cond_3
    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    if-ne v4, v8, :cond_4

    sget-boolean v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4446
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "triggerRoamingDialog(true):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->triggerAllowDialog(Landroid/content/Context;Z)V

    .line 4451
    :cond_4
    if-ne v0, v8, :cond_5

    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getNeedAutoSetDeny()Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    if-ne v4, v7, :cond_5

    .line 4455
    const-string v4, "PhoneApp"

    const-string v5, "GSM_HOME_NETWORK and GLOBAL_ROAMING_THIS_TRIPS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->setNeedAutoSetDeny(Landroid/content/Context;Z)V

    .line 4457
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4, v9}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    .line 4463
    .end local v0           #nGsmGlobalOption:I
    .end local v1           #phoneType:I
    :cond_5
    return-void

    .line 4410
    .restart local v1       #phoneType:I
    :cond_6
    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    if-eq v4, v8, :cond_1

    .line 4412
    sput v8, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    .line 4413
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->setNeedAutoSetDeny(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 4417
    :cond_7
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4419
    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    if-eq v4, v5, :cond_1

    .line 4421
    sput v5, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    .line 4422
    sput-boolean v9, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    goto/16 :goto_0
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 4581
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4583
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 4584
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 4585
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 4596
    return-void
.end method

.method private inflateLayoutCache()V
    .locals 4

    .prologue
    .line 5350
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5351
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/tracker/ObjectTracker;->setKey(Ljava/lang/Object;)V

    .line 5356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPreloadConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5357
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mPreloadInCallScreen:Landroid/view/View;

    .line 5358
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mPreloadCallCard:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5363
    :goto_0
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5364
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/tracker/ObjectTracker;->visit(Ljava/lang/Object;)V

    .line 5367
    :cond_1
    return-void

    .line 5359
    :catch_0
    move-exception v0

    .line 5360
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateLayoutCache(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initForNewRadioTechnology()V
    .locals 4

    .prologue
    .line 3319
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 3320
    const-string v1, "PhoneApp"

    const-string v2, "initForNewRadioTechnology..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3325
    new-instance v1, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v1}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 3326
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 3328
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3331
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_2

    .line 3332
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 3334
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v1, :cond_3

    .line 3335
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 3337
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v1, :cond_4

    .line 3338
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 3340
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v1, :cond_5

    .line 3341
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 3347
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    if-nez v1, :cond_6

    .line 3348
    new-instance v1, Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/HtcCdmaPhoneApp;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    .line 3356
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 3357
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 3363
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_7

    .line 3364
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 3368
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 3369
    .local v0, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_9

    .line 3370
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_8

    .line 3371
    const-string v1, "PhoneApp"

    const-string v2, "Update registration for ICC status..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3376
    :cond_9
    return-void

    .line 3353
    .end local v0           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_0
.end method

.method private isNetworkListAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5510
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_selection"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPSensorEnabled()Z
    .locals 3

    .prologue
    .line 5278
    sget-boolean v1, Lcom/android/phone/PhoneApp;->mProximityEnable:Z

    if-eqz v1, :cond_0

    const-string v0, "true"

    .line 5279
    .local v0, enable:Ljava/lang/String;
    :goto_0
    const-string v1, "gsm.proximity.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mProximityEnable:Z

    .line 5280
    sget-boolean v1, Lcom/android/phone/PhoneApp;->mProximityEnable:Z

    return v1

    .line 5278
    .end local v0           #enable:Ljava/lang/String;
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 6316
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6317
    :cond_0
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6048
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    if-eqz p2, :cond_3

    .line 6049
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    .line 6050
    const-string v3, "PhoneApp"

    const-string v4, "error while querying available networks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->delayTime(I)V

    .line 6080
    :cond_1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v3, v4}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 6081
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_2

    .line 6082
    const-string v3, "PhoneApp"

    const-string v4, "stopNetworkQuery"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6085
    :cond_2
    :goto_1
    return-void

    .line 6055
    :cond_3
    if-eqz p1, :cond_1

    .line 6056
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mOperatorInfoList:Ljava/util/List;

    .line 6057
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6058
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6059
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6060
    .local v1, mNetwork:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_4

    .line 6061
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto or manual"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6062
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6063
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkListDialog;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6065
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6066
    const/high16 v3, 0x1880

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6071
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 6072
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    .line 6075
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mNetwork:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->isFromTimer:Z

    goto :goto_0

    .line 6068
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #mNetwork:Ljava/lang/String;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_6
    const/high16 v3, 0x1800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 6083
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mNetwork:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notifyHACStatus(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 5497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HAC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5498
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5499
    const-string v2, "enabled"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5500
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5501
    return-void

    .line 5499
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyRadioTimezone()V
    .locals 6

    .prologue
    .line 5327
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 5328
    .local v3, zone:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 5329
    .local v2, offset:I
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 5330
    .local v1, now:Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 5331
    .local v0, inDST:Z
    if-eqz v0, :cond_0

    .line 5332
    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v2, v4

    .line 5334
    :cond_0
    div-int/lit16 v2, v2, 0x3e8

    .line 5335
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    if-lez v2, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4, v2}, Lcom/android/phone/PhoneInterfaceManager;->setTimeZone(ZI)V

    .line 5336
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneApp"

    const-string v5, "notifyRadioTimezone"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    :cond_1
    return-void

    .line 5335
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static notifyWifiFullMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "on"

    .prologue
    .line 6269
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 6270
    .local v0, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v0, p1}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/net/wifi/WifiManager;Z)V

    .line 6271
    return-void
.end method

.method static notifyWifiFullMode(Landroid/net/wifi/WifiManager;Z)V
    .locals 3
    .parameter "wifiMgr"
    .parameter "on"

    .prologue
    .line 6274
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifi wifi phone in start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6277
    if-eqz p1, :cond_0

    .line 6282
    :cond_0
    const-string v0, "PhoneApp"

    const-string v1, "notifi wifi phone in end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6283
    return-void
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 3308
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 3310
    .local v0, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 3311
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3312
    iput-object v3, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3315
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lcom/htc/widget/HtcAlertDialog;)V

    .line 3316
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3389
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 3390
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3391
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3394
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 3396
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3397
    .local v0, message:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {v2, v1, v0, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3399
    return-void
.end method

.method private onMMLoctaionUpdateError(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 3406
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3407
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3408
    .local v0, cause:I
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 3409
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMLoctaionUpdateError() with cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/PhoneUtils;->displayMMLocationUpdateError(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V

    .line 3412
    .end local v0           #cause:I
    :cond_1
    return-void
.end method

.method private onQuerySDRComplete(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 770
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 772
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v3, -0x1

    .line 773
    .local v3, statusSmartDataRoamingMode:I
    const/4 v2, -0x1

    .line 775
    .local v2, psIndication:I
    const-string v4, "PhoneApp"

    const-string v7, "SDR query complete"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 777
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v6

    .line 780
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v2, v4, v5

    .line 782
    const-string v4, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDR status query done statusSmartDataRoamingMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", psIndication = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-eq v3, v9, :cond_0

    if-ne v3, v5, :cond_3

    :cond_0
    const/16 v4, 0xd

    if-ne v2, v4, :cond_3

    .line 786
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    .line 788
    iget-object v7, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mEventualSDRresult:Z

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    invoke-interface {v7, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 789
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 790
    .local v1, netBusy:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-class v5, Lcom/android/phone/NetworkBusyDialog;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 791
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 815
    .end local v1           #netBusy:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v6

    .line 788
    goto :goto_0

    .line 795
    :cond_3
    if-ne v3, v5, :cond_7

    if-eqz v2, :cond_4

    if-ne v2, v5, :cond_7

    .line 796
    :cond_4
    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mEventualSDRresult:Z

    if-eqz v4, :cond_6

    .line 797
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 798
    if-ne v3, v5, :cond_5

    if-eq v2, v5, :cond_1

    .line 800
    :cond_5
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v9, v5}, Lcom/android/internal/telephony/Phone;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    .line 801
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    goto :goto_1

    .line 804
    :cond_6
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 807
    iput v9, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    goto :goto_1

    .line 809
    :cond_7
    if-ne v3, v5, :cond_1

    const/16 v4, 0x14

    if-ne v2, v4, :cond_1

    .line 810
    const/4 v4, 0x6

    iput v4, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    goto :goto_1

    .line 813
    :cond_8
    const-string v4, "PhoneApp"

    const-string v5, "result exception for smart data roaming query"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 13
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 5691
    const-string v10, "default_roaming"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 5692
    .local v9, roamingList:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 5694
    const-string v5, "plenty_set1"

    .line 5695
    .local v5, key_plenty:Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 5697
    .local v8, roaming:Landroid/os/Bundle;
    const-string v1, "national_roaming"

    .line 5698
    .local v1, KEY_NATIONAL_ROAMING:Ljava/lang/String;
    const-string v0, "data_roaming"

    .line 5706
    .local v0, KEY_DATA_ROAMING:Ljava/lang/String;
    const-string v2, "national_roaming_Blacklist"

    .line 5708
    .local v2, KEY_NATIONAL_ROAMING_BLACK_LIST:Ljava/lang/String;
    const-string v3, ""

    .line 5709
    .local v3, blackList:Ljava/lang/String;
    const-string v10, "gsm.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5711
    .local v6, mccmnc:Ljava/lang/String;
    const-string v10, "national_roaming_Blacklist"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5712
    const-string v10, "national_roaming_Blacklist"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5715
    :cond_0
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "blackList:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; mccmnc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5718
    const-string v7, "1"

    .line 5719
    .local v7, national:Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5720
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5721
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get national:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5725
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "national_roaming_on"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5739
    :goto_0
    const-string v4, "0"

    .line 5740
    .local v4, data:Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5741
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5742
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5743
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_roaming"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5749
    .end local v0           #KEY_DATA_ROAMING:Ljava/lang/String;
    .end local v1           #KEY_NATIONAL_ROAMING:Ljava/lang/String;
    .end local v2           #KEY_NATIONAL_ROAMING_BLACK_LIST:Ljava/lang/String;
    .end local v3           #blackList:Ljava/lang/String;
    .end local v4           #data:Ljava/lang/String;
    .end local v5           #key_plenty:Ljava/lang/String;
    .end local v6           #mccmnc:Ljava/lang/String;
    .end local v7           #national:Ljava/lang/String;
    .end local v8           #roaming:Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 5730
    .restart local v0       #KEY_DATA_ROAMING:Ljava/lang/String;
    .restart local v1       #KEY_NATIONAL_ROAMING:Ljava/lang/String;
    .restart local v2       #KEY_NATIONAL_ROAMING_BLACK_LIST:Ljava/lang/String;
    .restart local v3       #blackList:Ljava/lang/String;
    .restart local v5       #key_plenty:Ljava/lang/String;
    .restart local v6       #mccmnc:Ljava/lang/String;
    .restart local v7       #national:Ljava/lang/String;
    .restart local v8       #roaming:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "national_roaming_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5732
    const-string v10, "PhoneApp"

    const-string v11, "not to enable NATIONAL_ROAMING since the mccmnc is in the blacklist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5736
    :cond_3
    const-string v10, "PhoneApp"

    const-string v11, "Can\'t get national"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5746
    .restart local v4       #data:Ljava/lang/String;
    :cond_4
    const-string v10, "PhoneApp"

    const-string v11, "Can\'t get data"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processSenseVersion()V
    .locals 4

    .prologue
    .line 5480
    :try_start_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Htc_Sense_Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5482
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5487
    :cond_0
    :goto_0
    return-void

    .line 5484
    :catch_0
    move-exception v0

    .line 5485
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/PhoneApp;->mSenseVersion:F

    goto :goto_0
.end method

.method private reDialLastNumber()V
    .locals 0

    .prologue
    .line 4600
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->startQuery()V

    .line 4601
    return-void
.end method

.method private requestOrientation()I
    .locals 2

    .prologue
    .line 6460
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6461
    const/4 v0, 0x4

    .line 6467
    .local v0, orientation:I
    :goto_0
    return v0

    .line 6462
    .end local v0           #orientation:I
    :cond_0
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->hasKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6463
    const/4 v0, 0x5

    .restart local v0       #orientation:I
    goto :goto_0

    .line 6465
    .end local v0           #orientation:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private setHACStatus()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5264
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5265
    .local v0, hac:I
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HAC status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    new-instance v1, Lcom/android/phone/HACSetting;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1, v4, v2}, Lcom/android/phone/HACSetting;-><init>(Lcom/android/internal/telephony/CallManager;Z)V

    .line 5267
    .local v1, hacSetting:Lcom/android/phone/HACSetting;
    if-eqz v1, :cond_0

    .line 5268
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/phone/HACSetting;->toggle(Z)V

    .line 5270
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 5268
    goto :goto_0
.end method

.method private setUmtsTTYStatus()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 5252
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 5253
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5255
    .local v0, ttyMode:I
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UMTS TTY Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    new-instance v1, Lcom/android/phone/TTYSetting;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1, v3}, Lcom/android/phone/TTYSetting;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 5257
    .local v1, ttySetting:Lcom/android/phone/TTYSetting;
    if-eqz v1, :cond_1

    .line 5258
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/phone/TTYSetting;->toggle(Z)V

    .line 5261
    .end local v0           #ttyMode:I
    .end local v1           #ttySetting:Lcom/android/phone/TTYSetting;
    :cond_1
    return-void
.end method

.method private setupScreenOreitation()Z
    .locals 4

    .prologue
    .line 6471
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->requestOrientation()I

    move-result v2

    .line 6472
    .local v2, orientation:I
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6473
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0, v0, v2}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 6475
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private setupScreenOrientaion(Landroid/app/Activity;I)Z
    .locals 1
    .parameter "activity"
    .parameter "orientation"

    .prologue
    .line 6482
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 6483
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6484
    const/4 v0, 0x1

    .line 6486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3552
    sget-object v2, Lcom/android/phone/PhoneApp$6;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 3570
    :cond_0
    :goto_0
    return v0

    .line 3558
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3567
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 3552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCPAServiceNotification(Z)V
    .locals 7
    .parameter "shouldShow"

    .prologue
    const v6, 0x7f0200ba

    .line 6199
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 6200
    const-string v3, "PhoneApp"

    const-string v4, "mNotificationManager is null! rebind it"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 6203
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_2

    .line 6204
    if-eqz p1, :cond_1

    .line 6205
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6206
    .local v0, it:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.HtcAdvancedSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6207
    const/high16 v3, 0x1084

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6211
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 6213
    .local v2, pending:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0e0191

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0e0190

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 6221
    .local v1, notification:Landroid/app/Notification;
    const/16 v3, 0x22

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 6222
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6229
    .end local v0           #it:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #pending:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 6224
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 6227
    :cond_2
    const-string v3, "PhoneApp"

    const-string v4, "mNotificationManager is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showTMORoamingDialog()V
    .locals 3

    .prologue
    .line 6190
    const-string v1, "PhoneApp"

    const-string v2, "receving roaming on event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6192
    .local v0, roaming:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataRoamingDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6193
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6194
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 6195
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    const/16 v1, 0x1f4

    const/16 v4, 0x9b

    const/4 v2, 0x0

    .line 4604
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mQueryHandler:Lcom/android/phone/PhoneApp$QueryHandler;

    if-nez v0, :cond_0

    .line 4605
    new-instance v0, Lcom/android/phone/PhoneApp$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/PhoneApp$QueryHandler;-><init>(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mQueryHandler:Lcom/android/phone/PhoneApp$QueryHandler;

    .line 4607
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mQueryHandler:Lcom/android/phone/PhoneApp$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp$QueryHandler;->cancelOperation(I)V

    .line 4608
    const/4 v0, 0x2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v4, v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v8, 0x1

    .line 4612
    .local v8, bOnlyMO:Z
    :goto_0
    if-eqz v8, :cond_3

    const-string v5, "type=2"

    .line 4613
    .local v5, selection:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mQueryHandler:Lcom/android/phone/PhoneApp$QueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/PhoneApp;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneApp$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4616
    return-void

    .line 4608
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #bOnlyMO:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8       #bOnlyMO:Z
    :cond_3
    move-object v5, v2

    .line 4612
    goto :goto_1
.end method

.method private turnAirplaneModeByAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6293
    const/4 v1, 0x0

    .line 6294
    .local v1, alarmTriggered:Z
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->getOffAlarm()Z

    move-result v1

    .line 6295
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turnAirplaneModeByAlarm():alarmTriggered = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6296
    if-eqz v1, :cond_0

    .line 6297
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6300
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6301
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6302
    .local v0, airplaneIntent:Landroid/content/Intent;
    const/high16 v5, 0x2000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6303
    const-string v5, "state"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6304
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6306
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6307
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 6308
    .local v4, serviceStatus:I
    const-string v5, "networkState"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6309
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6310
    const-string v5, "PhoneApp"

    const-string v6, "turnAirplaneModeByAlarm:turn on airplane mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    .end local v0           #airplaneIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #serviceStatus:I
    :cond_0
    return-void
.end method

.method private updatePokeLock()V
    .locals 5

    .prologue
    .line 2789
    const/4 v1, 0x0

    .line 2790
    .local v1, pokeLockSetting:I
    sget-object v2, Lcom/android/phone/PhoneApp$6;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2826
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v2, :cond_0

    .line 2827
    or-int/lit8 v1, v1, 0x1

    .line 2832
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v4, "PhoneApp"

    invoke-interface {v2, v1, v3, v4}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2836
    :goto_1
    return-void

    .line 2796
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 2797
    goto :goto_0

    .line 2804
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 2805
    goto :goto_0

    .line 2809
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 2810
    goto :goto_0

    .line 2812
    :pswitch_3
    or-int/lit8 v1, v1, 0x20

    .line 2813
    goto :goto_0

    .line 2833
    :catch_0
    move-exception v0

    .line 2834
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2790
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateScreenStateReceiver(Lcom/android/internal/telephony/Phone$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 5841
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, p1, :cond_1

    .line 5842
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    if-eqz v1, :cond_0

    .line 5843
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5844
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    .line 5845
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 5846
    const-string v1, "PhoneApp"

    const-string v2, "unregister screen state receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    :cond_0
    :goto_0
    return-void

    .line 5850
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    if-nez v1, :cond_0

    .line 5851
    new-instance v1, Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    .line 5852
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5853
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5854
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenStateReceiver:Lcom/android/phone/PhoneApp$HtcScreenStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5855
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 5856
    const-string v1, "PhoneApp"

    const-string v2, "register screen state receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin"

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6024
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6025
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mTimerCallback:Lcom/android/phone/PhoneApp$TimerCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6026
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    .line 6027
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 6028
    const-string v0, "PhoneApp"

    const-string v1, "cancelTimer (mTimeout)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6031
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6032
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    .line 6033
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 6034
    const-string v0, "PhoneApp"

    const-string v1, "cancelTimer (mInCorrectTimeout)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6037
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_2

    .line 6038
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 6040
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    .line 6041
    const-string v0, "PhoneApp"

    const-string v1, "stopNetworkQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6044
    :cond_3
    :goto_0
    return-void

    .line 6042
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 4509
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 4511
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 4513
    :cond_1
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 4487
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 4490
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 4491
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    :cond_1
    return-void
.end method

.method public delayTime(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5901
    const-wide/16 v0, 0x7530

    .line 5902
    .local v0, mDelayTimer:J
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5903
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 5906
    .local v2, settingsNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-eq v2, v6, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 5908
    :cond_0
    const-wide/32 v0, 0x13880

    .line 5912
    .end local v2           #settingsNetworkMode:I
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_2

    .line 5913
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..delay timer (mTimerCallback):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5915
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mSimReady:Z

    if-ne v3, v6, :cond_6

    .line 5916
    iput p1, p0, Lcom/android/phone/PhoneApp;->timer:I

    .line 5917
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    .line 5918
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..delay timer, timer index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PhoneApp;->timer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5920
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 5921
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5922
    iput-object v7, p0, Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;

    .line 5923
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_4

    .line 5924
    const-string v3, "PhoneApp"

    const-string v4, "cancelTimer mInCorrectTimeout (mIncorrectTimerCallback)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    :cond_4
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 5927
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mTimerCallback:Lcom/android/phone/PhoneApp$TimerCallback;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5928
    iput-object v7, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    .line 5929
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_5

    .line 5930
    const-string v3, "PhoneApp"

    const-string v4, "cancelTimer mTimeout (mTimerCallback)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    :cond_5
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    .line 5934
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mTimerCallback:Lcom/android/phone/PhoneApp$TimerCallback;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5935
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_6

    .line 5936
    const-string v3, "PhoneApp"

    const-string v4, "..start timer..(mTimerCallback)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    :cond_6
    return-void

    .line 5909
    .restart local v2       #settingsNetworkMode:I
    :cond_7
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 5910
    const-wide/32 v0, 0x30d40

    goto/16 :goto_0
.end method

.method disableStatusBar()V
    .locals 2

    .prologue
    .line 2668
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2669
    const-string v0, "PhoneApp"

    const-string v1, "disable status bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_0
    monitor-enter p0

    .line 2671
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_2

    .line 2672
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 2673
    const-string v0, "PhoneApp"

    const-string v1, "StatusBarManager.DISABLE_EXPAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2676
    :cond_2
    monitor-exit p0

    .line 2677
    return-void

    .line 2676
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissCallScreen()V
    .locals 2

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 2519
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_2

    .line 2525
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2529
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 2531
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 2537
    :cond_1
    :goto_0
    return-void

    .line 2534
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    .line 4498
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 4501
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 4502
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    :cond_1
    return-void
.end method

.method displayCallScreen()V
    .locals 5

    .prologue
    .line 2459
    sget-boolean v1, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_0

    .line 2460
    const-string v1, "PhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2475
    :goto_0
    return-void

    .line 2467
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 2468
    :catch_0
    move-exception v0

    .line 2472
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method displayIncomingScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 6098
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6099
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6100
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 6101
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    .line 6102
    return-void
.end method

.method displaySIMReadyToast()V
    .locals 2

    .prologue
    .line 3462
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3464
    return-void
.end method

.method public doCbQuery()V
    .locals 4

    .prologue
    .line 6390
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mSimReady:Z

    if-nez v1, :cond_0

    .line 6391
    const-string v1, "PhoneApp"

    const-string v2, "doCbQuery return cause of sim not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6433
    :goto_0
    return-void

    .line 6397
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/util/CbsUtils;->setCbSyncCompleted(Z)V

    .line 6400
    const-string v1, "com.android.mms"

    invoke-static {v1}, Lcom/android/phone/util/CbsUtils;->checkPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6401
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isMmsCustomizeInitiated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6402
    const-string v1, "PhoneApp"

    const-string v2, "doCbQuery return cause of Mms customizeInitial not done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6404
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->checkCbsCustomizeInited()V

    goto :goto_0

    .line 6410
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6411
    .local v0, mTime:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/PhoneApp$5;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneApp$5;-><init>(Lcom/android/phone/PhoneApp;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method forceWakeUpScreen()V
    .locals 5

    .prologue
    .line 2922
    monitor-enter p0

    .line 2923
    :try_start_0
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeUpScreen mWakeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2926
    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2932
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 2933
    return-void

    .line 2932
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2929
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method public getCallCard(I)Landroid/view/View;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 5864
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPreloadConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5865
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPreloadCallCard:Landroid/view/View;

    .line 5867
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 743
    :cond_0
    :goto_0
    return v1

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getImsRegistered()Z
    .locals 1

    .prologue
    .line 5676
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->imsRegistered:Z

    return v0
.end method

.method final getInCallScreenInstance()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 6108
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public getIncallScreenLayout(I)Landroid/view/View;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 5877
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPreloadConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5878
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPreloadInCallScreen:Landroid/view/View;

    .line 5880
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getMmiDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method public getNetworkManualModeEnabled()Z
    .locals 5

    .prologue
    .line 722
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 723
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 724
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, networkSelection:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNotifier()Lcom/android/phone/CallNotifier;
    .locals 1

    .prologue
    .line 5605
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    return-object v0
.end method

.method public getOperatorInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6088
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mOperatorInfoList:Ljava/util/List;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getProximitySensorActive()Z
    .locals 5

    .prologue
    .line 6376
    const/4 v1, 0x0

    .line 6378
    .local v1, isPSensorActive:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v2}, Landroid/os/IPowerManager;->getProximitySensorActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6382
    :goto_0
    return v1

    .line 6379
    :catch_0
    move-exception v0

    .line 6380
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneApp.getProximitySensorActive() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method public getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method public getRingtonePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 5196
    const/4 v1, 0x0

    .line 5198
    .local v1, contactInfo:Lcom/android/phone/PhoneApp$ContactInfo;
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mContactInfoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5199
    if-eqz p1, :cond_1

    .line 5200
    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5204
    .local v2, length:I
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    .line 5205
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mContactInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/phone/PhoneApp$ContactInfo;

    move-object v1, v0

    .line 5212
    :goto_0
    if-eqz v1, :cond_1

    .line 5213
    iget-object v4, v1, Lcom/android/phone/PhoneApp$ContactInfo;->mRingtonePath:Ljava/lang/String;

    monitor-exit v5

    .line 5217
    .end local v2           #length:I
    :goto_1
    return-object v4

    .line 5207
    .restart local v2       #length:I
    :cond_0
    add-int/lit8 v4, v2, -0x7

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5209
    .local v3, partialNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mContactInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/phone/PhoneApp$ContactInfo;

    move-object v1, v0

    goto :goto_0

    .line 5217
    .end local v2           #length:I
    .end local v3           #partialNumber:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 5218
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final getSenseVersion()F
    .locals 1

    .prologue
    .line 5490
    iget v0, p0, Lcom/android/phone/PhoneApp;->mSenseVersion:F

    return v0
.end method

.method getSmartDataRoamingState()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    return v0
.end method

.method handleOtaEvents(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2552
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_2

    .line 2557
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    :cond_1
    :goto_0
    return-void

    .line 2562
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2563
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method handleOtaspDisconnect()V
    .locals 2

    .prologue
    .line 2572
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 2577
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :goto_0
    return-void

    .line 2581
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method public hideUSSDRunningDialog()V
    .locals 1

    .prologue
    .line 5416
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 5417
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5420
    :cond_0
    return-void
.end method

.method public isBTAudioOn()Z
    .locals 1

    .prologue
    .line 6439
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 5304
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PhoneApp;->mDockMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    iget v1, p0, Lcom/android/phone/PhoneApp;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/phone/PhoneApp;->mDockMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHandsFreePlugged()Z
    .locals 1

    .prologue
    .line 5291
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isBTAudioOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 3475
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method isKidzone()Z
    .locals 1

    .prologue
    .line 5585
    sget-boolean v0, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsKidzone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaputaNaviForeground()Z
    .locals 3

    .prologue
    .line 5314
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLaputaNaviForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 2

    .prologue
    .line 4466
    const/4 v0, 0x0

    .line 4467
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 4468
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 4472
    :cond_0
    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 4476
    const/4 v0, 0x0

    .line 4477
    .local v0, otaCallEnded:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 4478
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    .line 4482
    :cond_0
    return v0
.end method

.method isScreenOn()Z
    .locals 5

    .prologue
    .line 5428
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v2}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5433
    .local v1, screenOn:Z
    :goto_0
    return v1

    .line 5429
    .end local v1           #screenOn:Z
    :catch_0
    move-exception v0

    .line 5430
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    const/4 v1, 0x0

    .restart local v1       #screenOn:Z
    goto :goto_0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 2505
    const/4 v0, 0x0

    .line 2506
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 2478
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method isSuppServiceRequesting()Z
    .locals 2

    .prologue
    .line 5405
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5406
    const/4 v0, 0x0

    .line 5411
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/util/PhoneStatus;->isSuppServiceRequesting()Z

    move-result v0

    goto :goto_0
.end method

.method isTTYPlugged()Z
    .locals 1

    .prologue
    .line 3485
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z

    return v0
.end method

.method public needToHangupCall(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    .line 5222
    const/4 v1, 0x0

    .line 5224
    .local v1, contactInfo:Lcom/android/phone/PhoneApp$ContactInfo;
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mContactInfoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5225
    if-eqz p1, :cond_0

    .line 5227
    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5231
    .local v2, length:I
    const/4 v4, 0x7

    if-ge v2, v4, :cond_1

    .line 5232
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mContactInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/phone/PhoneApp$ContactInfo;

    move-object v1, v0

    .line 5240
    .end local v2           #length:I
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 5241
    iget-boolean v4, v1, Lcom/android/phone/PhoneApp$ContactInfo;->mSendToVoiceMail:Z

    monitor-exit v5

    .line 5244
    :goto_1
    return v4

    .line 5234
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v4, v2, -0x7

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5236
    .local v3, partialNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mContactInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/phone/PhoneApp$ContactInfo;

    move-object v1, v0

    goto :goto_0

    .line 5244
    .end local v2           #length:I
    .end local v3           #partialNumber:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 5245
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2322
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->setupScreenOreitation()Z

    .line 2331
    invoke-static {}, Lcom/android/phone/theme/ThemeAdapter;->isSkinPackageChanged()Z

    .line 2333
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->assetSwitcher(Landroid/content/res/Resources;Z)V

    .line 2336
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2337
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_1

    .line 2338
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 2343
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2344
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsLandscapeMode:Z

    .line 2350
    :goto_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2353
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2354
    return-void

    .line 2340
    :cond_1
    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0

    .line 2346
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->mIsLandscapeMode:Z

    goto :goto_1
.end method

.method public onCreate()V
    .locals 19

    .prologue
    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1739
    .local v17, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 1748
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mContentResolver:Landroid/content/ContentResolver;

    .line 1749
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->processSenseVersion()V

    .line 1753
    new-instance v2, Lcom/android/phone/PhoneApp$CbQueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/phone/PhoneApp$CbQueryHandler;-><init>(Lcom/android/phone/PhoneApp;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;

    .line 1756
    new-instance v2, Lcom/android/phone/PhoneApp$QueryHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/android/phone/PhoneApp$QueryHandler;-><init>(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mQueryHandler:Lcom/android/phone/PhoneApp$QueryHandler;

    .line 1762
    const-string v2, "ro.ril.enable.sdr"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    .line 1763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_12

    .line 1770
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 1777
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1779
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 1785
    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Landroid/content/Context;)V

    .line 1790
    new-instance v2, Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 1797
    invoke-static/range {p0 .. p0}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    .line 1801
    .local v15, phoneType:I
    const/4 v2, 0x2

    if-ne v15, v2, :cond_0

    .line 1804
    new-instance v2, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v2}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1811
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 1815
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/BluetoothHeadsetService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1824
    :goto_1
    new-instance v2, Lcom/android/phone/Ringer;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 1827
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 1828
    .local v16, pm:Landroid/os/PowerManager;
    const v2, 0x1000001a

    const-string v3, "PhoneApp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1832
    const v2, 0x20000001

    const-string v3, "PhoneApp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1836
    const/4 v2, 0x1

    const-string v3, "PhoneApp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1839
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 1840
    const/16 v2, 0x20

    const-string v3, "PhoneApp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1843
    const-string v2, "gsm.proximity.enable"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/PhoneApp;->mProximityEnable:Z

    .line 1847
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_2

    .line 1848
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: mProximityWakeLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_2
    const-string v2, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1860
    const-string v2, "statusbar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1864
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1871
    new-instance v2, Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v7, Lcom/android/phone/CallLogAsync;

    invoke-direct {v7}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1886
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v2, :cond_3

    .line 1887
    new-instance v2, Lcom/android/phone/HtcNBPCDUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/HtcNBPCDUtil;-><init>(Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;

    .line 1892
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/util/CbsUtils;->registerPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v18

    .line 1897
    .local v18, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v18, :cond_4

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1904
    :cond_4
    const/4 v2, 0x1

    if-eq v15, v2, :cond_5

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_5

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v2, v3, :cond_6

    .line 1908
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1913
    :cond_6
    const/4 v2, 0x1

    if-ne v15, v2, :cond_7

    sget-boolean v2, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v2, :cond_7

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1921
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 1923
    invoke-static {}, Lcom/android/phone/PhoneUtils;->initializePhontUtilsHandler()V

    .line 1928
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x190

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1957
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2bc

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1961
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 1964
    new-instance v12, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v12, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v12, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1967
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1968
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1971
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v2, v3, :cond_9

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_a

    .line 1973
    :cond_9
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1977
    :cond_a
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1978
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1979
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1980
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1981
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1982
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1983
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1984
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v2, :cond_b

    .line 1985
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1987
    :cond_b
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_c

    .line 1988
    const-string v2, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1989
    const-string v2, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1991
    :cond_c
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1993
    const-string v2, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1997
    const-string v2, "android.intent.action.CONTACTS_DB_READY"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1998
    const-string v2, "anddroid.intent.action.CONTACTS_CHANGE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2001
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2002
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2009
    const-string v2, "com.htc.laputa.navi.action.HTCNAVI_FOREGROUND"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2010
    const-string v2, "com.htc.laputa.navi.action.HTCNAVI_BACKGROUND"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2011
    const-string v2, "com.htc.util.contacts.Intent.ACTION_END_CALL"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2015
    const-string v2, "com.htc.phone.callforwarding"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2019
    const-string v2, "com.htc.phone.missedcall.update"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2023
    const-string v2, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2027
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v2, v3, :cond_d

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_d

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v2, v3, :cond_e

    .line 2031
    :cond_d
    const-string v2, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2034
    :cond_e
    const-string v2, "com.htc.intent.action.CHANGE_WIFI_MODE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2037
    const-wide/high16 v2, 0x4008

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2038
    const-string v2, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2043
    :cond_f
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v2, :cond_10

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->InitPreference(Landroid/content/Context;)V

    .line 2046
    const-string v2, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2047
    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2051
    :cond_10
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    if-eqz v2, :cond_11

    .line 2052
    sget-object v2, Lcom/android/phone/PhoneApp;->INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2055
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2060
    new-instance v13, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2067
    .local v13, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e9

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2072
    new-instance v14, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v14, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v14, packageChangeIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2074
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2075
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2076
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2077
    const-string v2, "package"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mHtcReceiver:Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->createHtcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2087
    const v2, 0x7f050024

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 2089
    const v2, 0x7f050002

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/theme/ThemeAdapter;->setApplicationContext(Landroid/content/Context;)V

    .line 2099
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_ENHANCED_PLUS_CODE_DIALING:Z

    if-eqz v2, :cond_12

    .line 2100
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setAppContext(Landroid/content/Context;)V

    .line 2105
    .end local v12           #intentFilter:Landroid/content/IntentFilter;
    .end local v13           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v14           #packageChangeIntentFilter:Landroid/content/IntentFilter;
    .end local v15           #phoneType:I
    .end local v16           #pm:Landroid/os/PowerManager;
    .end local v18           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2106
    new-instance v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v2}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 2107
    new-instance v2, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v2}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 2108
    new-instance v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v2}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 2109
    new-instance v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v2}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 2114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    if-nez v2, :cond_13

    .line 2115
    new-instance v2, Lcom/android/phone/HtcCdmaPhoneApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/HtcCdmaPhoneApp;-><init>(Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    .line 2121
    :cond_13
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 2124
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 2137
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v2, :cond_15

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 2144
    :cond_14
    const-string v2, "PhoneApp"

    const-string v3, "OoO ignore PhoneApp:TTy Init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_15
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/HtcFeatureList;->FEATURE_HEARING_AIDS(I)Z

    move-result v11

    .line 2166
    .local v11, hac_enabled:Z
    if-eqz v11, :cond_16

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hearing_aid"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2170
    .local v10, hac:I
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 2171
    .local v8, audioManager:Landroid/media/AudioManager;
    const-string v3, "HACSetting"

    if-eqz v10, :cond_23

    const-string v2, "ON"

    :goto_3
    invoke-virtual {v8, v3, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    .end local v8           #audioManager:Landroid/media/AudioManager;
    .end local v10           #hac:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2186
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->setUmtsTTYStatus()V

    .line 2194
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->setHACStatus()V

    .line 2199
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkQueryService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2200
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkQueryService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mNetworkListQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/phone/PhoneApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2208
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_selection"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/PhoneApp;->mSimReady:Z

    .line 2227
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v2, v3, :cond_18

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 2229
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/PhoneApp;->mIsLandscapeMode:Z

    .line 2237
    :cond_18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mContactInfoList:Ljava/util/HashMap;

    .line 2242
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->notifyRadioTimezone()V

    .line 2245
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v2, :cond_19

    .line 2246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/WorldPhoneModeSelection;

    .line 2247
    new-instance v2, Lcom/android/phone/HtcWorldPhoneUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/phone/HtcWorldPhoneUtils;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;

    .line 2256
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2258
    const-string v2, "ro.ril.enable.sdr"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x1

    :goto_5
    sput-boolean v2, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    .line 2260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_1a

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2264
    :cond_1a
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PhoneAppHandlerThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mWorkingThread:Landroid/os/HandlerThread;

    .line 2266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2267
    new-instance v2, Lcom/android/phone/PhoneApp$WorkingHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/phone/PhoneApp$WorkingHandler;-><init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/phone/PhoneApp;->mWorkingHandler:Landroid/os/Handler;

    .line 2268
    sget-object v2, Lcom/android/phone/PhoneApp;->mWorkingHandler:Landroid/os/Handler;

    const/16 v3, 0x323

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2271
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x324

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2281
    :cond_1b
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cleanGlow()V

    .line 2285
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2292
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->checkNaviShowable()V

    .line 2295
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_1c

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v2, v3, :cond_1d

    .line 2297
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->turnAirplaneModeByAlarm()V

    .line 2301
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2302
    new-instance v2, Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->imsReceiver:Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;

    .line 2303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->imsReceiver:Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "IMS_REGISTRATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2308
    :cond_1e
    sget-boolean v2, Lcom/android/phone/HtcCtCustomize;->ENABLE:Z

    if-eqz v2, :cond_1f

    .line 2309
    new-instance v2, Lcom/android/phone/HtcCtCustomize;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/HtcCtCustomize;-><init>(Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mCtCustomization:Lcom/android/phone/HtcCtCustomize;

    .line 2316
    :cond_1f
    return-void

    .line 1762
    .end local v11           #hac_enabled:Z
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1818
    .restart local v15       #phoneType:I
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_1

    .line 2146
    .end local v15           #phoneType:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 2155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2171
    .restart local v8       #audioManager:Landroid/media/AudioManager;
    .restart local v10       #hac:I
    .restart local v11       #hac_enabled:Z
    :cond_23
    const-string v2, "OFF"

    goto/16 :goto_3

    .line 2209
    .end local v8           #audioManager:Landroid/media/AudioManager;
    .end local v10           #hac:I
    :catch_0
    move-exception v9

    .line 2210
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "PhoneApp"

    const-string v3, "Failed to set Settings.System.NETWORK_SELECTION"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2258
    .end local v9           #e:Ljava/lang/Exception;
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_5
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2368
    :cond_0
    invoke-static {}, Lcom/android/phone/theme/ThemeAdapter;->clear()V

    .line 2369
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2371
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->unregisterPhoneInstance()V

    .line 2373
    return-void
.end method

.method public orientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 3238
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 3239
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3240
    return-void
.end method

.method pokeUserActivity()V
    .locals 5

    .prologue
    .line 3123
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3127
    :goto_0
    return-void

    .line 3124
    :catch_0
    move-exception v0

    .line 3125
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preventScreenOn(Z)V
    .locals 5
    .parameter "prevent"

    .prologue
    const/16 v4, 0x258

    .line 3077
    if-eqz p1, :cond_0

    .line 3079
    sget-object v1, Lcom/android/phone/PhoneApp;->mWorkingHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3086
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    :goto_1
    return-void

    .line 3081
    :cond_0
    const-string v1, "PhoneApp"

    const-string v2, "remove EVENT_FORCE_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    sget-object v1, Lcom/android/phone/PhoneApp;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3087
    :catch_0
    move-exception v0

    .line 3088
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method proximitySensorModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3291
    invoke-static {}, Lcom/android/phone/PhoneApp;->isPSensorEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3295
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method reenableStatusBar()V
    .locals 2

    .prologue
    .line 2686
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2687
    const-string v0, "PhoneApp"

    const-string v1, "re-enable status bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_0
    monitor-enter p0

    .line 2689
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-lez v0, :cond_3

    .line 2690
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_2

    .line 2691
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 2692
    const-string v0, "PhoneApp"

    const-string v1, "StatusBarManager.DISABLE_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2698
    :cond_2
    :goto_0
    monitor-exit p0

    .line 2699
    return-void

    .line 2696
    :cond_3
    const-string v0, "PhoneApp"

    const-string v1, "mStatusBarDisableCount is already zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2698
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCallManagerPhone()V
    .locals 2

    .prologue
    .line 6161
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 6164
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 6166
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 6167
    .local v0, mCM:Lcom/android/internal/telephony/CallManager;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 6168
    return-void
.end method

.method public registerUiModeObserver(Landroid/app/Activity;)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 6443
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6444
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->setupScreenOreitation()Z

    .line 6445
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method removeMmiDialog(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 2647
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2648
    const-string v0, "PhoneApp"

    const-string v1, "removeMmiDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne v0, p1, :cond_2

    .line 2651
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 2652
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMmiInteractiveDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2656
    :cond_2
    return-void
.end method

.method requestGetSmartDataRoamingStatus(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mEventualSDRresult:Z

    .line 764
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    .line 766
    return-void
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 2
    .parameter "ws"

    .prologue
    .line 2851
    monitor-enter p0

    .line 2852
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_2

    .line 2853
    sget-object v0, Lcom/android/phone/PhoneApp$6;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2873
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2874
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2876
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2877
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2881
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 2883
    :cond_2
    monitor-exit p0

    .line 2884
    return-void

    .line 2857
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2858
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2859
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2865
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2866
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2867
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetDefaultTimeout()V
    .locals 5

    .prologue
    .line 6174
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 6175
    const/4 v1, 0x1

    .line 6181
    .local v1, pokeLockSetting:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v4, "PhoneApp"

    invoke-interface {v2, v1, v3, v4}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6185
    :goto_0
    return-void

    .line 6182
    :catch_0
    move-exception v0

    .line 6183
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 3136
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 3138
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3139
    return-void
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    .line 2487
    return-void
.end method

.method public setCallCard(Landroid/view/View;)V
    .locals 0
    .parameter "callCard"

    .prologue
    .line 5871
    if-eqz p1, :cond_0

    .line 5872
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPreloadCallCard:Landroid/view/View;

    .line 5874
    :cond_0
    return-void
.end method

.method public setFlipForSpeaker(Z)V
    .locals 0
    .parameter "turnSpeakerOn"

    .prologue
    .line 6370
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mFlipForSpeaker:Z

    .line 6371
    return-void
.end method

.method setIgnoreTouchUserActivity(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 3108
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 3109
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 3110
    return-void
.end method

.method public setInCallScreen(Landroid/view/View;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 5889
    if-eqz p1, :cond_0

    .line 5890
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPreloadInCallScreen:Landroid/view/View;

    .line 5892
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2491
    return-void
.end method

.method setKidzone(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 5596
    sput-boolean p1, Lcom/android/phone/PhoneApp;->mIsKidzone:Z

    .line 5597
    return-void
.end method

.method setMmiDialog(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2629
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2630
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMmiInteractiveDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiInteractiveDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    return-void
.end method

.method setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPausedInCallScreenInstance:Lcom/android/phone/InCallScreen;

    .line 701
    return-void
.end method

.method public setPreferCBLanguage()V
    .locals 15

    .prologue
    .line 5005
    const-string v12, "ril.preferred.language"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5006
    .local v7, mLp:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 5007
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 5008
    .local v10, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 5009
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_0

    .line 5010
    const-string v12, "initMsgId"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mLp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5013
    :cond_0
    const-string v12, ":"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 5014
    .local v2, end:I
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 5016
    .local v11, type:Ljava/lang/String;
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_1

    .line 5017
    const-string v12, "initMsgId"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    :cond_1
    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 5022
    .local v6, mEnd:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_6

    .line 5023
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5027
    .local v5, language:Ljava/lang/String;
    :goto_0
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_2

    .line 5028
    const-string v12, "initMsgId"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "language:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    :cond_2
    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5032
    :cond_3
    const/4 v8, 0x0

    .line 5033
    .local v8, mMatch:Z
    const/16 v12, 0xf

    new-array v0, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "de"

    aput-object v13, v0, v12

    const/4 v12, 0x1

    const-string v13, "en"

    aput-object v13, v0, v12

    const/4 v12, 0x2

    const-string v13, "it"

    aput-object v13, v0, v12

    const/4 v12, 0x3

    const-string v13, "fr"

    aput-object v13, v0, v12

    const/4 v12, 0x4

    const-string v13, "es"

    aput-object v13, v0, v12

    const/4 v12, 0x5

    const-string v13, "nl"

    aput-object v13, v0, v12

    const/4 v12, 0x6

    const-string v13, "sc"

    aput-object v13, v0, v12

    const/4 v12, 0x7

    const-string v13, "da"

    aput-object v13, v0, v12

    const/16 v12, 0x8

    const-string v13, "pt"

    aput-object v13, v0, v12

    const/16 v12, 0x9

    const-string v13, "fi"

    aput-object v13, v0, v12

    const/16 v12, 0xa

    const-string v13, "no"

    aput-object v13, v0, v12

    const/16 v12, 0xb

    const-string v13, "el"

    aput-object v13, v0, v12

    const/16 v12, 0xc

    const-string v13, "tr"

    aput-object v13, v0, v12

    const/16 v12, 0xd

    const-string v13, "hu"

    aput-object v13, v0, v12

    const/16 v12, 0xe

    const-string v13, "pl"

    aput-object v13, v0, v12

    .line 5035
    .local v0, LangNum:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v12, 0xf

    if-ge v3, v12, :cond_4

    .line 5036
    aget-object v12, v0, v3

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 5037
    const-string v12, "lang_list"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5038
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5039
    const/4 v8, 0x1

    .line 5043
    :cond_4
    if-nez v8, :cond_5

    .line 5044
    const-string v12, "lang_list"

    const-string v13, "15"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5045
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5065
    .end local v0           #LangNum:[Ljava/lang/String;
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #mEnd:I
    .end local v8           #mMatch:Z
    .end local v11           #type:Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 5025
    .restart local v2       #end:I
    .restart local v6       #mEnd:I
    .restart local v11       #type:Ljava/lang/String;
    :cond_6
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v7, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #language:Ljava/lang/String;
    goto/16 :goto_0

    .line 5035
    .restart local v0       #LangNum:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v8       #mMatch:Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5049
    .end local v0           #LangNum:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v8           #mMatch:Z
    :cond_8
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5050
    .local v4, langnum:I
    const/16 v12, 0xf

    if-le v4, v12, :cond_9

    .line 5051
    const-string v12, "lang_list"

    const-string v13, "15"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5055
    :goto_3
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5056
    .end local v4           #langnum:I
    :catch_0
    move-exception v1

    .line 5057
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v12, "lang_list"

    const-string v13, "15"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5058
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 5054
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #langnum:I
    :cond_9
    :try_start_1
    const-string v12, "lang_list"

    invoke-interface {v10, v12, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 5062
    .end local v2           #end:I
    .end local v4           #langnum:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #mEnd:I
    .end local v11           #type:Ljava/lang/String;
    :cond_a
    const-string v12, "lang_list"

    const-string v13, "15"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5063
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method public setPreloadConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 5885
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPreloadConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5886
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 2598
    return-void
.end method

.method setPukEntryProgressDialog(Lcom/htc/app/HtcProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2615
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2616
    return-void
.end method

.method setRadioSwitch(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mRadioSwitch:Z

    .line 752
    return-void
.end method

.method public setReadyToShowCallScreen(Z)V
    .locals 0
    .parameter "isShowing"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mReadyToShowCallScreen:Z

    .line 716
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 711
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-ne p1, v0, :cond_1

    .line 2771
    :cond_0
    :goto_0
    return-void

    .line 2765
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2769
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 2770
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0
.end method

.method setSmartDataRoamingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 759
    iput p1, p0, Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I

    .line 760
    return-void
.end method

.method setSuppServiceRequesting(Z)V
    .locals 4
    .parameter "requesting"

    .prologue
    const/16 v3, 0x322

    .line 5379
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5394
    :cond_0
    :goto_0
    return-void

    .line 5385
    :cond_1
    invoke-static {p1}, Lcom/android/phone/util/PhoneStatus;->setSuppServiceRequesting(Z)V

    .line 5387
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5388
    if-eqz p1, :cond_2

    .line 5389
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5391
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method setmAutoConnect(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 3581
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mAutoConnect:Z

    .line 3582
    return-void
.end method

.method public setupScreenOrientaion(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 6478
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->requestOrientation()I

    move-result v0

    .line 6479
    .local v0, orientation:I
    invoke-direct {p0, p1, v0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 3500
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method showKeyguard(Z)V
    .locals 1
    .parameter "showLockScreen"

    .prologue
    .line 2719
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setShowKeyguard(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2723
    :goto_0
    return-void

    .line 2721
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method showKeyguardWithAnimation(Z)V
    .locals 1
    .parameter "showLockScreen"

    .prologue
    .line 2730
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->showKeyguardWithAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :goto_0
    return-void

    .line 2732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterUiModeObserver(Landroid/app/Activity;)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 6449
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6450
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6452
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter "forceUiUpdate"

    .prologue
    .line 3515
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 3517
    if-eqz p1, :cond_2

    .line 3520
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 3522
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 3523
    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3528
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3529
    return-void
.end method

.method updateHtcPhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 5835
    sget-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_INCALL_GLOW:Z

    if-eqz v0, :cond_0

    .line 5836
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->updateScreenStateReceiver(Lcom/android/internal/telephony/Phone$State;)V

    .line 5838
    :cond_0
    return-void
.end method

.method public updateInCallScreenTouchUi()V
    .locals 2

    .prologue
    .line 4518
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreenTouchUi ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 4520
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    .line 4522
    :cond_1
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_0

    .line 3248
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 3249
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateHtcPhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 3279
    :cond_0
    return-void
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3170
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3171
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v4

    .line 3191
    :try_start_0
    iget-boolean v5, p0, Lcom/android/phone/PhoneApp;->mFlipForSpeaker:Z

    if-nez v5, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/phone/PhoneApp;->mIsLandscapeMode:Z

    if-eqz v5, :cond_6

    :cond_1
    move v2, v3

    .line 3194
    .local v2, screenOnImmediately:Z
    :goto_0
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_7

    move v1, v3

    .line 3201
    .local v1, hasWaitingCall:Z
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-nez v5, :cond_2

    if-eqz v1, :cond_8

    :cond_2
    if-nez v2, :cond_8

    .line 3206
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3207
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    .line 3208
    const-string v3, "PhoneApp"

    const-string v5, "updateProximitySensorMode: acquiring..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3233
    :cond_4
    :goto_2
    monitor-exit v4

    .line 3235
    .end local v1           #hasWaitingCall:Z
    .end local v2           #screenOnImmediately:Z
    :cond_5
    return-void

    :cond_6
    move v2, v0

    .line 3191
    goto :goto_0

    .restart local v2       #screenOnImmediately:Z
    :cond_7
    move v1, v0

    .line 3194
    goto :goto_1

    .line 3217
    .restart local v1       #hasWaitingCall:Z
    :cond_8
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3218
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_9

    .line 3219
    const-string v5, "PhoneApp"

    const-string v6, "updateProximitySensorMode: releasing..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :cond_9
    if-eqz v2, :cond_a

    .line 3226
    .local v0, flags:I
    :goto_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_2

    .line 3233
    .end local v0           #flags:I
    .end local v1           #hasWaitingCall:Z
    .end local v2           #screenOnImmediately:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #hasWaitingCall:Z
    .restart local v2       #screenOnImmediately:Z
    :cond_a
    move v0, v3

    .line 3224
    goto :goto_3
.end method

.method updateWakeState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2948
    iget-object v9, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 2953
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    .line 2958
    .local v3, isShowingCallScreen:Z
    iget-object v9, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v9

    if-eqz v9, :cond_5

    move v0, v7

    .line 2968
    .local v0, isDialerOpened:Z
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v9, :cond_6

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v4, v7

    .line 2976
    .local v4, isSpeakerInUse:Z
    :goto_1
    sget-boolean v9, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v9, :cond_0

    .line 2977
    const-string v9, "PhoneApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWakeState: callscreen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dialer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", speaker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    :cond_0
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->isCdmaLongestTimout()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_7

    .line 2992
    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->LONGEST:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-eq v9, v10, :cond_1

    .line 2993
    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->LONGEST:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v9, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 2994
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 2996
    :cond_1
    const-string v9, "PhoneApp"

    const-string v10, "Set longest time out"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    iget-object v9, p0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    if-eqz v9, :cond_2

    .line 2998
    iget-object v9, p0, Lcom/android/phone/PhoneApp;->mHtcCdmaPhoneApp:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/HtcCdmaPhoneApp;->processBacklight()V

    .line 3046
    :cond_2
    :goto_2
    sget-object v9, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v9, :cond_d

    move v2, v7

    .line 3047
    .local v2, isRinging:Z
    :goto_3
    iget-object v9, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_e

    move v1, v7

    .line 3055
    .local v1, isDialing:Z
    :goto_4
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    sget-boolean v9, Lcom/android/phone/PhoneApp;->IS_MFG:Z

    if-eqz v9, :cond_f

    :cond_3
    move v5, v7

    .line 3057
    .local v5, keepScreenOn:Z
    :goto_5
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_4

    .line 3058
    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWakeState: keepScreenOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (isRinging "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isDialing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    :cond_4
    if-eqz v5, :cond_10

    sget-object v7, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_6
    invoke-virtual {p0, v7}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 3063
    return-void

    .end local v0           #isDialerOpened:Z
    .end local v1           #isDialing:Z
    .end local v2           #isRinging:Z
    .end local v4           #isSpeakerInUse:Z
    .end local v5           #keepScreenOn:Z
    :cond_5
    move v0, v8

    .line 2958
    goto/16 :goto_0

    .restart local v0       #isDialerOpened:Z
    :cond_6
    move v4, v8

    .line 2968
    goto/16 :goto_1

    .line 3000
    .restart local v4       #isSpeakerInUse:Z
    :cond_7
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->isCdmaLongTimout()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v9, :cond_9

    .line 3003
    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->LONG:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-eq v9, v10, :cond_8

    .line 3004
    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->LONG:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v9, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 3005
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 3007
    :cond_8
    const-string v9, "PhoneApp"

    const-string v10, "Set long time out"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3013
    :cond_9
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v9, :cond_c

    .line 3016
    :cond_a
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->EmergencyBacklight:Z

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    sget-boolean v9, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-eqz v9, :cond_b

    .line 3018
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->resetDefaultTimeout()V

    .line 3019
    const-string v9, "PhoneApp"

    const-string v10, "reset resetDefaultTimeout out"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3021
    :cond_b
    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v9}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    .line 3036
    :cond_c
    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v9}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    :cond_d
    move v2, v8

    .line 3046
    goto/16 :goto_3

    .restart local v2       #isRinging:Z
    :cond_e
    move v1, v8

    .line 3047
    goto/16 :goto_4

    .restart local v1       #isDialing:Z
    :cond_f
    move v5, v8

    .line 3055
    goto/16 :goto_5

    .line 3062
    .restart local v5       #keepScreenOn:Z
    :cond_10
    sget-object v7, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_6
.end method

.method wakeUpScreen()V
    .locals 5

    .prologue
    .line 2891
    monitor-enter p0

    .line 2892
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1

    .line 2893
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2894
    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2902
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 2903
    return-void

    .line 2902
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2898
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method wakeUpScreenWithNoForce()V
    .locals 4

    .prologue
    .line 2906
    monitor-enter p0

    .line 2907
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1

    .line 2908
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2909
    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2911
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2917
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 2918
    return-void

    .line 2917
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2913
    :catch_0
    move-exception v0

    goto :goto_0
.end method
