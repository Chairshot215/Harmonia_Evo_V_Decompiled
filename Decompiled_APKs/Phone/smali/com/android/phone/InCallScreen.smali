.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/view/OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$35;,
        Lcom/android/phone/InCallScreen$DialogClickListener;,
        Lcom/android/phone/InCallScreen$PwdResultReceiver;,
        Lcom/android/phone/InCallScreen$LockScreenPersonInfo;,
        Lcom/android/phone/InCallScreen$CallerData;,
        Lcom/android/phone/InCallScreen$PhoneSpeekControl;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;,
        Lcom/android/phone/InCallScreen$InCallScreenActionType;
    }
.end annotation


# static fields
.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field static final ACTIVITY_RESULT_NAMEID:I = 0x1

.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field private static final ALLOW_SCREEN_ON:I = 0x70

.field static final AUTO_RETRY_OFF:I = 0x0

.field static final AUTO_RETRY_ON:I = 0x1

.field private static final BLUETOOTH_STATE_CHANGED:I = 0xc9

.field public static final CALENDAR_EVENT:Z = true

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final CONFIRM_BEFORE_TURN_ON_RADIO:Z = false

.field public static final CS_PREFERRED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEBUG_TAG:Ljava/lang/String; = "PHONE/InCallScreen_Debug"

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DISMISS_MENU:I = 0x6f

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x79

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x75

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x78

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field private static final HTC_MSG_ACCEPTE_CALL_KEY:I = 0x325

.field private static final HTC_MSG_DELAY_ON_RESUME:I = 0x329

.field private static final HTC_MSG_DISMISS_SAVE_TO_CONTACT_DIALOG:I = 0x322

.field private static final HTC_MSG_END_CALL_FINISH_IMMEDIATELY:I = 0x320

.field private static final HTC_MSG_FINISH_WHEN_IDLE:I = 0x326

.field private static final HTC_MSG_HANGUP_FOR_COMPOSING_REJECT_MESSAGE:I = 0x32b

.field private static final HTC_MSG_PLACE_CALL:I = 0x324

.field private static final HTC_MSG_RELEASE_ALL_CALL_RESULT:I = 0x327

.field private static final HTC_MSG_RESET_TOAST:I = 0x32a

.field private static final HTC_MSG_RETRY_TO_ANSWER_CALL:I = 0x323

.field private static final HTC_MSG_SUPP_SERVICE_NOTIFICATION:I = 0x321

.field private static final HTC_MSG_TOAST:I = 0x328

.field public static final IDLE:Ljava/lang/String; = "IDLE"

.field public static final IMS_CALL_FAILED:Ljava/lang/String; = "IMS_CALL_FAILED"

.field public static final IMS_PREFERRED:I = 0x1

.field public static final INCALL_SCREEN_PANEL_MENU:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5

.field private static final MENU_DISMISS_DELAY:I = 0x3e8

.field static final MESSAGE_TYPE_COMPOSER:I = 0x0

.field static final MESSAGE_TYPE_DIRECTLY:I = 0x1

.field private static final MSG_DISMISS_HBPCD_RETRY_DIALOG:I = 0xd2

.field private static final MSG_REMOVE_BG:I = 0x7

.field public static final NOT_INITIALIZED:Ljava/lang/String; = "NOT_INITIALIZED"

.field private static final PAUSE_PROMPT_DIALOG_TIMEOUT:I = 0x7d0

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x73

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field private static final PROVIDER_OVERLAY_TIMEOUT:I = 0x1388

.field static final REQUEST_ANSWER:I = 0x1

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x77

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x76

.field static final REQUEST_DECLINE:I = 0x2

.field static final REQUEST_DEFER:I = 0x3

.field static final REQUEST_REJECT_MSG:I = 0x4

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x72

.field private static final REQUEST_UPDATE_TOUCH_UI:I = 0x7a

.field private static final RESULT_CODE_PWD_CONFIRM:I = 0x3f3

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

#the value of this static final field might be set in the static constructor
.field private static final SWAP_CMD_BAR_ICON:Z = false

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x74

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0x7d0

.field private static final TIMEOUT_RESET_TOAST_LONG:I = 0x3a98

.field private static final TIMEOUT_RESET_TOAST_SHORT:I = 0x1388

.field private static final TIME_OUT_HBPCD_RETRY_DIALOG:I = 0x1770

#the value of this static final field might be set in the static constructor
.field private static final TIME_OUT_SAVE_TO_CONTACT_DIALOG:I = 0x0

.field private static final TOUCH_LOCK_DELAY_DEFAULT:I = 0x1770

.field private static final TOUCH_LOCK_TIMER:I = 0x71

.field private static final VDBG:Z = false

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field private static isOTAUnsuccess:Z

.field private static isOnStop:Z

.field private static mIsLastModeDock:Z

.field private static mOTAToneLock:Ljava/lang/Object;


# instance fields
.field public deferCall:Z

.field isReinflatedLayoutByAssetChanged:Z

.field isReinflatedLayoutByOrientation:Z

.field private mAcceptCallKey:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAll:Landroid/view/ViewGroup;

.field private mAllFrameBkResId:I

.field mAudioSrcIconId:I

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBgRemoved:Z

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCSPScallManageDialog:Landroid/app/Dialog;

.field private mCallCard:Lcom/android/phone/CallCard;

.field mCallKeyLongPressed:Z

.field mCallKeyPressed:Z

.field mCallLongPress:Ljava/lang/Runnable;

.field private mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mCallerData:Lcom/android/phone/InCallScreen$CallerData;

.field private mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private mDTMFDisplay:Landroid/widget/EditText;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDismissCSPSCallDialog:Z

.field private mDisplayingEndCallHandler:Z

.field mDragedupToDeclineCall:Z

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeShadow:Landroid/widget/TextView;

.field private mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEndCSCall:Landroid/widget/Button;

.field private mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEndSkypeResumeCSCall:Landroid/widget/Button;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field public mHasDialedECC:Z

.field mHasFocus:Z

.field private mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

.field private mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

.field private mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

.field private mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mInCallStatus:Landroid/widget/TextView;

.field private mInCallStatusShadow:Landroid/widget/TextView;

.field private mInCallStatusViewGroup:Landroid/view/ViewGroup;

.field private mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

.field private mIsDestroyed:Z

.field private mIsEmergencyCall:Z

.field private mIsForegroundActivity:Z

.field private mIsFromEmergencyDialer:Z

.field private mIsWindowFocus:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mNonCallStatus:Landroid/widget/TextView;

.field private mNonCallStatusShadow:Landroid/widget/TextView;

.field mOnNewIntent:Landroid/content/Intent;

.field private mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field private mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

.field private mOperatorNameShadow:Landroid/widget/TextView;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mPendingRequest:Lcom/android/phone/util/PendingRequest;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPowerKeyToRejectCall:Z

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mRoamingWarning:Landroid/view/View;

.field private mSendRejectMsgWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowingErrorDialog:Z

.field private mSkypeCSFrame:Landroid/view/ViewGroup;

.field private mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mTaskBar:Lcom/android/phone/widget/ButtonGroup;

.field private mTextForRoamingWarning:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    sput-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 297
    invoke-static {}, Lcom/android/phone/util/Constants;->calculateSaveContactTimeout()I

    move-result v0

    sput v0, Lcom/android/phone/InCallScreen;->TIME_OUT_SAVE_TO_CONTACT_DIALOG:I

    .line 303
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v0, 0x9b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreen;->CONFIRM_BEFORE_TURN_ON_RADIO:Z

    .line 326
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    .line 334
    sput-boolean v1, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    .line 336
    sput-boolean v1, Lcom/android/phone/InCallScreen;->isOnStop:Z

    .line 685
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    return-void

    :cond_1
    move v0, v1

    .line 303
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 312
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsWindowFocus:Z

    .line 316
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 321
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 327
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    .line 328
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    .line 340
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->deferCall:Z

    .line 347
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mHasDialedECC:Z

    .line 350
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 567
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 616
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 617
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 619
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    .line 637
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 638
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 641
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    .line 647
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 650
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPowerKeyToRejectCall:Z

    .line 655
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/phone/InCallScreen;->mAllFrameBkResId:I

    .line 673
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowingErrorDialog:Z

    .line 676
    const v0, 0x2080a46

    iput v0, p0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    .line 691
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 998
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1329
    new-instance v0, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 4376
    new-instance v0, Lcom/android/phone/InCallScreen$CallerData;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$CallerData;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    .line 8283
    new-instance v0, Lcom/android/phone/InCallScreen$29;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$29;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLongPress:Ljava/lang/Runnable;

    .line 9589
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;

    .line 9989
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->processAllowScreenOn()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/HtcIncallControlPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    sput-boolean p0, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    return p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/phone/InCallScreen;->isOnStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$CallerData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetUiWhenOnResume()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/InCallScreen;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleHtcMsg(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/InCallScreen;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateCdmaOperatorInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateOperatorName()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateCdmaRoamingIcon()V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetArcControl()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->incomingCallLockScreenAnswerCall()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->incomingCallLockScreenDeclineCall()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/phone/InCallScreen;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardResult(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->processPendingRequest()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    return-void
.end method

.method static synthetic access$5902(Lcom/android/phone/InCallScreen;Lcom/android/phone/util/PendingRequest;)Lcom/android/phone/util/PendingRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 4945
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 4946
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4947
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4949
    :cond_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4950
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4954
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4955
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4956
    return-void
.end method

.method private attachMOInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 9933
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9934
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 9939
    .local v1, mo:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9941
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9942
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 9943
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachMOInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9944
    :cond_0
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/Connection;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9948
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #mo:Lcom/android/internal/telephony/Call;
    :cond_1
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 5788
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 5790
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5799
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5801
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5802
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5806
    :cond_2
    return-void
.end method

.method private callWaitingDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 9958
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 9960
    .local v2, handlerView:Landroid/view/View;
    new-instance v3, Lcom/android/phone/InCallScreen$DialogClickListener;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$DialogClickListener;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 9962
    .local v3, listener:Landroid/view/View$OnClickListener;
    const v5, 0x7f08007c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 9963
    .local v4, resumeCallButton:Landroid/widget/Button;
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9964
    const v5, 0x7f08007d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9965
    .local v1, endCallButton:Landroid/widget/Button;
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9967
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9968
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f0e00cf

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9969
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9970
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9971
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9972
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9974
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    .line 9975
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/phone/InCallScreen$34;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallScreen$34;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9985
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 9986
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z

    .line 9987
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 4859
    packed-switch p1, :pswitch_data_0

    .line 4889
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4862
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4880
    :goto_0
    return-object v0

    .line 4867
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4880
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 8378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    move v9, v0

    .line 8446
    :cond_1
    :goto_0
    return v9

    .line 8382
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    move v9, v0

    .line 8383
    goto :goto_0

    .line 8386
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 8388
    .local v7, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_6

    .line 8390
    :cond_4
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "checkIsOtaCall: OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v9, v0

    .line 8391
    goto :goto_0

    .line 8394
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 8395
    .local v6, action:Ljava/lang/String;
    const/4 v9, 0x0

    .line 8396
    .local v9, isOtaCall:Z
    const-string v1, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8397
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "checkIsOtaCall action = ACTION_PERFORM_CDMA_PROVISIONING"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8398
    :cond_7
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_9

    .line 8399
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "checkIsOtaCall: ACTION_PERFORM_CDMA_PROVISIONING is not handled before"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8400
    :cond_8
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 8401
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 8404
    :cond_9
    const/4 v9, 0x1

    .line 8440
    :cond_a
    :goto_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall: isOtaCall ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8441
    :cond_b
    if-eqz v9, :cond_1

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 8442
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "checkIsOtaCall: creating OtaUtils..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8443
    :cond_c
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    goto/16 :goto_0

    .line 8405
    :cond_d
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8409
    :cond_e
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 8414
    .local v11, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8415
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8416
    :cond_f
    const/4 v9, 0x1

    goto :goto_1

    .line 8410
    .end local v11           #number:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 8411
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_10
    move v9, v0

    .line 8412
    goto/16 :goto_0

    .line 8418
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_11
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8419
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_12

    const-string v1, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8420
    :cond_12
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v10

    .line 8421
    .local v10, isRingingCall:Z
    if-eqz v10, :cond_14

    .line 8422
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_13
    move v9, v0

    .line 8423
    goto/16 :goto_0

    .line 8424
    :cond_14
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v1, :cond_15

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v1, :cond_17

    .line 8428
    :cond_15
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8429
    :cond_16
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 8431
    :cond_17
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_a

    .line 8433
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_18

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8435
    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 8661
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 8662
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 8663
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 8664
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 8665
    return-void
.end method

.method private clearPwdResultReceiver()V
    .locals 1

    .prologue
    .line 9917
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    if-eqz v0, :cond_0

    .line 9918
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    .line 9921
    :cond_0
    return-void
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 3970
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3971
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3972
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3974
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3978
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3979
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3980
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3981
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e026e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3983
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3985
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 3986
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3987
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3988
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3989
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3990
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 3991
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3993
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3996
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3998
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4000
    return-object v3
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 5

    .prologue
    .line 4984
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4996
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4999
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5009
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v1, :cond_8

    .line 5016
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5018
    const-string v1, "IncallScreen"

    const-string v2, "delayedCleanupAfterDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 5020
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x322

    sget v3, Lcom/android/phone/InCallScreen;->TIME_OUT_SAVE_TO_CONTACT_DIALOG:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5030
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5032
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5033
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 5037
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v1, :cond_6

    .line 5039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5042
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5083
    :cond_5
    :goto_0
    return-void

    .line 5048
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5050
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 5058
    :cond_8
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v1, :cond_9

    .line 5060
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_5

    .line 5063
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 5068
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5070
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 5078
    :cond_b
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5079
    :cond_c
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private disableLockScreenControlIncomingCall()V
    .locals 2

    .prologue
    .line 7531
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7533
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7534
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 7535
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 7537
    :cond_0
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5816
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5823
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 5826
    .local v1, needFinishReuqest:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    .line 5828
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5829
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5831
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 5833
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 5834
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5836
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    .line 5838
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5839
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5841
    const/4 v1, 0x1

    .line 5844
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_3

    .line 5846
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5847
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5849
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_4

    .line 5851
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5852
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5854
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_5

    .line 5856
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5857
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5865
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_7

    .line 5866
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5867
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5868
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5871
    :cond_7
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_9

    .line 5872
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "- DISMISSING mCSPScallManageDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5873
    :cond_8
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 5874
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    .line 5877
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->dismissHtcDialogs(Z)V

    .line 5879
    return-void
.end method

.method private dismissHBPCDDialogIfNeeded()V
    .locals 2

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 9719
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9720
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 9721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 9723
    :cond_0
    return-void
.end method

.method private dismissHtcDialogs(Z)V
    .locals 5
    .parameter "needFinishReuqest"

    .prologue
    const/4 v4, 0x0

    .line 5885
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5886
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5887
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5888
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5892
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5893
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 5894
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5895
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5900
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5901
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x326

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5904
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v0, :cond_3

    .line 5905
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 5909
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    .line 5910
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5911
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5913
    :cond_4
    return-void
.end method

.method private dismissPromptDialogs()V
    .locals 1

    .prologue
    .line 5917
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 5919
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5922
    :cond_0
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 4959
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 4960
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4963
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4964
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4965
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 4

    .prologue
    .line 6588
    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6594
    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6595
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2

    .line 6596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6597
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 6598
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 6600
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6601
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6602
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6612
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-void

    .line 6607
    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6610
    :cond_2
    const-string v2, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findViewAndInitLayout()V
    .locals 1

    .prologue
    .line 8910
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTitleBar()V

    .line 8914
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 8924
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 8925
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->destroy()V

    .line 8927
    :cond_0
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 8929
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 8930
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V

    .line 8935
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8936
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 8939
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initIncomingCommandBar()V

    .line 8940
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTaskBar()V

    .line 8942
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initIncallControlPanel()V

    .line 8957
    return-void
.end method

.method private getActionTypeForCaller(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/InCallScreen$InCallScreenActionType;
    .locals 1
    .parameter "ci"

    .prologue
    .line 6834
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;->VIEW_CONTACT:Lcom/android/phone/InCallScreen$InCallScreenActionType;

    return-object v0
.end method

.method private final getContactPhoto(J)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "contactId"

    .prologue
    .line 8533
    const/4 v2, 0x0

    .line 8534
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 8535
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 8538
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 8544
    :goto_0
    if-eqz v2, :cond_0

    .line 8545
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8546
    if-eqz v0, :cond_0

    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 8550
    :cond_0
    if-nez v0, :cond_1

    .line 8551
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Photo;->getContactPhoto(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8554
    .local v3, photoData:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 8555
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8558
    .end local v3           #photoData:Landroid/graphics/Bitmap;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0

    .line 8540
    :catch_0
    move-exception v1

    .line 8541
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "InCallScreen"

    const-string v6, "Error opening photo input stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getEndCallHandlDialog(JLjava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 14
    .parameter "userId"
    .parameter "number"

    .prologue
    .line 6992
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "end call"

    const-string v12, "get end call"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6994
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6995
    const/4 v3, 0x0

    .line 7096
    :goto_0
    return-object v3

    .line 6998
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7000
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030027

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 7003
    .local v4, handlerView:Landroid/view/View;
    const v11, 0x7f0800d4

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 7005
    .local v6, noRemind:Landroid/widget/CheckBox;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 7008
    .local v8, pref:Landroid/content/SharedPreferences;
    const-string v11, "pref_key_save_contact"

    const/4 v12, 0x1

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 7010
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7015
    :goto_1
    new-instance v5, Lcom/android/phone/InCallScreen$19;

    move-object/from16 v0, p3

    invoke-direct {v5, p0, v0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7054
    .local v5, listener:Landroid/view/View$OnClickListener;
    const v11, 0x7f0800ce

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 7055
    .local v7, numberView:Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7057
    const v11, 0x7f0800cf

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 7058
    .local v10, saveNew:Landroid/widget/Button;
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7059
    const v11, 0x7f0800d0

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 7060
    .local v9, saveExist:Landroid/widget/Button;
    invoke-virtual {v9, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7061
    const v11, 0x7f0800d1

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 7062
    .local v2, cancel:Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7064
    const v11, 0x7f0e0062

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7065
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7066
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7067
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7068
    new-instance v11, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v11, p0}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7079
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7081
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 7082
    .local v3, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v11, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v11, p0, v6}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v11}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 7012
    .end local v2           #cancel:Landroid/widget/Button;
    .end local v3           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #listener:Landroid/view/View$OnClickListener;
    .end local v7           #numberView:Landroid/widget/TextView;
    .end local v9           #saveExist:Landroid/widget/Button;
    .end local v10           #saveNew:Landroid/widget/Button;
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 4327
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4329
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4330
    const/4 v1, 0x0

    .line 4364
    :goto_0
    return-object v1

    .line 4337
    :cond_0
    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4338
    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4342
    .local v1, actualNumberToDial:Ljava/lang/String;
    goto :goto_0

    .line 4346
    .end local v1           #actualNumberToDial:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4348
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4352
    :cond_2
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "isEnableRoamingAssist"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4356
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4357
    .local v2, sNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 4358
    goto :goto_0

    .line 4364
    .end local v2           #sNumber:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getNBPCDNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"
    .parameter "personId"

    .prologue
    .line 9768
    move-object v1, p1

    .line 9769
    .local v1, result:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v2, :cond_0

    .line 9770
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->isHBPCDRetryDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getHBPCDString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9771
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryDialing(Z)V

    .line 9772
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NBPCD use HBPCD retry number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9793
    :cond_0
    :goto_0
    return-object v1

    .line 9775
    :cond_1
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->setNoConversion()V

    .line 9779
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9781
    const/4 v0, 0x1

    .line 9782
    .local v0, mIsContact:Z
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9784
    const/4 v0, 0x0

    .line 9790
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/phone/HtcNBPCDUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9788
    .end local v0           #mIsContact:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #mIsContact:Z
    goto :goto_1
.end method

.method private getRetryHBPCDDialog(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 11
    .parameter "number_HBPCD"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 9626
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_0

    .line 9627
    const-string v8, "end call"

    const-string v9, "get end call"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9629
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9713
    :goto_0
    return-object v2

    .line 9633
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9635
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03003c

    invoke-virtual {v8, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 9638
    .local v3, handlerView:Landroid/view/View;
    new-instance v4, Lcom/android/phone/InCallScreen$32;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$32;-><init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9683
    .local v4, listener:Landroid/view/View$OnClickListener;
    const v8, 0x7f0800f8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9685
    .local v5, numberView:Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9687
    const v8, 0x7f0800f9

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 9689
    .local v6, retryHBPCD:Landroid/widget/Button;
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9690
    const v8, 0x7f0800fa

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9692
    .local v1, cancelHBPCD:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9693
    const v8, 0x7f0800fb

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 9695
    .local v7, settingHBPCD:Landroid/widget/Button;
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9697
    const v8, 0x7f0e0143

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9698
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9699
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9700
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9702
    new-instance v8, Lcom/android/phone/InCallScreen$33;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$33;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9712
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 9713
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private getTagForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    .locals 6
    .parameter "conn"
    .parameter "tag"

    .prologue
    const/4 v5, 0x1

    .line 7727
    if-nez p1, :cond_0

    .line 7728
    const v3, 0x7f080042

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7729
    const v3, 0x7f0e0489

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7730
    const v3, 0x7f0e025e

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    .line 7760
    :goto_0
    return-object p2

    .line 7734
    :cond_0
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 7737
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v2, 0x0

    .line 7739
    .local v2, showSpIcon:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCdmaCallsOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 7741
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 7745
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->getActionTypeForCaller(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/InCallScreen$InCallScreenActionType;

    move-result-object v0

    .line 7746
    .local v0, actionType:Lcom/android/phone/InCallScreen$InCallScreenActionType;
    sget-object v3, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenActionType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 7750
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_TASKBAR_RIGHT_VIEW_SP:Z

    if-ne v3, v5, :cond_2

    if-ne v2, v5, :cond_2

    .line 7752
    const v3, 0x7f080028

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7753
    const v3, 0x7f02000d

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    goto :goto_0

    .line 7757
    :cond_2
    const v3, 0x7f080047

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7758
    const v3, 0x7f0e048a

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7759
    const v3, 0x7f0e01c4

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto :goto_0
.end method

.method private getViewOrInsertForConnection(Lcom/android/internal/telephony/Connection;)Landroid/content/Intent;
    .locals 7
    .parameter "conn"

    .prologue
    .line 6806
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 6808
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 6810
    .local v1, result:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 6811
    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/util/contacts/PhoneUtils;->getViewContactIntent(JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6812
    if-nez v1, :cond_0

    .line 6813
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call info from caller info error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6815
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6816
    if-nez v1, :cond_0

    .line 6817
    const-string v2, "InCallScreen"

    const-string v3, "no address in connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    :cond_0
    :goto_0
    return-object v1

    .line 6820
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6821
    if-nez v1, :cond_0

    .line 6822
    const-string v2, "InCallScreen"

    const-string v3, "no dialing in connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6827
    :cond_2
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no caller information in conn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBackKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2525
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2526
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->muteRingingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2539
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2530
    goto :goto_0

    .line 2534
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2535
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2539
    goto :goto_0
.end method

.method private handleDeferBtn()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 9291
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "InCallScreen"

    const-string v6, "defer call"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9293
    :cond_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 9294
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9297
    const/4 v1, 0x0

    .line 9299
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 9300
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 9301
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 9308
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 9311
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/util/CallDeferUtils;->launchCallDeferConfig(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 9312
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 9314
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9315
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->deferCall:Z

    .line 9320
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #phoneType:I
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onEndCallBtnClick()V

    .line 9322
    return-void

    .line 9302
    .restart local v1       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v3       #phoneType:I
    :cond_2
    if-ne v3, v7, :cond_3

    .line 9303
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 9305
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 2503
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleHtcMsg(ILandroid/os/Message;)V
    .locals 7
    .parameter "what"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 9069
    packed-switch p1, :pswitch_data_0

    .line 9201
    :cond_0
    :goto_0
    return-void

    .line 9072
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->handleStuffAfterOnResume()V

    goto :goto_0

    .line 9077
    :pswitch_1
    const-string v4, "InCallScreen"

    const-string v5, "-- MSG_END_CALL_FINISH_IMMEDIATELY"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9079
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 9084
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getAudioMode(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 9085
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_0

    .line 9097
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9099
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->placeCall()V

    goto :goto_0

    .line 9105
    :pswitch_3
    const-string v5, "InCallScreen"

    const-string v6, "MSG_ACCEPTE_CALL_KEY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9106
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    goto :goto_0

    .line 9113
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9114
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0

    .line 9121
    :pswitch_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 9122
    .local v3, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 9123
    .local v1, hasActiveCall:Z
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    .line 9125
    .local v2, hasHoldingCall:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 9126
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 9127
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCallBothLinesInUse()V

    goto :goto_0

    .end local v1           #hasActiveCall:Z
    .end local v2           #hasHoldingCall:Z
    :cond_1
    move v1, v5

    .line 9122
    goto :goto_1

    .restart local v1       #hasActiveCall:Z
    :cond_2
    move v2, v5

    .line 9123
    goto :goto_2

    .line 9129
    .restart local v2       #hasHoldingCall:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 9139
    .end local v1           #hasActiveCall:Z
    .end local v2           #hasHoldingCall:Z
    .end local v3           #hasRingingCall:Z
    :pswitch_6
    iget-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 9144
    :pswitch_7
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_4

    .line 9145
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 9147
    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 9150
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9151
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_0

    .line 9157
    :pswitch_8
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 9158
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 9159
    const-string v4, "InCallScreen"

    const-string v5, "handle message: MSG_RELEASE_ALL_CALL_RESULT"

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 9165
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v4, :cond_0

    .line 9178
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p2, Landroid/os/Message;->arg1:I

    iget v6, p2, Landroid/os/Message;->arg2:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 9186
    :pswitch_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 9187
    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mToast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 9194
    :pswitch_b
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 9069
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private handleKidzoneRingingConfirm(JI)V
    .locals 4
    .parameter "id"
    .parameter "request"

    .prologue
    .line 9827
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKidzoneRequestConfirm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9828
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    if-eqz v1, :cond_1

    .line 9829
    const-string v1, "InCallScreen"

    const-string v2, "there is already one pending request existed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9832
    :cond_1
    new-instance v1, Lcom/android/phone/util/PendingRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/phone/util/PendingRequest;-><init>(JI)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    .line 9836
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9837
    .local v0, pwd:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.HtcChooseLockGeneric"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9839
    const-string v1, "hideKeyguard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9841
    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9843
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPwdResult()V

    .line 9844
    return-void
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 6

    .prologue
    .line 4894
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4896
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4897
    .local v0, msg:Landroid/os/Message;
    const/16 v3, 0x6b

    iput v3, v0, Landroid/os/Message;->what:I

    .line 4899
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4900
    .local v1, msg2:Landroid/os/Message;
    const/16 v3, 0x6a

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4904
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e026f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0270

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0264

    new-instance v5, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0271

    new-instance v5, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4931
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4934
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 4936
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const v4, 0x102023a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4937
    .local v2, title:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 4938
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4942
    :cond_1
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 8
    .parameter "r"
    .parameter "ch"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 3767
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3769
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 3770
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 3775
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3832
    .end local v3           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    :goto_0
    return-void

    .line 3778
    .restart local v3       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3779
    .local v1, phoneType:I
    sget-object v4, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 3781
    :pswitch_0
    if-ne v1, v6, :cond_0

    .line 3782
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3783
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v4, :cond_2

    .line 3784
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3786
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 3787
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 3797
    :pswitch_1
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3798
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 3799
    .local v2, postDialStr:Ljava/lang/String;
    if-ne v1, v6, :cond_4

    .line 3800
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3801
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3802
    :cond_4
    if-ne v1, v7, :cond_5

    .line 3803
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3805
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3810
    .end local v2           #postDialStr:Ljava/lang/String;
    :pswitch_2
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3811
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3815
    :pswitch_3
    if-ne v1, v6, :cond_0

    .line 3816
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 3821
    :pswitch_4
    if-ne v1, v6, :cond_0

    .line 3822
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 3823
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3824
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto/16 :goto_0

    .line 3779
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

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    const v4, 0x7f0e03b6

    const/4 v3, 0x1

    .line 5601
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5613
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5690
    :pswitch_0
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartupError: unexpected status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 5694
    :cond_1
    :goto_0
    return-void

    .line 5619
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 5631
    :pswitch_2
    const v0, 0x7f0e01ab

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5639
    :pswitch_3
    const v0, 0x7f0e03b3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5644
    :pswitch_4
    const v0, 0x7f0e03b4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5650
    :pswitch_5
    const-string v0, "InCallScreen"

    const-string v1, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5658
    :pswitch_6
    const v0, 0x7f0e03b5

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5670
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 5671
    const v0, 0x7f0e03b7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5681
    :pswitch_8
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5686
    :pswitch_9
    const-string v0, "InCallScreen"

    const-string v1, "handleStartupError: waiting for call gaurd dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_0
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

.method private htcCdmaCallGuardCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const v2, 0x7f0e0177

    .line 9410
    const-string v0, "InCallScreen"

    const-string v1, "htcCdmaCallGuardCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9412
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 9414
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 9415
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    .line 9418
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e0176

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9423
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard2:Z

    if-ne v0, v3, :cond_2

    .line 9424
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9427
    const-string v0, "InCallScreen"

    const-string v1, "OoO Warning - the roaming network (Sprint Home"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9428
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9442
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9444
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9449
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 9450
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 9451
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f0e0140

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$30;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$30;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9458
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, -0x2

    const v2, 0x7f0e013f

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$31;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$31;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9467
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 9468
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 9469
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 9470
    return-void

    .line 9431
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e017b

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9434
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e017c

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9438
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9424
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private htcCdmaCallGuardResult(Z)V
    .locals 3
    .parameter "performCall"

    .prologue
    const/4 v2, 0x0

    .line 9473
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 9497
    :goto_0
    return-void

    .line 9478
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 9479
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    .line 9480
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 9481
    if-eqz p1, :cond_1

    .line 9482
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9483
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 9484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->onResumeAfterCallActivation(Z)V

    goto :goto_0

    .line 9487
    :cond_1
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 9488
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0

    .line 9492
    :cond_2
    if-eqz p1, :cond_3

    .line 9493
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9495
    :cond_3
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private htcCheckPhoneNumberBlocking(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6
    .parameter "number"

    .prologue
    const/4 v5, 0x2

    .line 10164
    move-object v1, p1

    .line 10165
    .local v1, pureNumberPart:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 10166
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10168
    :cond_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10169
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10170
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10172
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-nez v3, :cond_2

    const-string v3, "*228"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10176
    const-string v3, "initOtaString"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 10177
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->initOtaString()V

    .line 10196
    :cond_1
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPhoneApp;->enableCallGuard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10197
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_MO_CALL_GUARD:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 10208
    :goto_0
    return-object v2

    .line 10179
    :cond_2
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/OtaUtils;->getOtaspNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/phone/OtaUtils;->getOtaspNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 10182
    .local v0, lenNumber:I
    if-eqz v0, :cond_3

    if-ne v0, v5, :cond_1

    .line 10183
    :cond_3
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_VERIZON_OTA_CALL_FAILED_SIM_UNPROVISIONED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 10184
    .local v2, simStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->checkVerizonSIM()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 10186
    :pswitch_0
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_VERIZON_OTA_CALL_FAILED_NO_SIM:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 10187
    goto :goto_0

    .line 10189
    :pswitch_1
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_VERIZON_OTA_CALL_FAILED_SIM_PROVISIONED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 10201
    .end local v0           #lenNumber:I
    .end local v2           #simStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10203
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10204
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_MO_CALL_GUARD:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 10208
    :cond_5
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 10184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private incomingCallLockScreenAnswerCall()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7914
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7917
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm.lockscreen.mode.status"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7918
    const-string v1, "InCallScreen"

    const-string v2, ">>> incomingCallLockScreenAnswerCall(),   set lockscreen mode :false "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7920
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 7922
    const-string v1, "InCallScreen"

    const-string v2, ">>> incomingCallLockScreenAnswerCall(),   broadcast reject ps call "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.Reject_PS_Call"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7924
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7928
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7929
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_3

    .line 7930
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    .line 7934
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 7936
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7937
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v1, :cond_2

    .line 7938
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 7939
    :cond_2
    return-void

    .line 7932
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0
.end method

.method private incomingCallLockScreenDeclineCall()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7968
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7971
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gsm.lockscreen.mode.status"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7972
    const-string v0, "InCallScreen"

    const-string v1, ">>> incomingCallLockScreenDeclineCall(),   set lockscreen mode :false "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7983
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 8006
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 8008
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8010
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 8012
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8013
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 8014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 8017
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 8020
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideIncomingCallArc()V

    .line 8034
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->forceWakeUpScreen()V

    .line 8037
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8038
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 8041
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 8043
    return-void

    .line 8025
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->deferCall:Z

    if-nez v0, :cond_4

    .line 8026
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 8029
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private initCallGuard()V
    .locals 6

    .prologue
    .line 9597
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    if-nez v4, :cond_0

    .line 9599
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 9600
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v4, "com.android.phone"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/phone/PhoneApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 9602
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 9603
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    .line 9604
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    const v5, 0x7f08009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9613
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 9605
    :catch_0
    move-exception v2

    .line 9609
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "InCallScreen"

    const-string v5, "findLayoutCache:"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initInCallScreen()V
    .locals 13

    .prologue
    const v3, 0x7f08006c

    const/4 v2, 0x1

    .line 2395
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 2402
    .local v10, configuration:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 2404
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 2405
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 2406
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    .line 2407
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v0, :cond_6

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 2427
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_2

    .line 2428
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->destroy()V

    .line 2431
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_3

    .line 2432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 2436
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, v10, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getCallCard(I)Landroid/view/View;

    move-result-object v9

    .line 2438
    .local v9, callCardLayout:Landroid/view/View;
    if-eqz v9, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    if-nez v0, :cond_7

    .line 2440
    :cond_4
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    .line 2445
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2446
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2448
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneApp;->setCallCard(Landroid/view/View;)V

    .line 2462
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setPreloadConfiguration(Landroid/content/res/Configuration;)V

    .line 2467
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 2469
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 2471
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_5

    .line 2472
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallStatusShadow:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mElapsedTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mElapsedTimeShadow:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mNonCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mNonCallStatusShadow:Landroid/widget/TextView;

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/CallCard;->passCallStatusViews(Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/InCallScreen;)V

    .line 2475
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2482
    :cond_5
    :goto_2
    return-void

    .line 2410
    .end local v9           #callCardLayout:Landroid/view/View;
    :cond_6
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 2452
    .restart local v9       #callCardLayout:Landroid/view/View;
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 2454
    .local v12, parent:Landroid/view/ViewGroup;
    if-eqz v12, :cond_8

    .line 2456
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2459
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2477
    .end local v12           #parent:Landroid/view/ViewGroup;
    :catch_0
    move-exception v11

    .line 2478
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "InCallScreen"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initInCallTouchUi()V
    .locals 1

    .prologue
    .line 6253
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6261
    :cond_0
    return-void
.end method

.method private initIncallControlPanel()V
    .locals 2

    .prologue
    .line 8577
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v0, :cond_0

    .line 8578
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v0}, Lcom/android/phone/HtcIncallControlPanel;->destroy()V

    .line 8581
    :cond_0
    new-instance v0, Lcom/android/phone/HtcIncallControlPanel;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcIncallControlPanel;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    .line 8582
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->initLayout(Landroid/view/View;)V

    .line 8583
    return-void
.end method

.method private initIncomingCommandBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 10078
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 10079
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 10082
    .local v2, resid:I
    const v6, 0x7f0800ff

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/phone/widget/ButtonGroup;

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    .line 10084
    const-string v6, "cmd_bar_2"

    const-string v7, "layout"

    const-string v8, "com.android.phone"

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10085
    .local v0, layout:I
    if-nez v0, :cond_0

    .line 10086
    const v0, 0x2090001

    .line 10088
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v6, v0}, Lcom/android/phone/widget/ButtonGroup;->setLayoutResources(I)V

    .line 10090
    const/4 v5, 0x0

    .line 10091
    .local v5, unit:I
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 10093
    .local v3, textSize:F
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const v7, 0x2020001

    const v8, 0x7f08003a

    const v9, 0x7f0e0029

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 10096
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x7f020074

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10097
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10099
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const v7, 0x2020003

    const v8, 0x7f08003b

    const v9, 0x7f0e002a

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 10101
    .restart local v4       #tv:Landroid/widget/TextView;
    const v6, 0x7f02007d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10102
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10104
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v6, p0}, Lcom/android/phone/widget/ButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10105
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v6, p0}, Lcom/android/phone/widget/ButtonGroup;->setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V

    .line 10108
    return-void
.end method

.method private initOtaState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 8463
    const/4 v2, 0x0

    .line 8465
    .local v2, inOtaCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 8466
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 8468
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v4, :cond_2

    .line 8469
    :cond_0
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8498
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    :goto_0
    return v3

    .line 8473
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v2

    .line 8474
    if-eqz v2, :cond_b

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_b

    .line 8475
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    .line 8477
    .local v1, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_5

    .line 8478
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8479
    :cond_3
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_4
    :goto_1
    move v3, v2

    .line 8498
    goto :goto_0

    .line 8480
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_5
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_7

    .line 8482
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "initOtaState - in OTA END mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8483
    :cond_6
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 8484
    :cond_7
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_9

    .line 8486
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8487
    :cond_8
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 8489
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8490
    :cond_a
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 8493
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_b
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_4

    .line 8494
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_1
.end method

.method private initTaskBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 7431
    const v5, 0x7f0800fe

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/widget/ButtonGroup;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    .line 7433
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "cmd_bar_7"

    const-string v7, "layout"

    const-string v8, "com.android.phone"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 7434
    .local v1, layout:I
    if-nez v1, :cond_0

    .line 7435
    const v1, 0x2090006

    .line 7437
    :cond_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v5, v1}, Lcom/android/phone/widget/ButtonGroup;->setLayoutResources(I)V

    .line 7439
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20a0026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 7442
    .local v0, color:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v6, 0x2020001

    const v7, 0x7f080043

    const v8, 0x7f0e0029

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7444
    .local v4, tv:Landroid/widget/TextView;
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v5, :cond_1

    .line 7445
    const v5, 0x7f02007d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7447
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 7449
    .local v3, textSize:F
    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7450
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7452
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 7453
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050137

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 7454
    .local v2, paddingTop:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v6, 0x2020006

    invoke-virtual {v5, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 7455
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7456
    invoke-virtual {v4, v9, v2, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7457
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v6, 0x2020007

    invoke-virtual {v5, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 7458
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7459
    invoke-virtual {v4, v9, v2, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7461
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 7465
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v5, p0}, Lcom/android/phone/widget/ButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7468
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v5}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 7469
    return-void
.end method

.method private initTitleBar()V
    .locals 5

    .prologue
    .line 7201
    const v2, 0x7f080145

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 7203
    const v2, 0x7f080144

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 7205
    const v2, 0x7f080146

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    .line 7207
    const v2, 0x7f080148

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallStatus:Landroid/widget/TextView;

    .line 7208
    const v2, 0x7f080147

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallStatusShadow:Landroid/widget/TextView;

    .line 7210
    const v2, 0x7f08014a

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mElapsedTime:Landroid/widget/TextView;

    .line 7211
    const v2, 0x7f080149

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mElapsedTimeShadow:Landroid/widget/TextView;

    .line 7213
    const v2, 0x7f080101

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7214
    .local v1, titlebar:Landroid/view/View;
    const-string v2, "common_app_bkg_top"

    const-string v3, "drawable"

    const v4, 0x20807c7

    invoke-static {v2, v3, v4}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 7215
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 7216
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7218
    :cond_0
    const v2, 0x7f08014c

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mNonCallStatus:Landroid/widget/TextView;

    .line 7219
    const v2, 0x7f08014b

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mNonCallStatusShadow:Landroid/widget/TextView;

    .line 7220
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateTitleBarLayoutParm()V

    .line 7222
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7223
    invoke-static {p0}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->initSpeekerControl(Landroid/app/Activity;)V

    .line 7230
    :goto_0
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v2, :cond_1

    .line 7231
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initCallGuard()V

    .line 7234
    :cond_1
    return-void

    .line 7225
    :cond_2
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->destroy()V

    goto :goto_0
.end method

.method private internalSwapCalls()V
    .locals 2

    .prologue
    .line 6031
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6032
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 6041
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 6046
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 6047
    return-void
.end method

.method private isOn(Z)Z
    .locals 1
    .parameter "On"

    .prologue
    .line 4839
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4841
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6642
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6643
    :cond_0
    return-void
.end method

.method private mergeCalls()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6766
    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v1

    .line 6767
    .local v1, mergeResult:I
    if-nez v1, :cond_0

    .line 6768
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 6788
    :goto_0
    return-void

    .line 6770
    :cond_0
    if-ne v4, v1, :cond_3

    const v0, 0x7f0e00df

    .line 6773
    .local v0, errorMessageResId:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    .line 6774
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6775
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 6777
    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6779
    :cond_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0264

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6784
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6786
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 6770
    .end local v0           #errorMessageResId:I
    :cond_3
    const v0, 0x7f0e03bd

    goto :goto_1
.end method

.method private okToDialDTMFTones()Z
    .locals 4

    .prologue
    .line 6210
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6211
    .local v2, hasRingingCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 6222
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 6232
    .local v0, canDial:Z
    :goto_0
    return v0

    .line 6222
    .end local v0           #canDial:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 30
    .parameter "r"

    .prologue
    .line 3302
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/Connection;

    .line 3303
    .local v13, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v18

    .line 3304
    .local v18, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onDisconnect: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ", cause="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3306
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v22, 0x1

    .line 3307
    .local v22, currentlyIdle:Z
    :goto_0
    const/4 v11, 0x0

    .line 3312
    .local v11, autoretrySetting:I
    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->getPhoneTypeByConnection(Ljava/lang/Object;)I

    move-result v23

    .line 3314
    .local v23, disconnectedPhoneType:I
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v3, v0, :cond_1

    .line 3317
    if-eqz v22, :cond_1

    .line 3318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v27, "call_auto_retry"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 3326
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 3330
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsFlashCall:Z

    .line 3331
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsMergeCall:Z

    .line 3334
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    .line 3354
    .local v10, app:Lcom/android/phone/PhoneApp;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_3

    .line 3355
    const v3, 0x7f0e0240

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 3700
    :goto_1
    return-void

    .line 3306
    .end local v10           #app:Lcom/android/phone/PhoneApp;
    .end local v11           #autoretrySetting:I
    .end local v22           #currentlyIdle:Z
    .end local v23           #disconnectedPhoneType:I
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 3357
    .restart local v10       #app:Lcom/android/phone/PhoneApp;
    .restart local v11       #autoretrySetting:I
    .restart local v22       #currentlyIdle:Z
    .restart local v23       #disconnectedPhoneType:I
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_4

    .line 3358
    const v3, 0x7f0e023f

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3360
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 3361
    const v3, 0x7f0e0241

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3363
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 3364
    const v3, 0x7f0e0242

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3366
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 3367
    const v3, 0x7f0e0243

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3371
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v3, v0, :cond_a

    .line 3376
    sget-object v16, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 3377
    .local v16, callState:Lcom/android/internal/telephony/Call$State;
    if-eqz v13, :cond_8

    .line 3378
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    .line 3381
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    .line 3386
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 3411
    :cond_9
    :goto_2
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v3, :cond_a

    .line 3413
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->isHBPCDRetryUI()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    if-nez v3, :cond_a

    .line 3415
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showRetryHBPCDDialog()V

    .line 3430
    .end local v16           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_a
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 3432
    .local v14, call:Lcom/android/internal/telephony/Call;
    if-eqz v14, :cond_c

    .line 3441
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    .line 3442
    .local v21, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v21, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_c

    .line 3443
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    .line 3444
    .local v20, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v27, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    if-ne v3, v0, :cond_b

    .line 3454
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3464
    .end local v20           #conn:Lcom/android/internal/telephony/Connection;
    .end local v21           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v26           #i$:Ljava/util/Iterator;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v27, "emergency_call_retry_count"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 3475
    .local v24, emergencyCallRetryCount:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 3482
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3483
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3494
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3496
    const/4 v12, 0x0

    .line 3515
    .local v12, bailOutImmediately:Z
    :goto_3
    const/4 v8, 0x0

    .line 3516
    .local v8, number:Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 3517
    .local v4, userId:J
    const-wide/16 v6, -0x1

    .line 3518
    .local v6, recordNumber:J
    const/4 v9, 0x0

    .line 3519
    .local v9, presentation:I
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3520
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v19

    .line 3522
    .local v19, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v19, :cond_e

    .line 3523
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3524
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 3525
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 3526
    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3530
    .end local v19           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    if-eqz v12, :cond_1e

    .line 3532
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_10

    .line 3539
    :cond_f
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_10

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_10

    move-object/from16 v3, p0

    .line 3542
    invoke-direct/range {v3 .. v9}, Lcom/android/phone/InCallScreen;->showEndCallHandlerDialogIfNeeded(JJLjava/lang/String;I)Z

    .line 3551
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 3555
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_11

    if-lez v24, :cond_11

    .line 3557
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v27, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3663
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_12

    .line 3667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3668
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3670
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_13

    .line 3671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3672
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3674
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_14

    .line 3675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3676
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3680
    :cond_14
    if-eqz v22, :cond_15

    .line 3681
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    .line 3684
    :cond_15
    sget-boolean v3, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    if-eqz v3, :cond_16

    .line 3687
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.htc.action.EXIT_CONFIRM_PASSWORD"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3688
    .local v17, cancelIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 3689
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    .line 3690
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    .line 3696
    .end local v17           #cancelIntent:Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 3387
    .end local v4           #userId:J
    .end local v6           #recordNumber:J
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #presentation:I
    .end local v12           #bailOutImmediately:Z
    .end local v14           #call:Lcom/android/internal/telephony/Call;
    .end local v24           #emergencyCallRetryCount:I
    .restart local v16       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_17
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_18

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_9

    :cond_18
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    .line 3393
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v3, :cond_19

    .line 3395
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 3396
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_2

    .line 3398
    :cond_19
    if-nez v11, :cond_1a

    .line 3400
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 3401
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_2

    .line 3405
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_2

    .line 3501
    .end local v16           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v14       #call:Lcom/android/internal/telephony/Call;
    .restart local v24       #emergencyCallRetryCount:I
    :cond_1b
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_1d

    if-lez v24, :cond_1d

    :cond_1c
    if-eqz v22, :cond_1d

    const/4 v12, 0x1

    .restart local v12       #bailOutImmediately:Z
    :goto_5
    goto/16 :goto_3

    .end local v12           #bailOutImmediately:Z
    :cond_1d
    const/4 v12, 0x0

    goto :goto_5

    .line 3569
    .restart local v4       #userId:J
    .restart local v6       #recordNumber:J
    .restart local v8       #number:Ljava/lang/String;
    .restart local v9       #presentation:I
    .restart local v12       #bailOutImmediately:Z
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3573
    if-eqz v22, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3577
    :cond_1f
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3582
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v25

    .line 3583
    .local v25, hasActiveCall:Z
    if-nez v25, :cond_24

    .line 3588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_21

    .line 3590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3591
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3593
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_22

    .line 3595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3596
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3600
    :cond_22
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_23

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_23

    move-object/from16 v3, p0

    .line 3603
    invoke-direct/range {v3 .. v9}, Lcom/android/phone/InCallScreen;->showEndCallHandlerDialogIfNeeded(JJLjava/lang/String;I)Z

    .line 3607
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v3, :cond_24

    .line 3609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Lcom/android/phone/CallCard;->foceUpdateTitle(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 3625
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3629
    const/16 v15, 0xbb8

    .line 3658
    .local v15, callEndedDisplayDelay:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v27, 0x6c

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v27, 0x6c

    int-to-long v0, v15

    move-wide/from16 v28, v0

    move/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3632
    .end local v15           #callEndedDisplayDelay:I
    :cond_25
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_26

    .line 3636
    const/16 v15, 0x1388

    .restart local v15       #callEndedDisplayDelay:I
    goto :goto_6

    .line 3640
    .end local v15           #callEndedDisplayDelay:I
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v3, :cond_27

    .line 3642
    const/16 v15, 0x7d0

    .restart local v15       #callEndedDisplayDelay:I
    goto :goto_6

    .line 3649
    .end local v15           #callEndedDisplayDelay:I
    :cond_27
    const/16 v15, 0xc8

    .restart local v15       #callEndedDisplayDelay:I
    goto :goto_6
.end method

.method private onEndCallBtnClick()V
    .locals 1

    .prologue
    .line 6793
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6795
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    .line 6797
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6800
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryUI(Z)V

    .line 6803
    :cond_0
    return-void
.end method

.method private onHoldClick()V
    .locals 3

    .prologue
    .line 5435
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5436
    .local v0, hasActiveCall:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5439
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 5441
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5443
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5458
    :cond_0
    :goto_0
    return-void

    .line 5446
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 5448
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 3753
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3754
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3755
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3713
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_0

    .line 3730
    :goto_0
    return-void

    .line 3722
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3724
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 3727
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3728
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3212
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setSuppServiceRequesting(Z)V

    .line 3214
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 3216
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3218
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3219
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3223
    :cond_0
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_1

    .line 3224
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    .line 3229
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 3230
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- Ringing DISMISS mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3231
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3232
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3239
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_6

    .line 3242
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 3243
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 3246
    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3248
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 3255
    :cond_7
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_9

    .line 3256
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3283
    :cond_8
    :goto_0
    return-void

    .line 3260
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3264
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3267
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_8

    .line 3268
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_a

    .line 3269
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    goto :goto_0

    .line 3274
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3277
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    goto :goto_0
.end method

.method private onResumeAfterCallActivation(Z)V
    .locals 9
    .parameter "handledStartupError"

    .prologue
    const/16 v8, 0x70

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1513
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1517
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1518
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 1523
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 1526
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1532
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1535
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetUiWhenOnResume()V

    .line 1543
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1544
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_c

    .line 1545
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    .line 1546
    .local v1, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v3, :cond_1

    .line 1547
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1551
    :cond_0
    if-eqz p1, :cond_9

    .line 1559
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1593
    .end local v1           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_1
    const v3, 0x1129d

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1600
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_e

    .line 1617
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1621
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x62

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x63

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x41

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x42

    if-ne v3, v4, :cond_d

    .line 1626
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1647
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1659
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1661
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1662
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1665
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-class v4, Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1669
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v3, :cond_4

    .line 1670
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v3}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 1673
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1675
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialingScreen()V

    .line 1682
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v3}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 1685
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v3, :cond_f

    .line 1686
    invoke-static {p0, v7}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 1687
    .local v2, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 1688
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1689
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    .line 1691
    :cond_6
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1692
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 1693
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 1698
    .end local v2           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_2
    return-void

    .line 1520
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_0

    .line 1573
    .restart local v1       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1574
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1577
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1578
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_2

    .line 1585
    .end local v1           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_c
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v3, :cond_7

    .line 1586
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v3}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_2

    .line 1630
    :cond_d
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1645
    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_1

    .line 1695
    :cond_f
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    if-nez v3, :cond_7

    .line 1696
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const v4, 0x7f0e0051

    const/4 v6, 0x0

    .line 8218
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 8219
    .local v0, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "InCallScreen"

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8220
    :cond_0
    const-string v1, ""

    .line 8221
    .local v1, str:Ljava/lang/String;
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_2

    .line 8223
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v2, :pswitch_data_0

    .line 8276
    :goto_0
    :pswitch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8277
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 8279
    :cond_1
    return-void

    .line 8227
    :pswitch_1
    const v2, 0x7f0e004f

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8228
    goto :goto_0

    .line 8230
    :pswitch_2
    const v2, 0x7f0e0050

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8231
    goto :goto_0

    .line 8233
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8234
    goto :goto_0

    .line 8236
    :pswitch_4
    const v2, 0x7f0e0052

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8237
    goto :goto_0

    .line 8239
    :pswitch_5
    const v2, 0x7f0e0053

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8240
    goto :goto_0

    .line 8242
    :pswitch_6
    const v2, 0x7f0e0054

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8243
    goto :goto_0

    .line 8245
    :pswitch_7
    const v2, 0x7f0e0055

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8250
    :cond_2
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 8252
    :pswitch_8
    const v2, 0x7f0e0056

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InCallScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8254
    goto :goto_0

    .line 8256
    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8257
    goto :goto_0

    .line 8223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 8250
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 28
    .parameter "intent"

    .prologue
    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4386
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4391
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 4393
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_IGNORED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4647
    :cond_1
    :goto_0
    return-object v15

    .line 4397
    :cond_2
    const/16 v16, 0x0

    .line 4401
    .local v16, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v15

    .line 4405
    .local v15, okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v14

    .line 4413
    .local v14, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 4414
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 4415
    .local v19, scheme:Ljava/lang/String;
    :goto_1
    const-string v23, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4417
    .local v20, sipPhoneUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v14, v2}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 4421
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 4436
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 4437
    .local v11, isEmergencyNumber:Z
    const-string v23, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 4439
    .local v10, isEmergencyIntent:Z
    if-nez v14, :cond_6

    .line 4440
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4414
    .end local v10           #isEmergencyIntent:Z
    .end local v11           #isEmergencyNumber:Z
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #sipPhoneUri:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 4423
    .end local v14           #number:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 4428
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_4

    .line 4429
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_1

    const-string v23, "Voicemail number not reachable in current SIM card state."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4432
    :cond_4
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_5

    const-string v23, "VoiceMailNumberMissingException from getInitialNumber()"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4433
    :cond_5
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4444
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v10       #isEmergencyIntent:Z
    .restart local v11       #isEmergencyNumber:Z
    .restart local v14       #number:Ljava/lang/String;
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #sipPhoneUri:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_6
    if-eqz v11, :cond_7

    if-nez v10, :cond_7

    .line 4445
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Non-CALL_EMERGENCY Intent "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " attempted to call emergency number "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4449
    :cond_7
    if-nez v11, :cond_8

    if-eqz v10, :cond_8

    .line 4450
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received CALL_EMERGENCY Intent "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " with non-emergency number "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " -- failing call."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4457
    :cond_8
    if-eqz v11, :cond_9

    .line 4458
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    .line 4480
    :cond_9
    const/4 v3, 0x0

    .line 4482
    .local v3, airplaneMode:Z
    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 4485
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_a

    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_a

    .line 4487
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "airplane_mode_on"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-lez v23, :cond_a

    .line 4489
    const/4 v3, 0x1

    .line 4491
    const-string v23, "IncallScreen"

    const-string v24, "Airplane mode is on but service state is still in service"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    :cond_a
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_b

    .line 4501
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4502
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_b

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "==> UPDATING status to: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4506
    :cond_b
    const/4 v12, 0x0

    .line 4507
    .local v12, isWifiCallOn:Z
    const/4 v6, 0x0

    .line 4508
    .local v6, emergencyCallPref:I
    const-string v7, "NOT_INITIALIZED"

    .line 4509
    .local v7, emergencyState:Ljava/lang/String;
    const/16 v18, 0x1

    .line 4510
    .local v18, powerOn:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 4512
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string v24, "com.movial.ipphone.IPPhoneProxy"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 4513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneProxy;->getEmergencyPreference()I

    move-result v6

    .line 4514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneProxy;->getEmergencyState()Ljava/lang/String;

    move-result-object v7

    .line 4515
    const-string v23, "NOT_INITIALIZED"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_13

    const/4 v12, 0x1

    .line 4516
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneProxy;->getEmergencyCallPowerState()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    .line 4523
    :cond_c
    :goto_3
    if-eqz v12, :cond_14

    if-eqz v11, :cond_14

    if-nez v6, :cond_d

    const-string v23, "IDLE"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_14

    const-string v23, "IMS_CALL_FAILED"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    :cond_e
    const/4 v9, 0x1

    .line 4527
    .local v9, imsCS:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/InCallScreen;->isOn(Z)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 4529
    :try_start_2
    const-string v23, "com.movial.ipphone.IPPhoneProxy"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    const-string v24, "setForceEmergencyMode"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4530
    const-string v23, "com.movial.ipphone.IPPhoneProxy"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    const-string v24, "setEmergencyRadioOn"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4535
    :cond_f
    :goto_5
    if-eqz v9, :cond_15

    if-nez v18, :cond_15

    const/16 v21, 0x1

    .line 4536
    .local v21, turnRadioOn:Z
    :goto_6
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EmergencyPref = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " imsCS = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " powerOn="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " emergencyState = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " turnRadioOn = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_10

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->isOn(Z)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 4547
    :cond_10
    if-nez v3, :cond_12

    if-eqz v11, :cond_11

    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->isOn(Z)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 4552
    :cond_12
    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v24, 0x9f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 4559
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isWifiCallingEnabled()Z

    move-result v23

    if-eqz v23, :cond_16

    if-eqz v11, :cond_16

    const/4 v13, 0x1

    .line 4562
    .local v13, isWifiEmergencyCalling:Z
    :goto_7
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isConfirmBeforeTurnOnRadioEnabled()Z

    move-result v23

    if-eqz v23, :cond_17

    if-nez v13, :cond_17

    .line 4564
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showTurnOnRadioDialog()V

    .line 4573
    :goto_8
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4515
    .end local v9           #imsCS:Z
    .end local v13           #isWifiEmergencyCalling:Z
    .end local v21           #turnRadioOn:Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 4518
    :catch_1
    move-exception v5

    .line 4519
    .local v5, e:Ljava/lang/Exception;
    const-string v23, "InCallScreen"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4523
    .end local v5           #e:Ljava/lang/Exception;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 4531
    .restart local v9       #imsCS:Z
    :catch_2
    move-exception v5

    .line 4532
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v23, "InCallScreen"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4535
    .end local v5           #e:Ljava/lang/Exception;
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4559
    .restart local v21       #turnRadioOn:Z
    :cond_16
    const/4 v13, 0x0

    goto :goto_7

    .line 4566
    .restart local v13       #isWifiEmergencyCalling:Z
    :cond_17
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v24, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4568
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_18

    .line 4569
    const-string v23, "placeCall: starting EmergencyCallHandler, finishing InCallScreen..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4570
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_8

    .line 4579
    .end local v13           #isWifiEmergencyCalling:Z
    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 4589
    .local v4, app:Lcom/android/phone/PhoneApp;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    .line 4592
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/InCallScreen;->htcCheckPhoneNumberBlocking(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v17

    .line 4594
    .local v17, phoneNumberBlockedFromUI:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v23, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 4629
    sget-object v17, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4637
    :cond_1a
    :goto_9
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    invoke-static {v14}, Lcom/android/phone/HtcCdmaPhoneApp;->enableCallGuard(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 4641
    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 4643
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4644
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V

    .line 4645
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_MO_CALL_GUARD:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4596
    :pswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 4598
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4599
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V

    goto :goto_9

    .line 4602
    :pswitch_1
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v23, :cond_1a

    .line 4603
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4605
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4606
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4607
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcCdmaPhoneApp;->failVerizonOTAcall(I)V

    goto :goto_9

    .line 4611
    :pswitch_2
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v23, :cond_1a

    .line 4612
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4614
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4615
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4616
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcCdmaPhoneApp;->failVerizonOTAcall(I)V

    goto :goto_9

    .line 4620
    :pswitch_3
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v23, :cond_1a

    .line 4621
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4623
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4624
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4625
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcCdmaPhoneApp;->failVerizonOTAcall(I)V

    goto/16 :goto_9

    .line 4647
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v14}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v15

    goto/16 :goto_0

    .line 4594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private placeCallinternal(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 4651
    invoke-direct {p0, p1, v0, v0}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    return-object v0
.end method

.method private placeCallinternal(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 13
    .parameter "intent"
    .parameter "dialPhone"
    .parameter "dialNumber"

    .prologue
    .line 4656
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4658
    .local v0, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v8, p3

    .line 4663
    .local v8, number:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4665
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4670
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 4671
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4833
    :goto_1
    return-object v10

    .line 4666
    :catch_0
    move-exception v3

    .line 4667
    .local v3, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const/4 v8, 0x0

    goto :goto_0

    .line 4674
    .end local v3           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_1
    if-nez p2, :cond_3

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4676
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    :goto_2
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const-string v10, "*71"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "*72"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "*73"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_4

    .line 4680
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4682
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_CDMA_CALLFORWARD_INVALID, number="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_CALLFORWARD_INVALID:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    move-object v9, p2

    .line 4674
    goto :goto_2

    .line 4687
    .restart local v9       #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 4688
    .local v6, isEmergencyNumber:Z
    const-string v10, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 4690
    .local v5, isEmergencyIntent:Z
    sput-boolean v6, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    .line 4697
    move-object v7, v8

    .line 4702
    .local v7, mOriginalNumber:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->pluscodeDialingParser(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    .line 4704
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_ENHANCED_PLUS_CODE_DIALING:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 4706
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->putPlusCodeDialingRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    :cond_5
    const-string v10, "personId"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/phone/InCallScreen;->getNBPCDNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4713
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->hTcCdmaNumberHyphenation(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    .line 4717
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->parseInternationalDialingNumber(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    .line 4725
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4727
    .local v2, contactUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v10, :cond_6

    if-nez v6, :cond_6

    if-nez v5, :cond_6

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4731
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {p0, v9, v8, v2, v10}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v1

    .line 4744
    .local v1, callStatus:I
    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 4831
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall: unknown callStatus "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4737
    .end local v1           #callStatus:I
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen$CallerData;->getNumberType()I

    move-result v12

    invoke-static {v9, v8, v10, v11, v12}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #callStatus:I
    goto :goto_3

    .line 4766
    :pswitch_0
    const/4 v4, 0x1

    .line 4767
    .local v4, hideDialer:Z
    const-string v10, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v4, 0x1

    .line 4768
    :goto_4
    sget-boolean v10, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    if-eqz v10, :cond_7

    if-eqz v4, :cond_7

    .line 4770
    invoke-static {v8}, Lcom/htc/util/phone/DialUtils;->dialWithDialpad(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v4, 0x1

    .line 4772
    :cond_7
    :goto_5
    if-eqz v4, :cond_b

    .line 4773
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4777
    :goto_6
    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->attachMOInfo(Ljava/lang/String;)V

    .line 4790
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4792
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 4794
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v11, :cond_8

    .line 4804
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 4811
    :cond_8
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4767
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 4770
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 4775
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    goto :goto_6

    .line 4813
    .end local v4           #hideDialer:Z
    :pswitch_1
    sget-boolean v10, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4823
    :cond_c
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4825
    :pswitch_2
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4744
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processAllowScreenOn()V
    .locals 3

    .prologue
    .line 2726
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2728
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 2729
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 2731
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2734
    const-string v1, "processAllowScreenOn()...play call waiting tone"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->setupPSCallRingingState()V

    .line 2748
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 2753
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 2757
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2758
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 2761
    :cond_2
    return-void

    .line 2740
    .restart local v0       #notifier:Lcom/android/phone/CallNotifier;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2741
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->ring()V

    goto :goto_0
.end method

.method private processPendingRequest()V
    .locals 2

    .prologue
    .line 9883
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    if-eqz v0, :cond_1

    .line 9884
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    invoke-virtual {v0}, Lcom/android/phone/util/PendingRequest;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9912
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    .line 9913
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    .line 9914
    return-void

    .line 9886
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 9891
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 9896
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleDeferBtn()V

    goto :goto_0

    .line 9901
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onSendSMessageClick()V

    goto :goto_0

    .line 9909
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "no pending request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9884
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private quickLaunch()Z
    .locals 1

    .prologue
    .line 9332
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForPhoneStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2140
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v1, :cond_1

    .line 2141
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2142
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2143
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2144
    .local v0, phoneType:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2151
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2152
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2154
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2155
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2159
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2160
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x75

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2170
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 2172
    .end local v0           #phoneType:I
    :cond_1
    return-void
.end method

.method private registerForPwdResult()V
    .locals 3

    .prologue
    .line 9869
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InCallScreen"

    const-string v2, "registerForPwdResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9870
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    if-nez v1, :cond_1

    .line 9871
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.action.CONFIRM_PASSWORD_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9872
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/phone/InCallScreen$PwdResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/InCallScreen$PwdResultReceiver;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    .line 9873
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9880
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 9875
    :cond_1
    const-string v1, "InCallScreen"

    const-string v2, "result receive is already existed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestForNotFullScreen()V
    .locals 7

    .prologue
    const/16 v6, 0x800

    .line 8593
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 8594
    .local v2, winP:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8595
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8596
    .local v0, flags:I
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PHONE/InCallScreen_Debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8597
    :cond_0
    and-int/lit16 v3, v0, 0x800

    if-eq v3, v6, :cond_1

    .line 8599
    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 8601
    :cond_1
    return-void
.end method

.method private resetArcControl()V
    .locals 2

    .prologue
    .line 9924
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateBottomControlLayout p1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9925
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->resetDrawerPosition()V

    .line 9926
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 9927
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_1

    .line 9928
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->loadAndShowArrowAnimation()V

    .line 9930
    :cond_1
    return-void
.end method

.method private resetAvatarBeforeCall(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 9211
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mHasFocus:Z

    if-eqz v0, :cond_1

    .line 9219
    :cond_0
    :goto_0
    return-void

    .line 9215
    :cond_1
    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9217
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private resetUiWhenOnResume()V
    .locals 3

    .prologue
    .line 9227
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 9229
    .local v0, isRinging:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 9230
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->updateDisplayForNoPerson()V

    .line 9232
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateOperatorName()V

    .line 9233
    return-void

    .line 9227
    .end local v0           #isRinging:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMessageAndEnd(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "number"

    .prologue
    .line 6886
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6888
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_reject_msg_text"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6889
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 6890
    :cond_0
    const v2, 0x7f0e005e

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6893
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/InCallScreen;->sendMessageAndEnd(ILjava/lang/String;Ljava/lang/String;)V

    .line 6894
    return-void
.end method

.method private sendMessageDirectly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .parameter "msg"

    .prologue
    .line 8154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8155
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND_SMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8156
    const-string v1, "dest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8157
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8158
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 8159
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 4
    .parameter "newMode"

    .prologue
    const/4 v3, 0x0

    .line 6059
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6061
    .local v0, app:Lcom/android/phone/PhoneApp;
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 6063
    sget-object v1, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 6161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6068
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 6071
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6073
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6074
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 6080
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6149
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_1

    .line 6150
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 6151
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_0

    .line 6154
    :cond_1
    const-string v1, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6063
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setLayoutByConfig(Lcom/android/phone/PhoneApp;)V
    .locals 7
    .parameter "app"

    .prologue
    .line 8890
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8891
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 8893
    .local v2, orientation:I
    invoke-virtual {p1, v2}, Lcom/android/phone/PhoneApp;->getIncallScreenLayout(I)Landroid/view/View;

    move-result-object v1

    .line 8895
    .local v1, incallScreenLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    if-nez v4, :cond_1

    .line 8896
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    .line 8897
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8898
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/PhoneApp;->setInCallScreen(Landroid/view/View;)V

    .line 8899
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(Landroid/view/View;)V

    .line 8907
    :goto_0
    return-void

    .line 8901
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 8902
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 8903
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8905
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setWarningMsgForRoaming(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 9591
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9592
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 9593
    :cond_0
    return-void
.end method

.method private setupAlertingLock()V
    .locals 6

    .prologue
    .line 8049
    const v4, 0x7f080142

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/widget/HtcLockScreenControl;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    .line 8050
    new-instance v2, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 8061
    .local v2, rOpenDownDrawer:Ljava/lang/Runnable;
    new-instance v3, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 8072
    .local v3, rOpenUpDrawer:Ljava/lang/Runnable;
    new-instance v1, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 8082
    .local v1, rDraggingUpDrawer:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/phone/InCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$25;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 8092
    .local v0, rDraggingDownDrawer:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->setOpenDrawerDownRunnable(Ljava/lang/Runnable;)V

    .line 8095
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/HtcLockScreenControl;->setOpenDrawerUpRunnable(Ljava/lang/Runnable;)V

    .line 8096
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/HtcLockScreenControl;->setLockScreenForIncomingCall(Z)V

    .line 8098
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setDragingUpRunnable(Ljava/lang/Runnable;)V

    .line 8099
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v0}, Lcom/android/phone/widget/HtcLockScreenControl;->setDragingDownRunnable(Ljava/lang/Runnable;)V

    .line 8100
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v0}, Lcom/android/phone/widget/HtcLockScreenControl;->setCloseDrawerRunnable(Ljava/lang/Runnable;)V

    .line 8103
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 8104
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, p0}, Lcom/android/phone/widget/HtcLockScreenControl;->setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V

    .line 8118
    return-void
.end method

.method private setupLockScreenControlArcIncomingCall()V
    .locals 4

    .prologue
    .line 8122
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-nez v0, :cond_0

    .line 8124
    new-instance v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 8125
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setHintText(Ljava/lang/String;Ljava/lang/String;)V

    .line 8126
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_0

    .line 8127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setArcControl(Landroid/view/View;)V

    .line 8129
    :cond_0
    return-void
.end method

.method private setupPreloadContactInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    .line 9003
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 9004
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 9066
    :cond_0
    :goto_0
    return-void

    .line 9009
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5, p1}, Lcom/android/phone/InCallScreen$CallerData;->initFromIntent(Landroid/content/Intent;)V

    .line 9010
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 9012
    .local v0, callerId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9013
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5002(Lcom/android/phone/InCallScreen$CallerData;Z)Z

    .line 9015
    :cond_2
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent mbHasPhoto: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v7}, Lcom/android/phone/InCallScreen$CallerData;->access$5000(Lcom/android/phone/InCallScreen$CallerData;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9017
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen$CallerData;->access$5000(Lcom/android/phone/InCallScreen$CallerData;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9018
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallScreen;->getContactPhoto(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9019
    .local v4, photoData:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen$CallerData;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9022
    .end local v4           #photoData:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 9024
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9027
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9030
    .restart local v4       #photoData:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen$CallerData;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 9032
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_5

    .line 9033
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5102(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9062
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #photoData:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 9063
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "InCallScreen"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 9034
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #photoData:Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 9036
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v5, :cond_6

    .line 9037
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const v6, 0x10402db

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5102(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9042
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const v6, 0x7f0e0173

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5202(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9048
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/phone/InCallScreen$CallerData;->access$5202(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    .line 9049
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const v6, 0x10402db

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5102(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9053
    .end local v4           #photoData:Landroid/graphics/drawable/Drawable;
    :cond_8
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_9

    .line 9054
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9055
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 9056
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/phone/InCallScreen$CallerData;->access$5102(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9058
    .end local v1           #displayName:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 9059
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/phone/InCallScreen;->getNBPCDNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5202(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private showCallLostDialog()V
    .locals 3

    .prologue
    const v2, 0x7f0e024f

    const/4 v1, 0x1

    .line 5752
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5755
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 5756
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5785
    :cond_1
    :goto_0
    return-void

    .line 5761
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 5762
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5766
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5767
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 5769
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5771
    :cond_5
    const v0, 0x7f0e0252

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5776
    :cond_6
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showCallguardMessage(Z)V
    .locals 4
    .parameter "bShow"

    .prologue
    const v3, 0x7f0e0178

    const/4 v2, 0x1

    .line 9538
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-nez v0, :cond_1

    .line 9584
    :cond_0
    :goto_0
    return-void

    .line 9542
    :cond_1
    if-ne p1, v2, :cond_5

    .line 9544
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9546
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9553
    :cond_2
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard2:Z

    if-ne v0, v2, :cond_3

    .line 9554
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9557
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    .line 9569
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9571
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    .line 9574
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9560
    :pswitch_0
    const v0, 0x7f0e017d

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    goto :goto_1

    .line 9563
    :pswitch_1
    const v0, 0x7f0e017e

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    goto :goto_1

    .line 9578
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9580
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9582
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9554
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDialPad(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 9253
    if-eqz p1, :cond_0

    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9255
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 9256
    const-string v1, "com.android.phone.ShowDialpad"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 9258
    .local v0, showDialpad:Z
    if-eqz v0, :cond_1

    .line 9259
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 9265
    .end local v0           #showDialpad:Z
    :cond_0
    :goto_0
    return-void

    .line 9261
    .restart local v0       #showDialpad:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideDialPad()V

    goto :goto_0
.end method

.method private showEndCallHandlerDialogIfNeeded(JJLjava/lang/String;I)Z
    .locals 8
    .parameter "userId"
    .parameter "recordNumber"
    .parameter "number"
    .parameter "presentType"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6897
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_1

    .line 6987
    :cond_0
    :goto_0
    return v2

    .line 6901
    :cond_1
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_2

    .line 6902
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/phone/CityIdInfo;->addContactsOverrided(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6908
    :cond_2
    cmp-long v4, p1, v6

    if-gtz v4, :cond_0

    cmp-long v4, p3, v6

    if-gtz v4, :cond_0

    .line 6912
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6917
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6919
    const v4, 0x10402db

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6926
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6930
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq p6, v4, :cond_0

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq p6, v4, :cond_0

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq p6, v4, :cond_0

    .line 6936
    const-string v4, "Private number"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Unavailable"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Restricted"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6941
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "end call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    :cond_3
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "end call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6943
    :cond_4
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "end call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6948
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_save_contact"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6956
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6957
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "end call"

    const-string v4, "show no simutanious end call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6961
    :cond_6
    invoke-direct {p0, p1, p2, p5}, Lcom/android/phone/InCallScreen;->getEndCallHandlDialog(JLjava/lang/String;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6963
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_9

    .line 6964
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "end call"

    const-string v4, "show end call"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6970
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_8

    .line 6971
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6983
    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    move v2, v3

    .line 6984
    goto/16 :goto_0

    .line 6973
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 6974
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x322

    sget v5, Lcom/android/phone/InCallScreen;->TIME_OUT_SAVE_TO_CONTACT_DIALOG:I

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6977
    :catch_0
    move-exception v0

    .line 6978
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "InCallScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6986
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "end call"

    const-string v4, "show no end call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 5
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 5702
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v3, :cond_1

    .line 5704
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5705
    .local v2, msg:Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showGenericErrorDialog(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5710
    :cond_0
    if-eqz p2, :cond_2

    .line 5711
    new-instance v1, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5715
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5733
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0228

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0264

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5744
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 5747
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 5749
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #msg:Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 5720
    .restart local v2       #msg:Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5724
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_0
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 3949
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3950
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3951
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0e026a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3952
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3954
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_1

    .line 3955
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3956
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3957
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3960
    :cond_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3963
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3965
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3966
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3967
    return-void
.end method

.method private showRetryHBPCDDialog()V
    .locals 4

    .prologue
    .line 9617
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getHBPCDString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->getRetryHBPCDDialog(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 9618
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryUI(Z)V

    .line 9619
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 9621
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9623
    return-void
.end method

.method private showTurnOnRadioDialog()V
    .locals 5

    .prologue
    .line 8177
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0016

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0264

    new-instance v4, Lcom/android/phone/InCallScreen$28;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$28;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0256

    new-instance v4, Lcom/android/phone/InCallScreen$27;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$27;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$26;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$26;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 8205
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 8207
    .local v0, isRestrictedMode:Z
    if-eqz v0, :cond_0

    const/16 v1, 0x7d9

    .line 8210
    .local v1, type:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    .line 8211
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 8213
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 8214
    return-void

    .line 8207
    .end local v1           #type:I
    :cond_0
    const/16 v1, 0x7d8

    goto :goto_0
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3835
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3836
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3837
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0e0269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3838
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3841
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    .line 3842
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3843
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3844
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3848
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e026b

    new-instance v4, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3894
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3896
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3897
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3940
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3942
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 4004
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 4006
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 4008
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4009
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4013
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e026b

    new-instance v3, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4041
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 4043
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4044
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 2390
    :cond_0
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3

    .prologue
    .line 4276
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v1, :cond_2

    .line 4277
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    .line 4278
    .local v0, nbrPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 4279
    :cond_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncWithPhoneState while mode change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4280
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4281
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4309
    .end local v0           #nbrPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :goto_0
    return-object v1

    .line 4288
    :cond_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "syncWithPhoneState()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4296
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4299
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4300
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4303
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_6

    .line 4304
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4308
    :cond_6
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4309
    :cond_7
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2176
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2177
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2179
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2181
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2182
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2183
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 2185
    return-void
.end method

.method private updateBottomControlLayout()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7473
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7474
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7475
    const/4 v1, 0x0

    .line 7477
    .local v1, is3dLockScreenDisplayed:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7479
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v0, v5

    .line 7482
    .local v0, bConnection:Z
    :goto_0
    const-string v3, "false"

    .line 7484
    .local v3, mLockScreenStatus:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v6

    if-ne v6, v5, :cond_7

    move v2, v5

    .line 7486
    .local v2, isSkypeCall:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7487
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gsm.lockscreen.mode.status"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7490
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-nez v0, :cond_8

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    .line 7493
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7496
    const-string v6, "InCallScreen"

    const-string v7, "updateBottomControlLayout p1 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7497
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->resetDrawerPosition()V

    .line 7498
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v6, v4}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7499
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 7501
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7504
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.lockscreen.mode.status"

    const-string v6, "true"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7505
    const-string v4, "InCallScreen"

    const-string v5, ">>> set lockscreen mode :true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7508
    :cond_4
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v4, :cond_5

    .line 7509
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v4}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->loadAndShowArrowAnimation()V

    .line 7527
    .end local v0           #bConnection:Z
    .end local v2           #isSkypeCall:Z
    .end local v3           #mLockScreenStatus:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->updateBottomTaskBar(Z)V

    .line 7528
    return-void

    :cond_6
    move v0, v4

    .line 7479
    goto/16 :goto_0

    .restart local v0       #bConnection:Z
    .restart local v3       #mLockScreenStatus:Ljava/lang/String;
    :cond_7
    move v2, v4

    .line 7484
    goto :goto_1

    .line 7515
    .restart local v2       #isSkypeCall:Z
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->disableLockScreenControlIncomingCall()V

    .line 7517
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateBottomForIncoming()V

    goto :goto_2

    .line 7521
    .end local v0           #bConnection:Z
    .end local v2           #isSkypeCall:Z
    .end local v3           #mLockScreenStatus:Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->disableLockScreenControlIncomingCall()V

    .line 7523
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->updateBottomTaskBar(Z)V

    goto :goto_2
.end method

.method private updateBottomForIncoming()V
    .locals 2

    .prologue
    .line 7540
    const-string v0, "InCallScreen"

    const-string v1, "updateBottomForIncoming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7542
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    .line 7543
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7551
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v0}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 7552
    return-void

    .line 7545
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBottomTaskBar(Z)V
    .locals 21
    .parameter "is3dLockScreenDisplayed"

    .prologue
    .line 7556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v14, 0x1

    .line 7558
    .local v14, isIncoming:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 7559
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v17

    if-eqz v17, :cond_0

    if-nez v14, :cond_2

    .line 7561
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 7686
    :goto_1
    return-void

    .line 7556
    .end local v14           #isIncoming:Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 7570
    .restart local v14       #isIncoming:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v13

    .line 7573
    .local v13, inCallPhoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7575
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 7578
    .local v15, res:Landroid/content/res/Resources;
    const v9, 0x7f0e025b

    .line 7579
    .local v9, centerTextId:I
    sget-boolean v17, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v17, :cond_5

    const v6, 0x2020006

    .line 7582
    .local v6, btnId:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .line 7584
    .local v16, tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isDialing()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 7585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 7590
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 7592
    .local v10, conn:Lcom/android/internal/telephony/Connection;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/InCallScreen;->getTagForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    move-result-object v16

    .line 7653
    .end local v8           #call:Lcom/android/internal/telephony/Call;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    :goto_4
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v17

    if-eqz v17, :cond_3

    sget v17, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 7661
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    const v18, 0x2020001

    const v19, 0x7f080043

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v5

    .line 7663
    .local v5, btn:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 7664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 7670
    .local v7, btnViewId:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 7672
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/cscore/util/CSUtil;->getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 7673
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7685
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto/16 :goto_1

    .line 7579
    .end local v5           #btn:Landroid/view/View;
    .end local v6           #btnId:I
    .end local v7           #btnViewId:Landroid/view/View;
    .end local v16           #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_5
    const v6, 0x2020007

    goto/16 :goto_2

    .line 7590
    .restart local v6       #btnId:I
    .restart local v8       #call:Lcom/android/internal/telephony/Call;
    .restart local v16       #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 7593
    .end local v8           #call:Lcom/android/internal/telephony/Call;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isMultiple()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 7596
    sget-boolean v17, Lcom/android/phone/PhoneUtils;->SUPPORT_MERGE_CALL:Z

    if-eqz v17, :cond_8

    .line 7599
    const v17, 0x7f080044

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7600
    const v17, 0x7f0e048b

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7601
    const v17, 0x7f0e025d

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_4

    .line 7604
    :cond_8
    const v17, 0x7f08003f

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7605
    const v17, 0x7f0e0484

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7606
    const v17, 0x7f0e01c4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_4

    .line 7608
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v17

    if-nez v17, :cond_a

    .line 7609
    const v9, 0x7f0e03a1

    .line 7610
    const v17, 0x7f080047

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7611
    const v17, 0x7f0e048a

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7612
    const v17, 0x7f0e01c4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_4

    .line 7615
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 7619
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isEspresso()Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_c

    .line 7623
    :cond_b
    const v17, 0x7f08003f

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7624
    const v17, 0x7f0e0484

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7625
    const v17, 0x7f0e01c4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_4

    .line 7627
    :cond_c
    const v17, 0x7f080042

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7628
    const v17, 0x7f0e0489

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7629
    const v17, 0x7f0e025e

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_4

    .line 7632
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 7633
    .local v12, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 7639
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v10, 0x0

    .line 7640
    .restart local v10       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 7641
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 7647
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/InCallScreen;->getTagForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    move-result-object v16

    goto/16 :goto_4

    .line 7643
    :cond_f
    if-eqz v4, :cond_e

    .line 7644
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    goto :goto_6

    .line 7675
    .end local v4           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    .end local v12           #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #btn:Landroid/view/View;
    .restart local v7       #btnViewId:Landroid/view/View;
    :cond_10
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 7677
    :catch_0
    move-exception v11

    .line 7678
    .local v11, e:Ljava/lang/Exception;
    const-string v17, "InCallScreen"

    const-string v18, "Can\'t get CS LockScreen status"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private updateCallCard(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 9502
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v4}, Lcom/android/phone/CallCard;->updateDisplayForNoPerson()V

    .line 9505
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 9506
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4, p1}, Lcom/android/phone/InCallScreen$CallerData;->initFromIntent(Landroid/content/Intent;)V

    .line 9507
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 9509
    .local v0, callerId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9510
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen$CallerData;->access$5002(Lcom/android/phone/InCallScreen$CallerData;Z)Z

    .line 9512
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v4}, Lcom/android/phone/InCallScreen$CallerData;->access$5000(Lcom/android/phone/InCallScreen$CallerData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9513
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/phone/InCallScreen;->getContactPhoto(J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9514
    .local v3, photoData:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4, v3}, Lcom/android/phone/InCallScreen$CallerData;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 9518
    .end local v3           #photoData:Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 9523
    .local v2, phonenumber:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InCallScreen$CallerData;->access$5100(Lcom/android/phone/InCallScreen$CallerData;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 9531
    :cond_2
    return-void

    .line 9519
    .end local v2           #phonenumber:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 9520
    .local v1, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const/4 v2, 0x0

    .restart local v2       #phonenumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateCallStatus()Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 14

    .prologue
    .line 7767
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v11, :cond_2

    .line 7768
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v6

    .line 7769
    .local v6, nbrPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_2

    .line 7770
    :cond_0
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateCallStatus while mode change : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7771
    :cond_1
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7877
    .end local v6           #nbrPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :goto_0
    return-object v11

    .line 7777
    :cond_2
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 7778
    .local v8, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 7779
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 7786
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 7789
    .local v9, ringingState:Lcom/android/internal/telephony/Call$State;
    :goto_1
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_3

    const-string v11, "InCallScreen"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ringincCallState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7791
    :cond_3
    sget-object v11, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v11, :cond_5

    .line 7792
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7793
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7786
    .end local v9           #ringingState:Lcom/android/internal/telephony/Call$State;
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_1

    .line 7795
    .restart local v9       #ringingState:Lcom/android/internal/telephony/Call$State;
    :cond_5
    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v11, :cond_6

    .line 7796
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7797
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7804
    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 7806
    .local v4, fgState:Lcom/android/internal/telephony/Call$State;
    :goto_2
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "InCallScreen"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fgCallState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7808
    :cond_7
    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v11, :cond_9

    .line 7809
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->DIALING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7810
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7804
    .end local v4           #fgState:Lcom/android/internal/telephony/Call$State;
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_2

    .line 7812
    .restart local v4       #fgState:Lcom/android/internal/telephony/Call$State;
    :cond_9
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v11, :cond_a

    .line 7813
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->ALERTING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7814
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7821
    :cond_a
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 7823
    .local v2, bgState:Lcom/android/internal/telephony/Call$State;
    :goto_3
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_b

    const-string v11, "InCallScreen"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bgCallState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7826
    :cond_b
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-nez v11, :cond_f

    .line 7827
    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v11, :cond_c

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_e

    .line 7829
    :cond_c
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->DISCONNECTED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7834
    :goto_4
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7821
    .end local v2           #bgState:Lcom/android/internal/telephony/Call$State;
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_3

    .line 7831
    .restart local v2       #bgState:Lcom/android/internal/telephony/Call$State;
    :cond_e
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->IDLE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_4

    .line 7839
    :cond_f
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v7

    .line 7840
    .local v7, phoneType:I
    const/4 v11, 0x2

    if-ne v7, v11, :cond_10

    .line 7841
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7842
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v0, :cond_10

    .line 7843
    const/4 v10, 0x0

    .line 7844
    .local v10, screenModeUpdate:Z
    sget-object v11, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$CdmaPhoneCallState$PhoneCallState:[I

    iget-object v12, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 7859
    :goto_5
    if-eqz v10, :cond_10

    .line 7860
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7846
    :pswitch_0
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7847
    const/4 v10, 0x1

    .line 7848
    goto :goto_5

    .line 7850
    :pswitch_1
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7851
    const/4 v10, 0x1

    .line 7852
    goto :goto_5

    .line 7855
    :pswitch_2
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7856
    const/4 v10, 0x1

    goto :goto_5

    .line 7865
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v10           #screenModeUpdate:Z
    :cond_10
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 7866
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7867
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7870
    :cond_11
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_12

    move-object v5, v3

    .line 7872
    .local v5, liveCall:Lcom/android/internal/telephony/Call;
    :goto_6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 7873
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7874
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .end local v5           #liveCall:Lcom/android/internal/telephony/Call;
    :cond_12
    move-object v5, v1

    .line 7870
    goto :goto_6

    .line 7876
    .restart local v5       #liveCall:Lcom/android/internal/telephony/Call;
    :cond_13
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7877
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7844
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCdmaOperatorInfo(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10245
    new-instance v2, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 10246
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v3, "networkState"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 10249
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v2, "showSpn"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 10250
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v2, "showPlmn"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 10251
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 10252
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 10253
    return-void

    :cond_0
    move v0, v1

    .line 10246
    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 9728
    const-string v3, "InCallScreen"

    const-string v4, "updateCdmaRoamingIcon()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9729
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 9730
    .local v2, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 9731
    .local v0, iconIndex:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 9733
    .local v1, iconMode:I
    if-ne v0, v5, :cond_0

    .line 9734
    const-string v3, "InCallScreen"

    const-string v4, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9758
    :goto_0
    return-void

    .line 9738
    :cond_0
    if-ne v1, v5, :cond_1

    .line 9739
    const-string v3, "InCallScreen"

    const-string v4, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9743
    :cond_1
    if-ne v0, v7, :cond_2

    .line 9744
    const-string v3, "InCallScreen"

    const-string v4, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9745
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 9749
    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 9751
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 9754
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 9749
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConfig()V
    .locals 3

    .prologue
    .line 8960
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8962
    .local v0, configuration:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8965
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 8966
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 8968
    :cond_0
    return-void
.end method

.method private updateDialingScreen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 8974
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8977
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->updateDialingCallCard()V

    .line 8980
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v2, v6}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 8981
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 8983
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->disableLockScreenControlIncomingCall()V

    .line 8986
    sget-boolean v2, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v2, :cond_0

    .line 8999
    :goto_0
    return-void

    .line 8992
    :cond_0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v2, :cond_1

    const v0, 0x2020006

    .line 8995
    .local v0, btnId:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v3, 0x7f080047

    const v4, 0x7f0e048a

    const v5, 0x7f0e01c4

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 8996
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v3, 0x2020001

    const v4, 0x7f080043

    const v5, 0x7f0e025b

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 8998
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v2}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_0

    .line 8992
    .end local v0           #btnId:I
    :cond_1
    const v0, 0x2020007

    goto :goto_1
.end method

.method private updateFakeBottomTaskBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 7691
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7692
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v4, v7}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7695
    sget-boolean v4, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v4, :cond_0

    .line 7723
    :goto_0
    return-void

    .line 7701
    :cond_0
    const v2, 0x7f0e025b

    .line 7702
    .local v2, centerTextId:I
    sget-boolean v4, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v4, :cond_2

    const v1, 0x2020006

    .line 7704
    .local v1, btnId:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v4, v1}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .line 7705
    .local v3, tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    const v4, 0x7f080047

    iput v4, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7706
    const v4, 0x7f0e048a

    iput v4, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7707
    const v4, 0x7f0e01c4

    iput v4, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    .line 7709
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7716
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v5, 0x2020001

    const v6, 0x7f080043

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v0

    .line 7717
    .local v0, btn:Landroid/view/View;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 7719
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    iget v5, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    iget v6, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7722
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v4}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_0

    .line 7702
    .end local v0           #btn:Landroid/view/View;
    .end local v1           #btnId:I
    .end local v3           #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_2
    const v1, 0x2020007

    goto :goto_1
.end method

.method private updateMenuButtonHint()V
    .locals 0

    .prologue
    .line 5590
    return-void
.end method

.method private updateOperatorName()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 7372
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 7377
    :cond_0
    const v2, 0x7f080145

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 7379
    const v2, 0x7f080144

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 7381
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 7382
    .local v0, op:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcBlinkingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7383
    .local v1, uiOpName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7385
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7387
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v3, v3}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkOnOffTime(II)V

    .line 7389
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7391
    :cond_3
    return-void
.end method

.method private updateProviderOverlay()V
    .locals 11

    .prologue
    const/16 v10, 0x79

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 5556
    const v5, 0x7f080106

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 5558
    .local v2, overlay:Landroid/view/ViewGroup;
    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v5, :cond_0

    .line 5559
    const v5, 0x7f0e040a

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5560
    .local v3, template:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5563
    .local v4, text:Ljava/lang/CharSequence;
    const v5, 0x7f080107

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5564
    .local v0, message:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5565
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5567
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5571
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 5572
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 5573
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5577
    .end local v0           #message:Landroid/widget/TextView;
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #template:Ljava/lang/CharSequence;
    .end local v4           #text:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 5575
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitleBarLayoutParm()V
    .locals 4

    .prologue
    .line 10910
    const v3, 0x7f080101

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 10911
    .local v2, titlebar:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 10912
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10913
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 10914
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 10915
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10916
    const v3, 0x20d0081

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10920
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10923
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 10918
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_1
    const v3, 0x20d0080

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private viewAllPeople()V
    .locals 2

    .prologue
    .line 9242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9243
    .local v0, viewAll:Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9244
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9245
    return-void
.end method

.method private viewContact()V
    .locals 3

    .prologue
    .line 6710
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6711
    .local v1, currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6712
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6716
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->getViewOrInsertForConnection(Lcom/android/internal/telephony/Connection;)Landroid/content/Intent;

    move-result-object v0

    .line 6719
    .local v0, actionIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 6720
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 6723
    :cond_1
    return-void
.end method

.method private viewContactSp()V
    .locals 5

    .prologue
    .line 6727
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6728
    .local v1, currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6729
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6731
    :cond_0
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    .end local v1           #currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 6733
    .local v0, c:Lcom/android/internal/telephony/Connection;
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_TASKBAR_RIGHT_VIEW_SP:Z

    if-eqz v2, :cond_3

    .line 6735
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6738
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsFromEmergencyDialer:Z

    if-nez v2, :cond_2

    .line 6741
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e014a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0264

    new-instance v4, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6759
    :cond_2
    :goto_0
    return-void

    .line 6757
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->viewContact()V

    goto :goto_0
.end method


# virtual methods
.method public allowOthersToRing()Z
    .locals 3

    .prologue
    const/16 v2, 0x70

    const/4 v0, 0x1

    .line 10259
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_0

    .line 10271
    :goto_0
    return v0

    .line 10264
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10266
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 10271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method applyBackgroundTheme()V
    .locals 4

    .prologue
    .line 1320
    const-string v1, "common_glance_bkg"

    const-string v2, "drawable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1321
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    .line 1327
    :cond_0
    return-void
.end method

.method public changeIncomingCallScreen()V
    .locals 2

    .prologue
    .line 10053
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 10055
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 10056
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 10057
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 10058
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 10059
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateBottomControlLayout()V

    .line 10060
    return-void
.end method

.method public checkChinaBuild()Z
    .locals 2

    .prologue
    .line 10064
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10067
    :cond_0
    const/4 v0, 0x1

    .line 10071
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6616
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6617
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6627
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6629
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6633
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6636
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6637
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter "dismissImmediate"

    .prologue
    const/16 v2, 0x6f

    .line 6424
    if-eqz p1, :cond_0

    .line 6425
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 6432
    :goto_0
    return-void

    .line 6427
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6428
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 6429
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2771
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2791
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2776
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    .line 2778
    .local v0, isDown:Z
    if-eqz v0, :cond_0

    .line 2781
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    goto :goto_0

    .line 2771
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 2110
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2111
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 2112
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2113
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2067
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2070
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2071
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 2100
    :cond_1
    :goto_0
    return-void

    .line 2077
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2079
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 2081
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2082
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 2083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2086
    :cond_3
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_4

    .line 2087
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    .line 2091
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 2097
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method finishForNaviModeChange()V
    .locals 0

    .prologue
    .line 10215
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 10216
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 10217
    return-void
.end method

.method public finishImmediatelyIfNecessary()V
    .locals 25

    .prologue
    .line 2795
    const/16 v17, 0x0

    .line 2796
    .local v17, total:I
    const/4 v10, 0x0

    .line 2798
    .local v10, finish:Z
    const/4 v8, 0x0

    .line 2799
    .local v8, connectionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x0

    .line 2801
    .local v7, connection:Lcom/android/internal/telephony/Connection;
    const-string v20, "IncallScreen"

    const-string v21, "finishImmediatelyIfNecessary"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2807
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v11

    .line 2810
    .local v11, forgroundNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v8

    .line 2812
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_0

    .line 2813
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 2812
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2816
    :cond_0
    add-int v17, v17, v11

    .line 2819
    .end local v11           #forgroundNum:I
    .end local v12           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v20

    if-nez v20, :cond_3

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    .line 2822
    .local v3, backgroundNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v8

    .line 2824
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    if-ge v12, v3, :cond_2

    .line 2825
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 2824
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2829
    :cond_2
    add-int v17, v17, v3

    .line 2832
    .end local v3           #backgroundNum:I
    .end local v12           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static/range {v20 .. v21}, Lcom/android/phone/PhoneUtils;->hasState(Ljava/util/List;Lcom/android/internal/telephony/Call$State;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 2837
    .local v16, ringingNum:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 2838
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 2837
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2841
    :cond_4
    add-int v17, v17, v16

    .line 2846
    .end local v12           #i:I
    .end local v16           #ringingNum:I
    :cond_5
    const-string v20, "IncallScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "finishImmediatelyIfNecessary total = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    if-eqz v7, :cond_7

    .line 2852
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2854
    .local v5, call:Lcom/android/internal/telephony/Call;
    const/4 v13, 0x0

    .line 2855
    .local v13, number:Ljava/lang/String;
    const-wide/16 v18, -0x1

    .line 2856
    .local v18, userId:J
    const-wide/16 v14, -0x1

    .line 2857
    .local v14, recordNumber:J
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 2858
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 2860
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v6, :cond_7

    .line 2861
    iget-wide v0, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    .line 2863
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-gtz v20, :cond_6

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v20

    if-nez v20, :cond_7

    .line 2865
    :cond_6
    const/4 v10, 0x1

    .line 2867
    const-string v20, "IncallScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "finishImmediatelyIfNecessary userId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #recordNumber:J
    .end local v18           #userId:J
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_8

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x320

    const-wide/16 v22, 0xc8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v20, v0

    const v21, 0x2020001

    const v22, 0x7f080043

    const/16 v23, 0x0

    const v24, 0x7f0e03a1

    invoke-virtual/range {v20 .. v24}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    .line 2879
    .local v4, btn:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2887
    .end local v4           #btn:Landroid/view/View;
    :cond_8
    :goto_3
    return-void

    .line 2882
    :catch_0
    move-exception v9

    .line 2883
    .local v9, e:Ljava/lang/Exception;
    const-string v20, "IncallScreen"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method getCallCard()Lcom/android/phone/CallCard;
    .locals 1

    .prologue
    .line 9803
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method getCallerCname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8653
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getCname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallerData()Lcom/android/phone/InCallScreen$CallerData;
    .locals 1

    .prologue
    .line 8609
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    if-nez v0, :cond_0

    .line 8610
    new-instance v0, Lcom/android/phone/InCallScreen$CallerData;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$CallerData;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    .line 8613
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    return-object v0
.end method

.method getCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8622
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallerNumberType()I
    .locals 1

    .prologue
    .line 8640
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getNumberType()I

    move-result v0

    return v0
.end method

.method getCallerPhotoData()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 8631
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDialerDisplay()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 6203
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    return-object v0
.end method

.method getLockScreenArc()Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    .locals 1

    .prologue
    .line 8150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    return-object v0
.end method

.method getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 1

    .prologue
    .line 7882
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method

.method getOperatorAlpha()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7890
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 7891
    .local v1, opInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 7892
    :cond_0
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 7895
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7899
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getImsRegistered()Z

    move-result v0

    .line 7900
    .local v0, imsRegistered:Z
    if-eqz v0, :cond_2

    .line 7901
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7905
    .end local v0           #imsRegistered:Z
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->calculateOperatorString(Lcom/android/internal/telephony/gsm/OperatorInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 1

    .prologue
    .line 8699
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPowerKeyToRejectCall:Z

    return v0
.end method

.method public handleCallKey()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2610
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2615
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 2617
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x324

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2686
    :cond_0
    :goto_0
    return v4

    .line 2624
    :cond_1
    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v6, :cond_0

    .line 2626
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 2627
    .local v2, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_3

    move v0, v4

    .line 2628
    .local v0, hasActiveCall:Z
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 2630
    .local v1, hasHoldingCall:Z
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v3

    .line 2631
    .local v3, phoneType:I
    if-eqz v2, :cond_7

    .line 2642
    const-string v5, "InCallScreen"

    const-string v6, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 2648
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "handleCallKey: ringing (both lines in use) ==> answer!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2649
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCallBothLinesInUse()V

    goto :goto_0

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v3           #phoneType:I
    :cond_3
    move v0, v5

    .line 2627
    goto :goto_1

    .restart local v0       #hasActiveCall:Z
    :cond_4
    move v1, v5

    .line 2628
    goto :goto_2

    .line 2651
    .restart local v1       #hasHoldingCall:Z
    .restart local v3       #phoneType:I
    :cond_5
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "handleCallKey: ringing ==> answer!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2653
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 2658
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_0

    .line 2659
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 2661
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2663
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2667
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->switchHoldUnhold()V

    goto :goto_0
.end method

.method handleKidzoneRingingConfirm(I)V
    .locals 3
    .parameter "request"

    .prologue
    .line 9822
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestCreateTime()J

    move-result-wide v0

    .line 9823
    .local v0, id:J
    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(JI)V

    .line 9824
    return-void
.end method

.method handleOnscreenButtonClick(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 5545
    return-void
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 8349
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 8351
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8352
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_3

    .line 8358
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8359
    :cond_2
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 8360
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 8362
    :cond_3
    return-void
.end method

.method handleStuffAfterOnResume()V
    .locals 5

    .prologue
    .line 1226
    const-string v2, "IncallSCreen"

    const-string v3, "handleStuffAfterOnResume"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1229
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1230
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_0

    .line 1231
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent: status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from internalResolveIntent()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 1239
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: initial status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1240
    :cond_1
    const/4 v0, 0x0

    .line 1242
    .local v0, handledStartupError:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_5

    .line 1243
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: failure during startup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1246
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_IGNORED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v2, v3, :cond_4

    .line 1248
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1249
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1311
    .end local v0           #handledStartupError:Z
    :cond_3
    :goto_0
    return-void

    .line 1257
    .restart local v0       #handledStartupError:Z
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 1259
    const/4 v0, 0x1

    .line 1265
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1268
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v2, v3, :cond_9

    .line 1269
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    .line 1270
    .local v1, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v2, :cond_3

    .line 1271
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1275
    :cond_6
    if-eqz v0, :cond_7

    .line 1283
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    :cond_7
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1298
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1299
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 1305
    .end local v1           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v2, :cond_3

    .line 1306
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v2}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_0
.end method

.method hasPhoto()Z
    .locals 1

    .prologue
    .line 8649
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->hasPhoto()Z

    move-result v0

    return v0
.end method

.method hideDialPad()V
    .locals 1

    .prologue
    .line 9284
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9285
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    .line 9287
    :cond_0
    return-void
.end method

.method public hideIncomingCallArc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10042
    const-string v0, ".....hideIncomingCallArc()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 10043
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 10044
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 10045
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 10046
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 10047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 10048
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 10049
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 5988
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5992
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5993
    return-void
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 5938
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 5940
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_1

    .line 5941
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 5942
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 5943
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 5944
    .local v4, phoneType:I
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5945
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5947
    .local v1, hasHoldingCall:Z
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 5948
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5950
    :cond_0
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5977
    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 5978
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateFakeBottomTaskbarAfterAnswerCall()V

    .line 5982
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    return-void

    .line 5952
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    .line 5958
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 5959
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5963
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5969
    :cond_5
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5970
    :cond_6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5974
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalAnswerCallBothLinesInUse()V
    .locals 2

    .prologue
    .line 6003
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerCallBothLinesInUse()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6006
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 6010
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 6016
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6017
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 6018
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2288
    :cond_0
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2384
    :goto_0
    return-object v2

    .line 2295
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2296
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalResolveIntent: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2299
    :cond_2
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2301
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    .line 2305
    :cond_3
    const-string v3, "com.android.phone.EmergencyDialer"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2307
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsFromEmergencyDialer:Z

    .line 2321
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2327
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v3, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2339
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The google ota intent has been disabled by Htc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2311
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsFromEmergencyDialer:Z

    goto :goto_1

    .line 2342
    .restart local v1       #app:Lcom/android/phone/PhoneApp;
    :cond_5
    const-string v3, "android.intent.action.ANSWER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2343
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 2344
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2345
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2346
    :cond_6
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2348
    :cond_7
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2353
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2354
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 2355
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 2356
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 2357
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 2358
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 2360
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2362
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 2367
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 2368
    .local v2, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    goto/16 :goto_0

    .line 2365
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_2

    .line 2369
    :cond_b
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->showDialPad(Landroid/content/Intent;)V

    .line 2379
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 2381
    :cond_c
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 2

    .prologue
    .line 6526
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 6528
    const/4 v0, 0x0

    .line 6532
    :goto_0
    return v0

    .line 6530
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6532
    .local v0, isAudioOn:Z
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6546
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6571
    :cond_0
    :goto_0
    return v2

    .line 6555
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_2

    .line 6556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 6558
    .local v0, timeSinceRequest:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 6565
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 6566
    goto :goto_0

    .end local v0           #timeSinceRequest:J
    :cond_2
    move v2, v3

    .line 6571
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 6481
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v4, :cond_1

    move v2, v3

    .line 6519
    :cond_0
    :goto_0
    return v2

    .line 6503
    :cond_1
    const/4 v2, 0x0

    .line 6504
    .local v2, isConnected:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_0

    .line 6505
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 6507
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 6508
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6509
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 6176
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEmergency()Z
    .locals 1

    .prologue
    .line 8567
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public isGSMCallGuardEnable(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v0, 0x1

    .line 10229
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10231
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10236
    const-string v1, "InCallScreen"

    const-string v2, "enableCallGuard( true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageConferenceMode()Z
    .locals 1

    .prologue
    .line 6169
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 1

    .prologue
    .line 8329
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 8365
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStateRestricted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6352
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 6353
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeToast(IZ)V
    .locals 7
    .parameter "resId"
    .parameter "isShort"

    .prologue
    const/16 v6, 0x32a

    const/16 v4, 0x328

    .line 8677
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 8679
    .local v0, duration:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8680
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 8682
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 8683
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8685
    if-eqz p2, :cond_1

    const/16 v2, 0x1388

    .line 8687
    .local v2, resetDelay:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v4, v2

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8688
    return-void

    .line 8677
    .end local v0           #duration:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #resetDelay:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 8685
    .restart local v0       #duration:I
    .restart local v1       #msg:Landroid/os/Message;
    :cond_1
    const/16 v2, 0x3a98

    goto :goto_1
.end method

.method needKidzonePwd()Z
    .locals 4

    .prologue
    .line 9815
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isKidzone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->onlyRinging(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 9817
    .local v0, need:Z
    :goto_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needKidzonePwd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9818
    :cond_0
    return v0

    .line 9815
    .end local v0           #need:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 6246
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 6338
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 10147
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroyed?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 10148
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    if-nez v0, :cond_1

    .line 10150
    packed-switch p1, :pswitch_data_0

    .line 10158
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 10159
    return-void

    .line 10153
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/EcidClient;->handleResult(Landroid/content/Context;IILandroid/content/Intent;)V

    goto :goto_0

    .line 10150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2591
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2596
    :goto_0
    return-void

    .line 2595
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onBluetoothClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 5463
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5465
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5466
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 5485
    :goto_0
    return-void

    .line 5474
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5475
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5478
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 5483
    :cond_2
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "view"

    .prologue
    .line 5091
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 5093
    .local v6, id:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 5094
    .local v12, tag:Ljava/lang/Object;
    if-eqz v12, :cond_0

    instance-of v14, v12, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    if-eqz v14, :cond_0

    .line 5095
    check-cast v12, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .end local v12           #tag:Ljava/lang/Object;
    iget v6, v12, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 5108
    :cond_0
    const/4 v3, 0x1

    .line 5109
    .local v3, dismissMenuImmediate:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 5111
    .local v2, context:Landroid/content/Context;
    sparse-switch v6, :sswitch_data_0

    .line 5344
    :cond_1
    :goto_0
    const v15, 0x1129f

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/widget/TextView;

    if-eqz v14, :cond_b

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    :goto_1
    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5358
    if-nez v3, :cond_3

    .line 5363
    sget-boolean v14, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v14, :cond_2

    const-string v14, "- onClick: updating menu to show \'new\' current state..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5365
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateMenu()Z

    move-result v9

    .line 5367
    .local v9, okToShowMenu:Z
    if-nez v9, :cond_3

    .line 5376
    const/4 v3, 0x1

    .line 5381
    .end local v9           #okToShowMenu:Z
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5390
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 5391
    return-void

    .line 5114
    .restart local p1
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 5119
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_0

    .line 5125
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 5132
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->mergeCalls()V

    goto :goto_0

    .line 5140
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v14, :cond_1

    .line 5142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v14}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 5143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 5145
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0

    .line 5158
    :sswitch_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    .line 5160
    const/4 v3, 0x0

    .line 5161
    goto :goto_0

    .line 5165
    :sswitch_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Landroid/content/Context;)V

    .line 5167
    const/4 v3, 0x0

    .line 5168
    goto :goto_0

    .line 5173
    :sswitch_7
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v8, 0x1

    .line 5174
    .local v8, newMuteState:Z
    :goto_2
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5176
    const/4 v3, 0x0

    .line 5177
    goto/16 :goto_0

    .line 5173
    .end local v8           #newMuteState:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 5182
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->switchHoldUnhold()V

    .line 5185
    const/4 v3, 0x0

    .line 5186
    goto/16 :goto_0

    .line 5191
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 5197
    :sswitch_a
    sget-boolean v14, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 5199
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5204
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 5210
    :sswitch_b
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5211
    .local v13, viewAll:Landroid/content/Intent;
    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5212
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5217
    .end local v13           #viewAll:Landroid/content/Intent;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->muteRingingCall(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 5222
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->onSendSMessageClick()V

    goto/16 :goto_0

    .line 5228
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 5230
    .local v4, fgAlive:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    .line 5232
    .local v1, bgAlive:Z
    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 5233
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto/16 :goto_0

    .line 5235
    :cond_7
    sget-boolean v14, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5237
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5239
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto/16 :goto_0

    .line 5247
    .end local v1           #bgAlive:Z
    .end local v4           #fgAlive:Z
    :sswitch_f
    sget-boolean v14, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 5249
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5251
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->onEndCallBtnClick()V

    goto/16 :goto_0

    .line 5259
    :sswitch_10
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.DIAL"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5260
    .local v7, intent:Landroid/content/Intent;
    const/high16 v14, 0x1000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5261
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5266
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x327

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 5269
    .local v10, result:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v10}, Lcom/android/phone/PhoneUtils;->hangupAll(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5275
    .end local v10           #result:Landroid/os/Message;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 5280
    :sswitch_13
    const-string v14, "recorder"

    const-string v15, "perform recording"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v5

    .line 5282
    .local v5, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    if-eqz v5, :cond_1

    .line 5283
    invoke-virtual {v5}, Lcom/android/phone/util/VoiceRecorderHelper;->startOrStop()Z

    goto/16 :goto_0

    .line 5290
    .end local v5           #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v14, :cond_1

    .line 5291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/HtcIncallControlPanel;->getDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v11

    .line 5292
    .local v11, srcDialog:Landroid/app/Dialog;
    if-eqz v11, :cond_1

    .line 5293
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 5301
    .end local v11           #srcDialog:Landroid/app/Dialog;
    :sswitch_15
    sget-boolean v14, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5303
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5305
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->handleDeferBtn()V

    goto/16 :goto_0

    .line 5310
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->onEndCallBtnClick()V

    goto/16 :goto_0

    .line 5314
    :sswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->viewAllPeople()V

    goto/16 :goto_0

    .line 5318
    :sswitch_18
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5319
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5324
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->viewContact()V

    goto/16 :goto_0

    .line 5328
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v14}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    goto/16 :goto_0

    .line 5332
    :sswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->viewContactSp()V

    goto/16 :goto_0

    .line 5344
    :cond_b
    const-string v14, ""

    goto/16 :goto_1

    .line 5111
    :sswitch_data_0
    .sparse-switch
        0x7f080010 -> :sswitch_b
        0x7f080011 -> :sswitch_c
        0x7f080012 -> :sswitch_d
        0x7f080013 -> :sswitch_14
        0x7f080014 -> :sswitch_10
        0x7f080015 -> :sswitch_12
        0x7f080016 -> :sswitch_11
        0x7f080025 -> :sswitch_13
        0x7f080028 -> :sswitch_1b
        0x7f08002a -> :sswitch_4
        0x7f08002b -> :sswitch_a
        0x7f08002c -> :sswitch_9
        0x7f08002d -> :sswitch_2
        0x7f08002e -> :sswitch_3
        0x7f08002f -> :sswitch_6
        0x7f080030 -> :sswitch_5
        0x7f080031 -> :sswitch_7
        0x7f080032 -> :sswitch_8
        0x7f080033 -> :sswitch_0
        0x7f080034 -> :sswitch_1
        0x7f080037 -> :sswitch_15
        0x7f08003a -> :sswitch_e
        0x7f08003b -> :sswitch_f
        0x7f08003c -> :sswitch_15
        0x7f08003d -> :sswitch_1a
        0x7f08003e -> :sswitch_1a
        0x7f08003f -> :sswitch_17
        0x7f080041 -> :sswitch_18
        0x7f080042 -> :sswitch_9
        0x7f080043 -> :sswitch_16
        0x7f080044 -> :sswitch_3
        0x7f080045 -> :sswitch_2
        0x7f080046 -> :sswitch_8
        0x7f080047 -> :sswitch_19
        0x7f080048 -> :sswitch_5
        0x7f080049 -> :sswitch_7
        0x7f0800bf -> :sswitch_14
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 8812
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_0

    .line 8813
    const-string v8, "InCallScreen"

    const-string v9, "onConfigChange: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8815
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8818
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->applyBackgroundTheme()V

    .line 8821
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 8824
    .local v0, diff:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v0, :cond_3

    .line 8825
    :cond_1
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_2

    .line 8826
    const-string v6, "Configuration is same as before, return"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8886
    :cond_2
    :goto_0
    return-void

    .line 8839
    :cond_3
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 8842
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->setLayoutByConfig(Lcom/android/phone/PhoneApp;)V

    .line 8843
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->findViewAndInitLayout()V

    .line 8844
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 8845
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateOperatorName()V

    .line 8847
    sget-boolean v8, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v8, :cond_4

    .line 8848
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8849
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 8850
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 8853
    :cond_4
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v2

    .line 8854
    .local v2, isCurrentModeDock:Z
    sget-boolean v8, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    if-eq v8, v2, :cond_7

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_7

    .line 8857
    sput-boolean v2, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    .line 8858
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8

    move v4, v6

    .line 8859
    .local v4, isSpeakOff:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 8861
    .local v5, isWiredHeadsetConnected:Z
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v8}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v8

    if-eqz v8, :cond_9

    move v1, v6

    .line 8863
    .local v1, isBTConnected:Z
    :goto_2
    if-nez v5, :cond_5

    if-eqz v1, :cond_a

    :cond_5
    move v3, v6

    .line 8864
    .local v3, isHandsFreePlugged:Z
    :goto_3
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 8865
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    .line 8866
    const-string v6, "InCallScreen"

    const-string v8, "Incallscreen: Dock mode is true and HandsFreePlugged is false, turn on the speaker"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8870
    :cond_6
    invoke-static {p0, v2, v7}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 8882
    .end local v1           #isBTConnected:Z
    .end local v3           #isHandsFreePlugged:Z
    .end local v4           #isSpeakOff:Z
    .end local v5           #isWiredHeadsetConnected:Z
    :cond_7
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8883
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_2

    .line 8884
    const-string v6, "InCallScreen"

    const-string v7, "End of onConfigChange: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v4, v7

    .line 8858
    goto :goto_1

    .restart local v4       #isSpeakOff:Z
    .restart local v5       #isWiredHeadsetConnected:Z
    :cond_9
    move v1, v7

    .line 8861
    goto :goto_2

    .restart local v1       #isBTConnected:Z
    :cond_a
    move v3, v7

    .line 8863
    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1033
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1038
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1044
    const-string v5, "InCallScreen"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1051
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/util/ConfigUtils;->registConfig(Landroid/content/res/Configuration;)V

    .line 1058
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v3

    .line 1060
    .local v3, isCurrentModeDock:Z
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    if-eq v5, v3, :cond_2

    .line 1061
    sput-boolean v3, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    .line 1062
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    .line 1063
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    .line 1064
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/PhoneApp;->assetSwitcher(Landroid/content/res/Resources;Z)V

    .line 1068
    :cond_2
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-nez v5, :cond_3

    .line 1069
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x48

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1086
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1087
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1089
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1091
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1093
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 1096
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v5, :cond_4

    .line 1100
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1101
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v5, v6, v7, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1105
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 1107
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setLayoutByConfig(Lcom/android/phone/PhoneApp;)V

    .line 1110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->findViewAndInitLayout()V

    .line 1114
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1128
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1130
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "fromDialer"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1132
    .local v1, fromDialer:Z
    const-string v5, "IncallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate fromDailer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    if-nez v1, :cond_6

    .line 1136
    if-nez p1, :cond_9

    .line 1137
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1142
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1143
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v5, v6, :cond_6

    .line 1144
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from internalResolveIntent()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 1157
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->requestForNotFullScreen()V

    .line 1160
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneApp;->registerUiModeObserver(Landroid/app/Activity;)I

    .line 1163
    sget-boolean v5, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v5, :cond_7

    .line 1164
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v5}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/util/VoiceRecorderHelper;

    .line 1167
    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    if-nez p1, :cond_a

    .line 1170
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 1171
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setupPreloadContactInfo(Landroid/content/Intent;)V

    .line 1180
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->applyBackgroundTheme()V

    .line 1185
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1186
    .local v4, pm:Landroid/os/PowerManager;
    if-eqz v4, :cond_0

    .line 1187
    const v5, 0x1000001a

    const-string v6, "InCallScreen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mSendRejectMsgWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 1149
    .end local v4           #pm:Landroid/os/PowerManager;
    :cond_9
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 1173
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 1174
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 10278
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 10279
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10282
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-nez v1, :cond_0

    .line 10283
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10285
    :cond_0
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-nez v1, :cond_1

    .line 10286
    const v1, 0x7f08002e

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10288
    :cond_1
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v1, :cond_4

    .line 10289
    const v1, 0x7f08002f

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10293
    :goto_0
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-nez v1, :cond_2

    .line 10294
    const v1, 0x7f080037

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10297
    :cond_2
    const v1, 0x7f080014

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10299
    sget-boolean v1, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-nez v1, :cond_3

    .line 10300
    const v1, 0x7f080025

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10303
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 10291
    :cond_4
    const v1, 0x7f080013

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    const/4 v0, 0x0

    .line 6382
    if-eqz p1, :cond_0

    .line 6387
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1964
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->unregisterUiModeObserver(Landroid/app/Activity;)I

    .line 1966
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy()...  this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1971
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1973
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1974
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1976
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1979
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissPromptDialogs()V

    .line 1984
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1997
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_1

    .line 1999
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2000
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 2005
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 2006
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 2009
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 2014
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 2015
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v5, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2016
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2021
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2022
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2024
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v1, :cond_3

    .line 2025
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v1}, Lcom/android/phone/HtcIncallControlPanel;->destroy()V

    .line 2028
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    .line 2030
    sget-boolean v1, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v1, :cond_4

    .line 2031
    invoke-static {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->destroyInstance(Landroid/content/Context;)V

    .line 2035
    :cond_4
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->unregistConfig()V

    .line 2037
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v1, :cond_5

    .line 2038
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v1}, Lcom/android/phone/HtcIncallControlPanel;->removeIncallScreen()V

    .line 2042
    :cond_5
    invoke-static {}, Lcom/android/phone/EcidClient;->endAllLookupQueries()V

    .line 2045
    return-void

    .line 2003
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0
.end method

.method onDialerClose()V
    .locals 1

    .prologue
    .line 6196
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6197
    return-void
.end method

.method onDialerOpen()V
    .locals 1

    .prologue
    .line 6186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6187
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2940
    sparse-switch p1, :sswitch_data_0

    .line 3085
    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3089
    :cond_1
    :goto_0
    return v0

    .line 2945
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2946
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mCallKeyPressed:Z

    .line 2947
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    .line 2948
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLongPress:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2971
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 2977
    goto :goto_0

    .line 2982
    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 2983
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->isVolumeControlEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2984
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->adjustRaise()Z

    move-result v0

    goto :goto_0

    .line 2988
    :cond_2
    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3

    const/16 v1, 0x19

    if-ne p1, v1, :cond_3

    .line 2989
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->isVolumeControlEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2990
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->adjustLower()Z

    move-result v0

    goto :goto_0

    .line 2996
    :cond_3
    :sswitch_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3009
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->muteRingingCall(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 3030
    :sswitch_6
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 3074
    :sswitch_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_1

    .line 3076
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->searchContact()V

    goto/16 :goto_0

    .line 3089
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 2940
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1b -> :sswitch_2
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x4c -> :sswitch_0
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2892
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp(keycode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2896
    const-string v1, "InCallScreen"

    const-string v2, "******* mDialer is active *******"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    :goto_0
    return v0

    .line 2898
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 2899
    const-string v1, "InCallScreen"

    const-string v2, "******* press CALL KEY *******"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2901
    const-string v1, "InCallScreen"

    const-string v2, "answer call by device, route audio to device."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2906
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mCallKeyPressed:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    if-nez v1, :cond_2

    .line 2907
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    .line 2910
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    .line 2911
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x325

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2914
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mCallKeyPressed:Z

    .line 2915
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    goto :goto_0

    .line 2921
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 2207
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2213
    const-string v1, "InCallScreen"

    const-string v2, "onNewIntent() reached on non-voice-capable device"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2283
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 2243
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->resetAvatarBeforeCall(Ljava/lang/String;)V

    .line 2245
    const-string v1, "fromDialer"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2247
    .local v0, fromDialer:Z
    const-string v1, "IncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent fromDailer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 2252
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mHasDialedECC:Z

    if-nez v1, :cond_3

    .line 2253
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 2275
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->setupPreloadContactInfo(Landroid/content/Intent;)V

    .line 2279
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2257
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mHasDialedECC:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2259
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2260
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mHasDialedECC:Z

    .line 2269
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v2, :cond_2

    .line 2270
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from internalResolveIntent()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2264
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 10902
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 10903
    .local v0, id:I
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10904
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 10905
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->onClick(Landroid/view/View;)V

    .line 10906
    const/4 v2, 0x1

    return v2
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 6445
    if-nez p1, :cond_0

    .line 6450
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6451
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1712
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1714
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1717
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1884
    :cond_1
    :goto_0
    return-void

    .line 1725
    :cond_2
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1729
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallguardMessage(Z)V

    .line 1733
    :cond_5
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1746
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1747
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1749
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1754
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v2, :cond_6

    .line 1756
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1792
    :cond_6
    const v2, 0x1129e

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1795
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1799
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1807
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1817
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1840
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1843
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 1847
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1851
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1854
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_7

    .line 1855
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 1858
    :cond_7
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/NotificationMgr;->handleInCallGlow(Z)V

    .line 1862
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mShowingErrorDialog:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    if-nez v2, :cond_9

    .line 1863
    :cond_8
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mShowingErrorDialog:Z

    .line 1864
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1866
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1867
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->showKeyguard(Z)V

    .line 1873
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x329

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1875
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->stopSNStatusMarquee()V

    .line 1877
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1880
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v2, :cond_1

    .line 1881
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    goto/16 :goto_0

    .line 1819
    :catch_0
    move-exception v1

    .line 1821
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "InCallScreen"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 49
    .parameter "menu"

    .prologue
    .line 10309
    sget-boolean v46, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v46, :cond_0

    .line 10310
    const-string v46, "InCallScreen"

    const-string v47, "onPrepareOptionsMenu"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10313
    :cond_0
    const v46, 0x7f08002b

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 10314
    .local v22, mDecline:Landroid/view/MenuItem;
    const v46, 0x7f08002c

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 10315
    .local v18, mAddCall:Landroid/view/MenuItem;
    const v46, 0x7f08002d

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    .line 10316
    .local v36, mSwapCalls:Landroid/view/MenuItem;
    const v46, 0x7f08002e

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 10317
    .local v33, mMergeCalls:Landroid/view/MenuItem;
    const v46, 0x7f08002f

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 10318
    .local v21, mBluetooth:Landroid/view/MenuItem;
    const v46, 0x7f080030

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v35

    .line 10319
    .local v35, mSpeaker:Landroid/view/MenuItem;
    const v46, 0x7f080031

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    .line 10320
    .local v34, mMute:Landroid/view/MenuItem;
    const v46, 0x7f080032

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 10321
    .local v32, mHold:Landroid/view/MenuItem;
    const v46, 0x7f080033

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 10322
    .local v20, mAnswerAndHold:Landroid/view/MenuItem;
    const v46, 0x7f080034

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 10324
    .local v19, mAnswerAndEnd:Landroid/view/MenuItem;
    const v46, 0x7f080010

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 10325
    .local v31, mHTCViewContacts:Landroid/view/MenuItem;
    const v46, 0x7f080011

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 10326
    .local v28, mHTCMuteRinging:Landroid/view/MenuItem;
    const v46, 0x7f080012

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 10328
    .local v30, mHTCSendMessage:Landroid/view/MenuItem;
    const v46, 0x7f080014

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 10329
    .local v27, mHTCLaunchDialer:Landroid/view/MenuItem;
    const v46, 0x7f080016

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 10330
    .local v25, mHTCEndAllCalls:Landroid/view/MenuItem;
    const v46, 0x7f080015

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 10331
    .local v26, mHTCEndHeldCall:Landroid/view/MenuItem;
    const v46, 0x7f080013

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 10333
    .local v23, mHTCAudioSrc:Landroid/view/MenuItem;
    const v46, 0x7f080025

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 10337
    .local v29, mHTCRecorder:Landroid/view/MenuItem;
    const v46, 0x7f080037

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 10343
    .local v24, mHTCDefer:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v46

    sget-object v47, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 10344
    sget-boolean v46, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v46, :cond_1

    .line 10345
    const-string v46, "- Phone is idle!  Don\'t show the menu..."

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 10346
    :cond_1
    const/16 v46, 0x0

    .line 10897
    :goto_0
    return v46

    .line 10353
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v40

    .line 10354
    .local v40, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 10355
    .local v11, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 10356
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v46

    if-eqz v46, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v46

    if-nez v46, :cond_3

    .line 10357
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v40

    .line 10362
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v15

    .line 10363
    .local v15, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v13

    .line 10364
    .local v13, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .line 10365
    .local v12, fgCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v14

    .line 10369
    .local v14, hasHoldingCall:Z
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v46

    if-eqz v46, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v46

    if-eqz v46, :cond_6

    .line 10371
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10372
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10373
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10374
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10377
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_4

    .line 10378
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10380
    :cond_4
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10381
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10382
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10383
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10384
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    .line 10389
    .local v17, inConferenceCall:Z
    if-nez v17, :cond_5

    const/16 v43, 0x1

    .line 10402
    .local v43, showShowDialpad:Z
    :goto_1
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10403
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10404
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v44

    .line 10408
    .local v44, speakerOn:Z
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 10389
    .end local v43           #showShowDialpad:Z
    .end local v44           #speakerOn:Z
    :cond_5
    const/16 v43, 0x0

    goto :goto_1

    .line 10412
    .end local v17           #inConferenceCall:Z
    :cond_6
    if-eqz v15, :cond_19

    .line 10414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 10415
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    const/16 v42, 0x1

    .line 10416
    .local v42, sendMsg:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_b

    .line 10417
    const/16 v42, 0x0

    .line 10433
    :goto_2
    if-eqz v13, :cond_10

    if-nez v14, :cond_10

    .line 10436
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10445
    const/16 v46, 0x2

    move/from16 v0, v40

    move/from16 v1, v46

    if-ne v0, v1, :cond_e

    .line 10446
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10454
    :goto_3
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10455
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_7

    .line 10456
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10458
    :cond_7
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10459
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_8

    .line 10460
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10463
    :cond_8
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_f

    .line 10464
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10469
    :goto_4
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10470
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10471
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10473
    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10475
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10483
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_9

    .line 10484
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10574
    :cond_9
    :goto_5
    const/16 v46, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10580
    const/16 v46, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10581
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10582
    sget-boolean v46, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v46, :cond_a

    .line 10583
    const/16 v46, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10591
    :cond_a
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 10419
    :cond_b
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_c

    .line 10420
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 10422
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 10424
    .local v41, ringType:I
    invoke-static/range {v41 .. v41}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v46

    if-nez v46, :cond_d

    const/16 v42, 0x1

    :goto_6
    goto/16 :goto_2

    :cond_d
    const/16 v42, 0x0

    goto :goto_6

    .line 10448
    .end local v41           #ringType:I
    :cond_e
    const/16 v46, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 10467
    :cond_f
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 10487
    :cond_10
    if-eqz v13, :cond_14

    if-eqz v14, :cond_14

    .line 10488
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10490
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10494
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10496
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_11

    .line 10497
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10499
    :cond_11
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10500
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_12

    .line 10501
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10504
    :cond_12
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_13

    .line 10505
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10510
    :goto_7
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10511
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10512
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10513
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10515
    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10517
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10521
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_9

    .line 10522
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 10508
    :cond_13
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 10527
    :cond_14
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10529
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10535
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_15

    .line 10536
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10538
    :cond_15
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10539
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_16

    .line 10540
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10543
    :cond_16
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_18

    .line 10544
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10549
    :goto_8
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10550
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10551
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10552
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10554
    const/16 v46, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10556
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10560
    const/16 v45, 0x0

    .line 10561
    .local v45, visible:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v46

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v46

    if-eqz v46, :cond_17

    .line 10563
    const/16 v45, 0x1

    .line 10566
    :cond_17
    move-object/from16 v0, v22

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10568
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_9

    .line 10569
    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 10547
    .end local v45           #visible:Z
    :cond_18
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 10598
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v42           #sendMsg:Z
    :cond_19
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10640
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v37

    .line 10641
    .local v37, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_1b

    .line 10642
    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isSingleAlive()Z

    move-result v46

    if-nez v46, :cond_1a

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v46

    if-eqz v46, :cond_27

    .line 10643
    :cond_1a
    const/16 v46, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10656
    :cond_1b
    :goto_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCdmaCallsOnly()Z

    move-result v46

    if-eqz v46, :cond_2a

    .line 10657
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 10658
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    .line 10660
    .local v8, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-eq v8, v0, :cond_1c

    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_1d

    .line 10662
    :cond_1c
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_1d

    .line 10663
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10666
    :cond_1d
    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_28

    .line 10667
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10668
    const/16 v46, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10674
    :goto_a
    const/16 v46, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10675
    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-eq v8, v0, :cond_1e

    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_29

    .line 10677
    :cond_1e
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10706
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v8           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_b
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-nez v46, :cond_1f

    if-eqz v21, :cond_1f

    .line 10707
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10708
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v46

    if-eqz v46, :cond_30

    .line 10709
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10710
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    .line 10711
    .local v3, audioConnectedOrPending:Z
    if-eqz v3, :cond_2f

    .line 10712
    const v46, 0x7f0e006d

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10725
    .end local v3           #audioConnectedOrPending:Z
    :cond_1f
    :goto_c
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v46

    if-eqz v46, :cond_31

    .line 10726
    const/16 v46, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10727
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10769
    :goto_d
    const-string v46, "ril.cdma.inecmmode"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v46

    if-eqz v46, :cond_35

    :cond_20
    const/4 v10, 0x1

    .line 10774
    .local v10, emergencyMode:Z
    :goto_e
    sget-object v46, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-ne v12, v0, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v46

    if-nez v46, :cond_36

    const/4 v6, 0x1

    .line 10776
    .local v6, canMute:Z
    :goto_f
    if-eqz v6, :cond_21

    if-eqz v10, :cond_37

    .line 10777
    :cond_21
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10792
    :goto_10
    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10795
    if-eqz v10, :cond_22

    sget-short v46, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v47, 0x94

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_22

    .line 10796
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10801
    :cond_22
    const/16 v46, 0x2

    move/from16 v0, v40

    move/from16 v1, v46

    if-ne v0, v1, :cond_39

    .line 10802
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10828
    :goto_11
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10830
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10834
    const/16 v46, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10840
    if-eqz v10, :cond_3f

    sget-short v46, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v47, 0x94

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_3f

    .line 10841
    const/16 v46, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10852
    :goto_12
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_23

    .line 10853
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10857
    :cond_23
    if-eqz v31, :cond_24

    .line 10859
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/htc/cscore/util/CSUtil;->getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-eqz v46, :cond_40

    .line 10860
    const/16 v46, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10871
    :cond_24
    :goto_13
    sget-boolean v46, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v46, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    if-eqz v46, :cond_25

    .line 10872
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v16

    .line 10873
    .local v16, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    if-eqz v29, :cond_25

    .line 10874
    if-eqz v16, :cond_42

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/util/VoiceRecorderHelper;->isEnabled()Z

    move-result v46

    if-eqz v46, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/phone/util/VTHelper;->hasVTCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v46

    if-nez v46, :cond_42

    .line 10875
    const/16 v46, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10876
    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecording()Z

    move-result v46

    if-eqz v46, :cond_41

    .line 10877
    const v46, 0x7f0e00ad

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10888
    .end local v16           #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    :cond_25
    :goto_14
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_26

    if-eqz v23, :cond_26

    .line 10889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    move/from16 v46, v0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10897
    :cond_26
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 10646
    .end local v6           #canMute:Z
    .end local v10           #emergencyMode:Z
    :cond_27
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 10670
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v8       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_28
    const v46, 0x7f0e0142

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10671
    const/16 v46, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10672
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 10679
    :cond_29
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 10683
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v8           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2a
    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isMultiple()Z

    move-result v46

    if-eqz v46, :cond_2d

    .line 10686
    const/16 v46, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10688
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_2b

    .line 10690
    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v46

    if-nez v46, :cond_2c

    const/16 v46, 0x1

    :goto_15
    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10694
    :cond_2b
    const/16 v46, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10695
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 10690
    :cond_2c
    const/16 v46, 0x0

    goto :goto_15

    .line 10697
    :cond_2d
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10698
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_2e

    .line 10699
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10701
    :cond_2e
    const/16 v46, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10702
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 10714
    .restart local v3       #audioConnectedOrPending:Z
    :cond_2f
    const v46, 0x7f0e006c

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 10717
    .end local v3           #audioConnectedOrPending:Z
    :cond_30
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 10729
    :cond_31
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_32

    .line 10730
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10733
    :cond_32
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10751
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10752
    invoke-interface/range {v35 .. v35}, Landroid/view/MenuItem;->isVisible()Z

    move-result v46

    if-nez v46, :cond_33

    .line 10753
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10755
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v44

    .line 10757
    .restart local v44       #speakerOn:Z
    if-eqz v44, :cond_34

    .line 10758
    const v46, 0x2080a82

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10759
    const v46, 0x7f0e006b

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 10761
    :cond_34
    const v46, 0x2080a83

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10762
    const v46, 0x7f0e006a

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 10769
    .end local v44           #speakerOn:Z
    :cond_35
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 10774
    .restart local v10       #emergencyMode:Z
    :cond_36
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 10779
    .restart local v6       #canMute:Z
    :cond_37
    const/16 v46, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10780
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v38

    .line 10782
    .local v38, muteOn:Z
    if-eqz v38, :cond_38

    .line 10783
    const v46, 0x7f0e006e

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10784
    const v46, 0x2080a36

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 10786
    :cond_38
    const v46, 0x7f0e0259

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10787
    const v46, 0x2080a36

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 10811
    .end local v38           #muteOn:Z
    :cond_39
    if-eqz v14, :cond_3c

    if-nez v13, :cond_3c

    const/16 v39, 0x1

    .line 10812
    .local v39, onHold:Z
    :goto_16
    if-eqz v13, :cond_3a

    if-nez v14, :cond_3d

    :cond_3a
    if-eqz v13, :cond_3b

    sget-object v46, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-ne v12, v0, :cond_3d

    :cond_3b
    const/4 v5, 0x1

    .line 10814
    .local v5, canHold:Z
    :goto_17
    if-eqz v39, :cond_3e

    .line 10815
    const v46, 0x7f0e006f

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10816
    const v46, 0x2080a19

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10821
    :goto_18
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 10811
    .end local v5           #canHold:Z
    .end local v39           #onHold:Z
    :cond_3c
    const/16 v39, 0x0

    goto :goto_16

    .line 10812
    .restart local v39       #onHold:Z
    :cond_3d
    const/4 v5, 0x0

    goto :goto_17

    .line 10818
    .restart local v5       #canHold:Z
    :cond_3e
    const v46, 0x2080a18

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10819
    const v46, 0x7f0e025a

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_18

    .line 10845
    .end local v5           #canHold:Z
    .end local v39           #onHold:Z
    :cond_3f
    const/16 v46, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 10862
    :cond_40
    const/16 v46, 0x1

    :try_start_1
    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13

    .line 10864
    :catch_0
    move-exception v9

    .line 10865
    .local v9, e:Ljava/lang/Exception;
    const-string v46, "InCallScreen"

    const-string v47, "Can\'t get CS LockScreen status"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 10879
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v16       #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    :cond_41
    const v46, 0x7f0e00ac

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 10882
    :cond_42
    const/16 v46, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1343
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "onResume()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1344
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1347
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1348
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1352
    :cond_1
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->isVolumeControlEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1353
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->updateSeekbarProgress()Z

    .line 1357
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1510
    :cond_3
    :goto_0
    return-void

    .line 1364
    :cond_4
    const/4 v1, 0x1

    .line 1365
    .local v1, dismissedKeyGuard:Z
    sget-boolean v4, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v4, :cond_5

    .line 1367
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->onlyRinging(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1368
    const/4 v1, 0x0

    .line 1371
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1375
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/NotificationMgr;->handleInCallGlow(Z)V

    .line 1379
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1381
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x329

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1387
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1392
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;)Z

    .line 1395
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1397
    const-string v4, "InCallScreen"

    const-string v5, "onResume Landscape setNewRingingConnectionInKeyguardRestrictedInputMode(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4, v9}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 1402
    :cond_7
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1404
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1411
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 1418
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_b

    .line 1420
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1441
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1443
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1448
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v4, :cond_8

    .line 1449
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    .line 1453
    :cond_8
    const/4 v3, 0x0

    .line 1457
    .local v3, handledStartupError:Z
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1459
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: initial status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1460
    :cond_9
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v4, v5, :cond_d

    .line 1461
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: failure during startup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1464
    :cond_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_IGNORED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v4, v5, :cond_c

    .line 1465
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1424
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #handledStartupError:Z
    :cond_b
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    goto :goto_1

    .line 1473
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #handledStartupError:Z
    :cond_c
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 1475
    const/4 v3, 0x1

    .line 1481
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1486
    :cond_d
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    if-eqz v4, :cond_e

    .line 1487
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v4, :cond_3

    .line 1488
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V

    goto/16 :goto_0

    .line 1493
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1495
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1500
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    if-nez v4, :cond_f

    .line 1502
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->callWaitingDialog()V

    .line 1503
    const-string v4, "onResume()...show Resume or hang up CS call..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1509
    :cond_f
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->onResumeAfterCallActivation(Z)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 1702
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1703
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1708
    return-void
.end method

.method onSendSMessageClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 6840
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 6841
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    if-nez v5, :cond_1

    .line 6882
    :cond_0
    :goto_0
    return-void

    .line 6845
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 6846
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 6850
    const/4 v2, 0x0

    .line 6851
    .local v2, number:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 6852
    .local v6, userDataObject:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 6853
    instance-of v7, v6, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_4

    .line 6854
    check-cast v6, Lcom/android/internal/telephony/CallerInfo;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v2, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6866
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6870
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6871
    .local v4, preference:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_edit_reject_msg"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 6875
    .local v3, openEditor:Z
    if-eqz v3, :cond_6

    .line 6876
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "InCallScreen"

    const-string v8, "onSendSMessageClick compose SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6877
    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v7, v2}, Lcom/android/phone/InCallScreen;->sendMessageAndEnd(ILjava/lang/String;)V

    goto :goto_0

    .line 6855
    .end local v3           #openEditor:Z
    .end local v4           #preference:Landroid/content/SharedPreferences;
    .restart local v6       #userDataObject:Ljava/lang/Object;
    :cond_4
    instance-of v7, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_5

    .line 6856
    check-cast v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v0, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 6857
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v0, :cond_2

    .line 6858
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 6860
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v6       #userDataObject:Ljava/lang/Object;
    :cond_5
    instance-of v7, v6, Landroid/net/Uri;

    if-nez v7, :cond_2

    .line 6862
    instance-of v7, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    if-eqz v7, :cond_2

    .line 6863
    check-cast v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v2, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    goto :goto_1

    .line 6879
    .restart local v3       #openEditor:Z
    .restart local v4       #preference:Landroid/content/SharedPreferences;
    :cond_6
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "InCallScreen"

    const-string v8, "onSendSMessageClick direct send SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    :cond_7
    invoke-direct {p0, v9, v2}, Lcom/android/phone/InCallScreen;->sendMessageAndEnd(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 1890
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1893
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1899
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    if-nez v2, :cond_1

    .line 1900
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1907
    :cond_1
    sget-boolean v2, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    if-eqz v2, :cond_2

    .line 1908
    sget-object v3, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1909
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/android/phone/InCallScreen;->isOnStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    :try_start_1
    sget-object v2, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1915
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/phone/InCallScreen;->isOnStop:Z

    .line 1916
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1922
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1959
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    goto :goto_0

    .line 1912
    .end local v1           #state:Lcom/android/internal/telephony/Phone$State;
    :catch_0
    move-exception v0

    .line 1913
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1916
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3107
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setSuppServiceRequesting(Z)V

    .line 3109
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3110
    .local v3, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuppServiceFailed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3113
    :cond_0
    sget-object v4, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3173
    const v0, 0x7f0e03b9

    .line 3181
    .local v0, errorMessageResId:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_2

    .line 3182
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3183
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3185
    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3189
    :cond_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0090

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0264

    invoke-virtual {v4, v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3196
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 3198
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v4, :cond_3

    .line 3199
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3200
    .local v2, launchIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3201
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3203
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3204
    .end local v0           #errorMessageResId:I
    :goto_1
    return-void

    .line 3119
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 3121
    .local v1, hasRingingCall:Z
    if-eqz v1, :cond_4

    .line 3123
    const-string v4, "IncallScreen"

    const-string v5, "onSuppServiceFailed: SWITCH failed, but try to answer call"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x323

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 3129
    :cond_4
    const v0, 0x7f0e03ba

    .line 3130
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3135
    .end local v0           #errorMessageResId:I
    .end local v1           #hasRingingCall:Z
    :pswitch_1
    const v0, 0x7f0e03bb

    .line 3136
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3142
    .end local v0           #errorMessageResId:I
    :pswitch_2
    const v0, 0x7f0e03bc

    .line 3143
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3148
    .end local v0           #errorMessageResId:I
    :pswitch_3
    const v0, 0x7f0e03bd

    .line 3150
    .restart local v0       #errorMessageResId:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 3151
    const v0, 0x7f0e00df

    goto/16 :goto_0

    .line 3153
    :cond_5
    const v0, 0x7f0e03bd

    .line 3156
    goto/16 :goto_0

    .line 3161
    .end local v0           #errorMessageResId:I
    :pswitch_4
    const v0, 0x7f0e03be

    .line 3162
    .restart local v0       #errorMessageResId:I
    goto/16 :goto_0

    .line 3166
    .end local v0           #errorMessageResId:I
    :pswitch_5
    const v0, 0x7f0e03bf

    .line 3167
    .restart local v0       #errorMessageResId:I
    goto/16 :goto_0

    .line 3113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 10114
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    if-ne v1, p1, :cond_1

    .line 10115
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10116
    .local v0, deferButton:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10117
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10133
    .end local v0           #deferButton:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 10119
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-ne v1, p1, :cond_2

    .line 10121
    if-eqz p2, :cond_0

    .line 10124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;)Z

    goto :goto_0

    .line 10129
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-ne v1, p1, :cond_0

    .line 10130
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, p2}, Lcom/android/phone/CallCard;->setCalendarEventPanelVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 2712
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsWindowFocus:Z

    .line 2713
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2714
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->processAllowScreenOn()V

    .line 2718
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    .line 2720
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 2722
    :cond_1
    return-void
.end method

.method release()V
    .locals 2

    .prologue
    .line 9385
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "release..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9387
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_1

    .line 9388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 9391
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_2

    .line 9392
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->removeAllViews()V

    .line 9393
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9396
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v0, :cond_3

    .line 9397
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v0}, Lcom/android/phone/HtcIncallControlPanel;->destroy()V

    .line 9399
    :cond_3
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 8306
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8307
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8315
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 8323
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8324
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8325
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 6583
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6584
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6585
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 6317
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6319
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6320
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6321
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 8521
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8522
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 8523
    return-void
.end method

.method protected searchContact()V
    .locals 2

    .prologue
    .line 3094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3096
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3098
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3099
    return-void
.end method

.method sendMessageAndEnd(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "number"
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7105
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    .line 7106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7111
    :cond_0
    if-eq p1, v5, :cond_1

    .line 7112
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 7113
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7114
    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->bInKeyguardRestrictedInputMode:Z

    .line 7122
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    if-ne p1, v5, :cond_5

    .line 7123
    invoke-direct {p0, p2, p3}, Lcom/android/phone/InCallScreen;->sendMessageDirectly(Ljava/lang/String;Ljava/lang/String;)V

    .line 7124
    const v2, 0x7f0e0073

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 7127
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 7129
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 7141
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    .line 7142
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send text, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    :cond_2
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    .line 7145
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send text, number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7147
    :cond_3
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    .line 7148
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send text, msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7150
    :cond_4
    return-void

    .line 7133
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/phone/InCallScreen;->startComposeRejectMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioSrcMenuItemIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 9808
    iput p1, p0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    .line 9809
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v0, :cond_0

    .line 9810
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->setAudioSrcMenuItemIcon(I)V

    .line 9812
    :cond_0
    return-void
.end method

.method public setButtonChecked(IZ)V
    .locals 2
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 10220
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v1, p1}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/ControlButton;

    .line 10221
    .local v0, btn:Lcom/android/phone/widget/ControlButton;
    invoke-virtual {v0}, Lcom/android/phone/widget/ControlButton;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10222
    invoke-virtual {v0, p2}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 10224
    :cond_0
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1206
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateCallParties()V

    .line 1208
    return-void
.end method

.method public setPowerKeyFlag(Z)V
    .locals 0
    .parameter "press"

    .prologue
    .line 8694
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mPowerKeyToRejectCall:Z

    .line 8695
    return-void
.end method

.method setVisibilityLockScreenInCallNumber(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 8145
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 8146
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setVisibilityLockScreenInCallNumber(I)V

    .line 8147
    :cond_0
    return-void
.end method

.method showDialPad()V
    .locals 1

    .prologue
    .line 9273
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9274
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    .line 9276
    :cond_0
    return-void
.end method

.method public showHoldCSCallDialog()V
    .locals 2

    .prologue
    .line 9951
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showHoldCSCallDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9952
    :cond_0
    const v0, 0x7f0e00d0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9953
    return-void
.end method

.method startComposeRejectMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "number"
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 7154
    sget-boolean v2, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v2, :cond_2

    .line 7155
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7156
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7157
    const-string v2, "dest"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7158
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7159
    const/high16 v2, 0x1880

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7162
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 7163
    .local v1, isRestrictedMode:Z
    if-eqz v1, :cond_0

    .line 7164
    const-string v2, "InCallScreen"

    const-string v3, "request composer to dismiss keyguard..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7165
    const-string v2, "dismiss_keyguard"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7166
    const-string v2, "dismiss_keyguard_timeout"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7168
    sget-boolean v2, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7169
    const-string v2, "show_when_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7172
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7173
    if-eqz v1, :cond_1

    .line 7177
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSendRejectMsgWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 7178
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 7179
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 7180
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32b

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7195
    .end local v1           #isRestrictedMode:Z
    :goto_0
    return-void

    .line 7182
    .restart local v1       #isRestrictedMode:Z
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 7186
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isRestrictedMode:Z
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 7188
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7189
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7190
    const-string v2, "dest"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7191
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7192
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7193
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0
.end method

.method public switchHoldUnhold()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5423
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 5424
    .local v0, MuteState:Z
    if-ne v0, v1, :cond_0

    .line 5425
    if-nez v0, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5428
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 5429
    return-void

    .line 5425
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchSpeakerOnOff(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5396
    const-string v6, "InCallScreen"

    const-string v7, "switchSpeakerOnOff"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 5399
    .local v2, newSpeakerState:Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5400
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 5402
    :cond_0
    invoke-static {p1, v2, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5405
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 5406
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 5408
    .local v1, isSpeakerInUse:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5410
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v1, :cond_3

    .line 5412
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 5419
    :goto_2
    return-void

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #isSpeakerInUse:Z
    .end local v2           #newSpeakerState:Z
    .end local v3           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_1
    move v2, v5

    .line 5398
    goto :goto_0

    .restart local v2       #newSpeakerState:Z
    .restart local v3       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_2
    move v1, v5

    .line 5406
    goto :goto_1

    .line 5416
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #isSpeakerInUse:Z
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    goto :goto_2
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 2188
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2195
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 2198
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 2199
    return-void
.end method

.method updateCallParties()V
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1219
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1220
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1221
    return-void
.end method

.method updateFakeBottomTaskbarAfterAnswerCall()V
    .locals 4

    .prologue
    .line 7943
    const/4 v0, 0x0

    .line 7944
    .local v0, callerId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    if-eqz v1, :cond_0

    .line 7945
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 7947
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7961
    :goto_0
    return-void

    .line 7950
    :cond_1
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFakeBottomTaskbarAfterAnswerCall, callerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7951
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7952
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/CallCard;->updateFakeForegroundCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 7958
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 7959
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HtcIncallControlPanel;->updateFakeScreen(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 7960
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateFakeBottomTaskBar()V

    goto :goto_0

    .line 7955
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CallCard;->updateFakeForegroundCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 2120
    if-eqz p1, :cond_0

    .line 2121
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2125
    :goto_0
    return-void

    .line 2123
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method updateKeyguardShowWhenLockPolicy(Z)V
    .locals 2
    .parameter "showWhenLock"

    .prologue
    const/high16 v1, 0x8

    .line 2129
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v0, :cond_0

    .line 2130
    if-eqz p1, :cond_1

    .line 2131
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2136
    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateKeypadIcon()V
    .locals 5

    .prologue
    .line 6647
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v3, :cond_0

    .line 6648
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f08003e

    .line 6649
    .local v2, id:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0e0483

    .line 6652
    .local v1, drawable:I
    :goto_1
    sget-boolean v3, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v3, :cond_3

    const v0, 0x2020007

    .line 6655
    .local v0, btnId:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v4, 0x7f0e03ef

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 6658
    .end local v0           #btnId:I
    .end local v1           #drawable:I
    .end local v2           #id:I
    :cond_0
    return-void

    .line 6648
    :cond_1
    const v2, 0x7f08003d

    goto :goto_0

    .line 6649
    .restart local v2       #id:I
    :cond_2
    const v1, 0x7f0e0482

    goto :goto_1

    .line 6652
    .restart local v1       #drawable:I
    :cond_3
    const v0, 0x2020006

    goto :goto_2
.end method

.method updateLockScreenInCallName(Ljava/lang/String;)V
    .locals 1
    .parameter "sName"

    .prologue
    .line 8133
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 8134
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateLockScreenInCallName(Ljava/lang/String;)V

    .line 8135
    :cond_0
    return-void
.end method

.method updateLockScreenInCallNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "sNumber"

    .prologue
    .line 8139
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 8140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateLockScreenInCallNumber(Ljava/lang/String;)V

    .line 8141
    :cond_0
    return-void
.end method

.method updateMenu()Z
    .locals 2

    .prologue
    .line 8164
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v0, :cond_0

    .line 8165
    const/4 v0, 0x0

    .line 8167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMenuItems()V
    .locals 3

    .prologue
    .line 8502
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 8503
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 8504
    .local v0, okToShowMenu:Z
    if-nez v0, :cond_0

    .line 8505
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 8508
    .end local v0           #okToShowMenu:Z
    :cond_0
    return-void
.end method

.method public updateScreen()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4055
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4057
    const-string v8, "IncallScreen"

    const-string v9, "setPowerKeyFlag(false)..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->setPowerKeyFlag(Z)V

    .line 4064
    :cond_0
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v8}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4261
    :cond_1
    :goto_0
    return-void

    .line 4077
    :cond_2
    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4082
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateCallStatus()Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 4083
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "PHONE/InCallScreen_Debug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current call status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    :cond_3
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_4

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->htcCdmaCallGuardSetting()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->isEriCallGuardEnalbe()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-boolean v8, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-nez v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_6

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4092
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallguardMessage(Z)V

    .line 4099
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v4, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 4102
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4103
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    move v3, v6

    .line 4104
    .local v3, isHardKeyboardHidden:Z
    :goto_1
    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_7

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4105
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8, v7}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 4106
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;)Z

    .line 4119
    .end local v3           #isHardKeyboardHidden:Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4120
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "- updateScreen: Activity finishing! Bailing out..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v3, v7

    .line 4103
    goto :goto_1

    .line 4124
    :cond_a
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4125
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_b

    .line 4126
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x322

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4127
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4128
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4132
    :cond_b
    sget-boolean v8, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v8, :cond_c

    .line 4133
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    .line 4139
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4140
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4151
    :cond_d
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v7, :cond_10

    .line 4153
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_e

    const-string v7, "- updateScreen: updating menu items..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4156
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateMenu()Z

    move-result v5

    .line 4158
    .local v5, okToShowMenu:Z
    if-nez v5, :cond_10

    .line 4166
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_f

    const-string v7, "- updateScreen: Tried to update menu; now need to dismiss!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4168
    :cond_f
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 4172
    .end local v5           #okToShowMenu:Z
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4174
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_1

    .line 4185
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_1

    .line 4209
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_1

    .line 4217
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4218
    .local v2, callerId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 4219
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4227
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 4228
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 4230
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateBottomControlLayout()V

    .line 4231
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 4232
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/HtcIncallControlPanel;->updateLayout(Lcom/android/internal/telephony/Phone;)V

    .line 4236
    :cond_11
    const/4 v1, 0x0

    .line 4238
    .local v1, bkResId:I
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4242
    :cond_12
    sget-boolean v6, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v6, :cond_1

    .line 4243
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 4223
    .end local v1           #bkResId:I
    :cond_13
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v6, v7, v11, v8}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_2
.end method
