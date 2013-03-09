.class public Lcom/android/htcdialer/Dialer;
.super Lcom/android/htcdialer/BaseSmartSearchList;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/Dialer$ContactCardAdapter;,
        Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;,
        Lcom/android/htcdialer/Dialer$QueryHandler;,
        Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;,
        Lcom/android/htcdialer/Dialer$ListItemCache;,
        Lcom/android/htcdialer/Dialer$DialogClickListener;
    }
.end annotation


# static fields
.field private static final AUTO_SWITCH_IME:Z = true

.field private static final CALENDAR_EVENT:Z = true

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting"

.field static final CONTACT_TYPE_CUSTOM:I = 0x6

.field static final CONTACT_TYPE_EXCHANGE:I = 0x3

.field static final CONTACT_TYPE_GOOGLE:I = 0x2

.field static final CONTACT_TYPE_LOCAL:I = 0x4

.field static final CONTACT_TYPE_PC:I = 0x5

.field static final CONTACT_TYPE_SIM:I = 0x1

.field static final CONTACT_TYPE_UNKNOWN:I = 0x0

.field private static final DEBUG:Z = false

.field static DEFAULT_CONTACT_VIEW_SIZE:I = 0x0

.field private static final DIVIDER_VISUAL:Z = true

.field private static final DLG_HINT:I = 0x2

.field private static final DLG_IP_DIAL:I = 0x1

.field private static final DTMF_TONE_TYPE_LONG:I = 0x1

.field private static final DTMF_TONE_TYPE_SHORT:I = 0x0

.field private static ENABLE_VOICE_SEARCH:Z = false

.field private static ENBABLE_HYTHEN:Z = false

.field private static final EXPANDED:Z = true

.field private static FONT_SIZE_TEMP_VIEW:Landroid/widget/TextView; = null

.field private static final HTC_IME_SERVICE:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x2

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final MENU_ADD_AS_BLACKLIST:I = 0xd

.field private static final MENU_ARRANGE_ICONS:I = 0x10000

.field static final MENU_GO_TO_BLACKLIST:I = 0x9

.field static final MENU_ITEM_ADD_TO_CONTACT:I = 0x5

.field static final MENU_ITEM_ADD_TO_FAVES:I = 0xa

.field static final MENU_ITEM_ADD_TO_FAVORITES:I = 0x7

.field static final MENU_ITEM_EDIT_BEFORE_CALL:I = 0x4

.field static final MENU_ITEM_IP_DIAL:I = 0xc

.field static final MENU_ITEM_REMOVE_FROM_CALL_LOG:I = 0x6

.field static final MENU_ITEM_REMOVE_FROM_FAVORITES:I = 0x8

.field static final MENU_ITEM_SEND_EMAIL:I = 0x3

.field static final MENU_ITEM_SEND_SMS:I = 0x2

.field static final MENU_ITEM_SHARE_PICTURE:I = 0xb

.field static final MENU_ITEM_VIEW_CONTACT:I = 0x1

.field static final MENU_ITEM_VIEW_PERSONAL_CALL_LOG:I = 0x9

.field private static final MODE_DEFAULT_HINT:I = 0x0

.field private static final MODE_USER_EDIT:I = 0x3

.field private static final MODE_USER_INPUT:I = 0x1

.field private static final MODE_USER_SELECT:I = 0x2

.field private static final MSG_ADD_VOICEMAIL_NUMBER:I = 0x2

.field protected static final MSG_CDMA_ENTER_EMERGENCY_MODE:I = 0xf

.field protected static final MSG_CDMA_HOOK_LISTENER:I = 0x8

.field protected static final MSG_CDMA_LEAVE_EMERGENCY_MODE:I = 0xe

.field protected static final MSG_CDMA_LEAVE_POWER_SAVE_MODE:I = 0xb

.field protected static final MSG_CDMA_RADIO_TYPE_CHANGE:I = 0xa

.field protected static final MSG_CDMA_SERVICE_STATE_CHANGE:I = 0x9

.field private static final MSG_CLEAR_MISSED_CALL_NOTIFICATION:I = 0x4

.field private static final MSG_DONT_ADD_VOICEMAIL_NUMBER:I = 0x3

.field private static final MSG_EVENT_EXIT:I = 0x6

.field private static final MSG_HOME_DIGIT:I = 0xd

.field private static final MSG_MOVE_TOP:I = 0x1

.field private static final MSG_REMOVE_BG:I = 0x7

.field private static final MSG_REMOVE_FAKE_HWP:I = 0x11

.field private static final MSG_SWITCH_DEFAULT_HINT:I = 0x5

.field private static final MSG_TOGGLE_HWP:I = 0x10

.field static final OPTION_MENU_ITEM_ADD_TO_CONTACT:I = 0x4

.field static final OPTION_MENU_ITEM_ASSISTED_DIALING:I = 0xb

.field static final OPTION_MENU_ITEM_CALL_HISTORY:I = 0x2

.field static final OPTION_MENU_ITEM_CDMA_EXIT_EMERGENCY:I = 0x8

.field static final OPTION_MENU_ITEM_CONTACTS:I = 0x1

.field static final OPTION_MENU_ITEM_IP_DIAL:I = 0xa

.field private static final OPTION_MENU_ITEM_LOOPBACK_MODE:I = 0x35

.field private static final OPTION_MENU_ITEM_PREFIX_DIAL:I = 0x36

.field static final OPTION_MENU_ITEM_SETTINGS:I = 0x6

.field static final OPTION_MENU_ITEM_SMART_SEARCH_HIT:I = 0x7

.field static final OPTION_MENU_ITEM_SPEED_DIAL:I = 0x5

.field static final OPTION_MENU_ITEM_SWITCH_KEYPAD:I = 0xc

.field private static final OPTION_MENU_ITEM_TESTING_VIDEO_CALL:I = 0x34

.field private static final OPTION_MENU_ITEM_VIDEO_CALL:I = 0x32

.field static final OPTION_MENU_ITEM_VIEW_CONTACT:I = 0x3

.field private static final OPTION_MENU_ITEM_VOICE_CALL:I = 0x33

.field static final PERFORMANCE:Z = true

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PLAY_TONE_ON_CLICK:Z = false

.field private static final PLAY_TONE_ON_TOUCH_DOWN:Z = true

.field private static final REQUEST_CODE_PICKER:I = 0x6f

.field private static final REQUEST_VOICE_INPUT:I = 0x70

.field public static final RETURN_CODE_EXISTED:I = 0x2

.field public static final RETURN_CODE_NEW:I = 0x3

.field private static final SHOW_KEYPAD_BUTTON:Z = true

.field private static final SHRINKED:Z = false

.field static final SIGNAL_GO:Ljava/lang/String; = "com.htc.content.Intent.ACTION_SOCIAL_GO"

.field static final SIGNAL_PAUSE:Ljava/lang/String; = "com.htc.content.Intent.ACTION_SOCIAL_PAUSE"

.field private static final STOP_TONE:I = 0x1

.field private static final SUITABLE_FONT_SIZE_LARGER:Z = true

.field private static final SUITABLE_FONT_SIZE_SMALLER:Z = false

.field private static final SUPOORT_PAUSE_AND_WAIT:Z = true

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_LONG_CLICK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_VT:Z = false

.field private static final SYSTEM_STREAM_VOLUME:I = 0x7

.field private static final TAG:Ljava/lang/String; = "HtcDialer"

.field private static TEMP_TEXT_PAINT:Landroid/text/TextPaint; = null

.field private static final TONE_DURATION:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x32

.field public static USE_CHINESE_HANDWRITE_IME:Z = false

.field private static final VIBRATE_NO_REPEAT:I = -0x1

.field private static final isEnableRoamingAssist:Z

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;

.field private static myContactId:J


# instance fields
.field private bReturn_MESSAGE_MOVE_TOP:Z

.field private isHandWritePadShow:Z

.field private mAccumulatorBg:Landroid/view/ViewGroup;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBackspace:Landroid/view/View;

.field private mBgRemoved:Z

.field private mCalendarEventUri:Ljava/lang/String;

.field private mCdmaE911ModeHint:Landroid/widget/TextView;

.field private mCdmaE911ModeHint1:Landroid/widget/TextView;

.field private mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

.field private mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

.field private mCdmaPowerSaveModeHint:Landroid/widget/TextView;

.field private mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

.field private mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

.field private mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

.field private mConfirmBlacklistDlg:Landroid/app/Dialog;

.field private mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

.field private mContentView:Landroid/view/View;

.field private mCurConfig:Landroid/content/res/Configuration;

.field private mDTMF_TONE_TYPE:I

.field private mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

.field private mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mDialpad:Landroid/view/ViewGroup;

.field private mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

.field private mDigitsMode:I

.field private mDigitsTextCache:Ljava/lang/CharSequence;

.field private mDisableEditNumSearch:Z

.field private mDisplayPeriod:Z

.field private mEmergencyNumbers:[Ljava/lang/String;

.field private mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

.field private mFirstCallKeyDown:Z

.field private mFooterView:Landroid/view/View;

.field private mFormatting:Z

.field private mGestureDetectorForList:Landroid/view/GestureDetector;

.field private mHTCIMEFilter:Landroid/content/IntentFilter;

.field private mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHeadText:Landroid/widget/TextView;

.field private mHintArea:Landroid/view/View;

.field private mHomeDigitSearch:Z

.field private mIpDialCursor:Landroid/database/Cursor;

.field private mIpDialDirty:Z

.field private mIpDialObserver:Landroid/database/ContentObserver;

.field mIsEditMode:Z

.field private mIsListExpanded:Z

.field private mIsNaviOn:Z

.field private mItemScrollThread:F

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeypadGestureDetector:Landroid/view/GestureDetector;

.field private mKeypadLocked:Z

.field private mKeypadShadow:Landroid/view/View;

.field private mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

.field private mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNeedClearText:Z

.field private mOTAFilter:Landroid/content/IntentFilter;

.field private mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

.field public mPhoneType:I

.field private mPosOfUserSelect:I

.field private mPreEnableEditNumSearch:Z

.field private mPreIme:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

.field private mRandom:Ljava/util/Random;

.field private mSaveContactView:Landroid/view/View;

.field private mSaveToCotnactDialog:Landroid/app/Dialog;

.field private mShowKeypad:Landroid/view/View;

.field private mSwitchNumberThreshold:F

.field private mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

.field private mTmpIpPostfix:Ljava/lang/String;

.field private mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

.field private misHandlingMultipleStartKey:Z

.field private otaDialog:Lcom/htc/widget/HtcAlertDialog;

.field private resetMultipleStarKeyFlag:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    sget-boolean v0, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    sput-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    .line 410
    const/16 v0, 0x32

    sput v0, Lcom/android/htcdialer/Dialer;->DEFAULT_CONTACT_VIEW_SIZE:I

    .line 485
    sput-boolean v2, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    .line 488
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v3, 0x4040

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-nez v0, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    .line 519
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/htcdialer/Dialer;->myContactId:J

    .line 555
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_0

    const-wide/high16 v3, 0x4008

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    .line 7527
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    return-void

    :cond_3
    move v0, v2

    .line 488
    goto :goto_0

    :cond_4
    move v0, v2

    .line 555
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/BaseSmartSearchList;-><init>()V

    .line 269
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    .line 383
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mFooterView:Landroid/view/View;

    .line 406
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    .line 407
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 415
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 418
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 421
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 428
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    .line 461
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mIsListExpanded:Z

    .line 482
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 500
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    .line 506
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    .line 527
    new-instance v0, Lcom/android/htcdialer/Dialer$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$1;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 545
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    .line 565
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIsNaviOn:Z

    .line 585
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mPreEnableEditNumSearch:Z

    .line 586
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mDisableEditNumSearch:Z

    .line 636
    new-instance v0, Lcom/android/htcdialer/Dialer$2;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$2;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    .line 731
    new-instance v0, Lcom/android/htcdialer/Dialer$3;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$3;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    .line 737
    iput v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    .line 1238
    iput v1, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    .line 7529
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    .line 7530
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    .line 7590
    new-instance v0, Lcom/android/htcdialer/Dialer$24;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$24;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

    .line 8368
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/Dialer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->handleCdmaMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/htcdialer/Dialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/htcdialer/Dialer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mItemScrollThread:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initItemRowHeightData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htcdialer/Dialer;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htcdialer/Dialer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initSwitchNumberThreshold()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htcdialer/Dialer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htcdialer/Dialer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/htcdialer/Dialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/htcdialer/Dialer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->updateUserSelection(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->updateUserSelectionByPosition(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/htcdialer/Dialer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/htcdialer/Dialer;JZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htcdialer/Dialer;->generateViewContactIntent(JZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/htcdialer/Dialer;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/htcdialer/Dialer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htcdialer/Dialer;Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/Dialer;->handleHomeDigit(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$ContactCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/htcdialer/Dialer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/htcdialer/Dialer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->viewUnknownContactCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/htcdialer/Dialer;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/htcdialer/Dialer;Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htcdialer/Dialer;->updateImageView(Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/htcdialer/Dialer;Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/htcdialer/Dialer;ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/Dialer;->updatePhotoType(ILcom/android/htcdialer/Dialer$ListItemCache;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/Dialer;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/htcdialer/Dialer;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->closeIpDialCursor()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/htcdialer/Dialer;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/android/htcdialer/Dialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/htcdialer/Dialer;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/htcdialer/Dialer;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->requeryIpDial()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htcdialer/Dialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/htcdialer/Dialer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->addContactToBlacklist(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/ButtonGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/DialerKeypad;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    return-object v0
.end method

.method private addContactToBlacklist(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 8386
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 8387
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-nez v0, :cond_1

    .line 8400
    :cond_0
    :goto_0
    return-void

    .line 8390
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 8391
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v2, :cond_0

    .line 8392
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v1

    .line 8393
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    .line 8394
    .local v6, phoneNumber:Ljava/lang/String;
    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    .line 8395
    .local v4, person_id:J
    :goto_1
    if-nez v1, :cond_3

    move v3, v7

    .line 8396
    .local v3, isSim:Z
    :goto_2
    invoke-static {p0, v4, v5, v3, v6}, Lcom/htc/util/contacts/BlacklistUtils;->addContactToBlacklist(Landroid/content/Context;JZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8397
    const v8, 0x7f090086

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8394
    .end local v3           #isSim:Z
    .end local v4           #person_id:J
    :cond_2
    iget-wide v4, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    goto :goto_1

    .line 8395
    .restart local v4       #person_id:J
    :cond_3
    iget-boolean v3, v1, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    goto :goto_2
.end method

.method private addVoiceMailNumberPanel()V
    .locals 3

    .prologue
    .line 6404
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 6405
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 6406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6415
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6416
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6417
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 6418
    return-void
.end method

.method private applyThemeBackgroundResource(ILjava/lang/String;)V
    .locals 4
    .parameter "viewId"
    .parameter "resName"

    .prologue
    .line 8071
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8072
    .local v1, view:Landroid/view/View;
    const-string v2, "drawable"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 8076
    .local v0, resId:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 8077
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8081
    :cond_0
    return-void
.end method

.method private applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "resName"

    .prologue
    .line 8087
    const-string v1, "drawable"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 8091
    .local v0, resId:I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 8092
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8096
    :cond_0
    return-void
.end method

.method private applyThemeOnActivityCreated()V
    .locals 2

    .prologue
    .line 8060
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "phone_accumulator_btn_bg"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 8061
    const v0, 0x202016a

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "htc_btn_dial_delete"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 8062
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020006

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "htc_btn_dial_delete"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 8063
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020007

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "htc_btn_dial_delete"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 8064
    return-void
.end method

.method private callDirectly(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 3833
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->fireCallDirectly(Landroid/content/Intent;)V

    .line 3838
    return-void
.end method

.method private callOut()V
    .locals 1

    .prologue
    .line 6237
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    packed-switch v0, :pswitch_data_0

    .line 6244
    :goto_0
    return-void

    .line 6241
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    goto :goto_0

    .line 6237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htcdialer/Dialer$6;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$6;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1231
    return-void
.end method

.method private changeSearchMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7621
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 7622
    .local v0, result:[I
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htcdialer/Dialer;->getTaskBarRightState([IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7623
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020007

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7624
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 7625
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 7627
    :cond_0
    return-void
.end method

.method private checkMMIcode(Ljava/lang/String;)Z
    .locals 7
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x1

    .line 3747
    const-string v3, "##21#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##67#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##61#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##62#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##002#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##004#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*71"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*72"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*73"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3752
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3753
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f090080

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3754
    const v3, 0x7f09008b

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3755
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3756
    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/htcdialer/Dialer$15;

    invoke-direct {v4, p0}, Lcom/android/htcdialer/Dialer$15;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3762
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 3763
    .local v1, dlg:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3764
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3767
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/Dialog;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clickToMO()Z
    .locals 2

    .prologue
    .line 7992
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v0, :cond_0

    :cond_0
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeIpDialCursor()V
    .locals 2

    .prologue
    .line 8318
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8319
    new-instance v0, Lcom/android/htcdialer/Dialer$29;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$29;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 8329
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8331
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private contactCardPlaceCall()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4373
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 4376
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v3, :cond_1

    .line 4377
    new-instance v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    invoke-direct {v1}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 4378
    .local v1, contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 4379
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 4380
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 4381
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v3

    iput v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 4382
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhotoId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v0, 0x1

    .line 4384
    .local v0, bHasPhoto:Z
    :cond_0
    iput-boolean v0, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 4387
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 4390
    .end local v0           #bHasPhoto:Z
    .end local v1           #contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_1
    return-void
.end method

.method private createMissingVoicemailDialog(Landroid/os/Message;Landroid/os/Message;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "msg"
    .parameter "msg2"

    .prologue
    .line 6368
    const/4 v0, 0x0

    .line 6369
    .local v0, resId:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6370
    const v0, 0x7f090023

    .line 6375
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090026

    new-instance v3, Lcom/android/htcdialer/Dialer$23;

    invoke-direct {v3, p0, p1}, Lcom/android/htcdialer/Dialer$23;-><init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090025

    new-instance v3, Lcom/android/htcdialer/Dialer$22;

    invoke-direct {v3, p0, p2}, Lcom/android/htcdialer/Dialer$22;-><init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/htcdialer/Dialer$21;

    invoke-direct {v2, p0, p1}, Lcom/android/htcdialer/Dialer$21;-><init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1

    .line 6371
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6372
    const v0, 0x7f0900af

    goto :goto_0

    .line 6374
    :cond_1
    const v0, 0x7f090024

    goto :goto_0
.end method

.method private doSpeedDial(I)Z
    .locals 10
    .parameter "location"

    .prologue
    const/4 v3, 0x0

    .line 6430
    const/4 v9, 0x0

    .line 6432
    .local v9, result:Z
    const/4 v0, 0x2

    if-gt v0, p1, :cond_2

    const/16 v0, 0x9

    if-gt p1, v0, :cond_2

    .line 6434
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v7

    .line 6436
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6437
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 6439
    :cond_0
    sget-object v0, Lcom/android/htcdialer/util/SpeedDialUtils;->CONTENT_URI_LOCATION:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 6442
    .local v1, numberLoactionUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6445
    .local v8, numberCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6447
    invoke-static {v8}, Lcom/android/htcdialer/util/SpeedDialUtils;->createContactInfo(Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v6

    .line 6449
    .local v6, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    if-eqz v6, :cond_1

    .line 6450
    iget-wide v2, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 6451
    iget-object v0, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 6457
    :goto_0
    const/4 v9, 0x1

    .line 6461
    .end local v6           #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_1
    if-eqz v8, :cond_2

    .line 6462
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6466
    .end local v1           #numberLoactionUri:Landroid/net/Uri;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v8           #numberCursor:Landroid/database/Cursor;
    :cond_2
    return v9

    .line 6453
    .restart local v1       #numberLoactionUri:Landroid/net/Uri;
    .restart local v6       #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v8       #numberCursor:Landroid/database/Cursor;
    :cond_3
    iget-wide v2, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/htcdialer/Dialer;->hasPhoto(J)Z

    move-result v0

    iput-boolean v0, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 6454
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    goto :goto_0
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 6421
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 6422
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 6423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6425
    :cond_0
    return-void
.end method

.method private editNumberBeforeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "select"

    .prologue
    .line 4099
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4115
    :goto_0
    return-void

    .line 4101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4106
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4107
    const-string v1, "SelectionStart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4112
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->onEditNumberIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private editNumberWithIpDialPrefix()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7762
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    .line 7766
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7767
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v2, v4, :cond_0

    .line 7769
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7772
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    .line 7773
    return-void
.end method

.method private editNumberWithIpDialPrefix(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x1

    .line 7777
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 7793
    :goto_0
    return-void

    .line 7778
    :cond_0
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    .line 7783
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 7784
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7785
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7786
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7787
    .local v0, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 7786
    .end local v0           #ipDialNumber:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    goto :goto_1

    .line 7790
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->showDialog(I)V

    goto :goto_0
.end method

.method private enlargeTouchArea(Landroid/view/View;I)V
    .locals 2
    .parameter "delegate"
    .parameter "gap"

    .prologue
    .line 8013
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8014
    .local v0, parent:Landroid/view/View;
    new-instance v1, Lcom/android/htcdialer/Dialer$28;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/htcdialer/Dialer$28;-><init>(Lcom/android/htcdialer/Dialer;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8027
    return-void
.end method

.method private ensureLayoutPreparedBeofreOnResume()V
    .locals 3

    .prologue
    .line 1172
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1174
    .local v0, topView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1175
    const-string v1, "HtcDialer"

    const-string v2, "top view is missed. Re-assign it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->setupContentView()V

    .line 1177
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->initInputEditor()V

    .line 1179
    :cond_0
    return-void
.end method

.method private expandListView()V
    .locals 1

    .prologue
    .line 6160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->expandListView(Z)V

    .line 6161
    return-void
.end method

.method private expandListView(Z)V
    .locals 9
    .parameter "expand"

    .prologue
    const v8, 0x7f0a000d

    const/4 v7, 0x0

    .line 6169
    if-eqz p1, :cond_1

    const-string v4, "expanded"

    .line 6176
    .local v4, state:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->moveSelectionToTop()V

    .line 6178
    :cond_0
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {v5}, Lcom/android/htcdialer/widget/DialerKeypad;->getDialKeypad()Landroid/view/View;

    move-result-object v0

    .line 6180
    .local v0, keypad:Landroid/view/View;
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->mIsListExpanded:Z

    .line 6182
    iget-object v5, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6183
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6184
    .local v3, scParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 6185
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6186
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6187
    const/4 v5, -0x1

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6204
    :goto_1
    iget-object v5, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6205
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6210
    return-void

    .line 6169
    .end local v0           #keypad:Landroid/view/View;
    .end local v2           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #scParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #state:Ljava/lang/String;
    :cond_1
    const-string v4, "shrinked"

    goto :goto_0

    .line 6189
    .restart local v0       #keypad:Landroid/view/View;
    .restart local v2       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v3       #scParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #state:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6193
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6194
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6195
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6197
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6198
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 6200
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method private findViewAndSetupListener2(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2282
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2283
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2284
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2285
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2287
    :cond_0
    return-void
.end method

.method private findViewAndSetupListener3(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2264
    if-eqz p1, :cond_0

    .line 2265
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2266
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2267
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2270
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2273
    :cond_0
    return-void
.end method

.method private findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V
    .locals 1
    .parameter "parent"
    .parameter "id"
    .parameter "tone"

    .prologue
    .line 2250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2251
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;)V

    .line 2253
    invoke-direct {p0, v0, p3}, Lcom/android/htcdialer/Dialer;->setTone(Landroid/view/View;Ljava/lang/Integer;)V

    .line 2255
    return-void
.end method

.method private fireCallDirectly(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 3865
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v1, :cond_0

    .line 3866
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v1, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->attachCallType(Landroid/content/Intent;)V

    .line 3868
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3869
    const-string v1, "com.htc.calendar.event_uri"

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3870
    const-string v1, "com.android.phone.ShowDialpad"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3871
    const-string v1, "HtcDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireCallDirectly(): CALENDAR_EVENT mCalendarEventUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    :cond_1
    invoke-static {p1}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    move-result v0

    .line 3877
    .local v0, success:Z
    return-void
.end method

.method private generateSearchString(Landroid/text/Editable;)Ljava/lang/String;
    .locals 9
    .parameter "input"

    .prologue
    .line 2387
    const-string v6, ""

    .line 2388
    .local v6, searchString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2390
    .local v2, inputString:Ljava/lang/String;
    const/16 v7, 0x2b

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 2391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "12:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2392
    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 2397
    .local v5, numbers:[C
    :goto_0
    move-object v0, v5

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-char v4, v0, v1

    .line 2398
    .local v4, number:C
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2397
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2394
    .end local v0           #arr$:[C
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #number:C
    .end local v5           #numbers:[C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .restart local v5       #numbers:[C
    goto :goto_0

    .line 2400
    .restart local v0       #arr$:[C
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    :cond_1
    return-object v6
.end method

.method private generateViewContactIntent(JZLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "personId"
    .parameter "isSIM"
    .parameter "tab"

    .prologue
    .line 8346
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 8349
    .local v1, uriLookup:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8350
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8351
    if-eqz p3, :cond_0

    .line 8352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8356
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8361
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8362
    const-string v2, "DefaultTab"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8364
    :cond_1
    return-object v0
.end method

.method private static getBitmapOptions(Landroid/graphics/Bitmap;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 609
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 611
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 612
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 613
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 614
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 615
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 616
    if-eqz p0, :cond_0

    .line 617
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 620
    :cond_0
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private final getDialerPhone(I)[Lcom/android/htcdialer/search/SearchablePhone;
    .locals 3
    .parameter "position"

    .prologue
    .line 7702
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 7703
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 7704
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactPhones(Lcom/android/htcdialer/search/SearchableObject;)[Lcom/android/htcdialer/search/SearchablePhone;

    move-result-object v2

    return-object v2
.end method

.method private getIpDialItemCount()I
    .locals 1

    .prologue
    .line 7886
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 7887
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 7889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberByPosition(I)Ljava/lang/String;
    .locals 3
    .parameter "itemPos"

    .prologue
    .line 4069
    const-string v2, ""

    .line 4070
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 4071
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 4072
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v1, :cond_0

    .line 4073
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v2

    .line 4075
    :cond_0
    return-object v2
.end method

.method private getTone(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 8521
    if-eqz p1, :cond_0

    .line 8522
    const v1, 0x7f0b0021

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 8523
    .local v0, td:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8524
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #td:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8527
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleCdmaMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 8202
    const/4 v0, 0x1

    .line 8203
    .local v0, comsumed:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 8258
    :pswitch_0
    const/4 v0, 0x0

    .line 8261
    :cond_0
    :goto_0
    return v0

    .line 8207
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    if-eqz v1, :cond_0

    .line 8208
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-nez v1, :cond_1

    .line 8209
    new-instance v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    .line 8211
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->onListenChanging(Z)V

    goto :goto_0

    .line 8216
    :pswitch_2
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_0

    .line 8217
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode_CDMA_DEFAULT_HINT()V

    goto :goto_0

    .line 8222
    :pswitch_3
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_0

    .line 8223
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->radioChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8224
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_0

    .line 8230
    :pswitch_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_0

    .line 8231
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v1}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeSend()V

    goto :goto_0

    .line 8237
    :pswitch_5
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 8239
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8240
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8241
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 8243
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 8249
    :pswitch_6
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 8251
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8252
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8203
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private handleHomeDigit(Ljava/lang/Object;II)V
    .locals 9
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8265
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v2, p1

    .line 8266
    check-cast v2, Ljava/lang/String;

    .line 8267
    .local v2, digit:Ljava/lang/String;
    move v1, p3

    .line 8269
    .local v1, code:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8270
    const/4 v5, 0x0

    .line 8271
    .local v5, speedDial:Z
    if-ne v7, p2, :cond_0

    .line 8274
    const/16 v6, 0xa

    :try_start_0
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 8275
    .local v4, position:I
    if-ne v7, v4, :cond_2

    .line 8276
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8285
    .end local v4           #position:I
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 8289
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v6}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8291
    if-eqz v1, :cond_1

    .line 8292
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v8, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 8293
    .local v3, event:Landroid/view/KeyEvent;
    invoke-static {v3}, Lcom/android/htcdialer/util/KeyEventUtils;->checkKeyCodeSwitch(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 8295
    invoke-direct {p0, v8}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 8297
    invoke-static {v3}, Lcom/android/htcdialer/util/KeyEventUtils;->getAppendingString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v0

    .line 8298
    .local v0, append:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v6}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 8299
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v6, v0}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 8301
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 8303
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getInputEditor()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8310
    .end local v0           #append:Ljava/lang/String;
    .end local v1           #code:I
    .end local v2           #digit:Ljava/lang/String;
    .end local v3           #event:Landroid/view/KeyEvent;
    .end local v5           #speedDial:Z
    :cond_1
    :goto_1
    return-void

    .line 8278
    .restart local v1       #code:I
    .restart local v2       #digit:Ljava/lang/String;
    .restart local v4       #position:I
    .restart local v5       #speedDial:Z
    :cond_2
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_0

    .line 8308
    .end local v1           #code:I
    .end local v2           #digit:Ljava/lang/String;
    .end local v4           #position:I
    .end local v5           #speedDial:Z
    :cond_3
    const-string v6, "HtcDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown home digit type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8280
    .restart local v1       #code:I
    .restart local v2       #digit:Ljava/lang/String;
    .restart local v5       #speedDial:Z
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private handleHythenAfterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7532
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    if-nez v2, :cond_3

    .line 7533
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    .line 7534
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    if-eqz v2, :cond_0

    .line 7535
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    invoke-virtual {v2, p1}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->afterTextChanged(Landroid/text/Editable;)V

    .line 7540
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    if-nez v2, :cond_4

    .line 7541
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 7544
    iget-boolean v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-ne v2, v3, :cond_1

    .line 7545
    iput-boolean v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 7547
    iput-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 7550
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 7552
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2, v4}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 7558
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-static {p0, v2, v3}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7560
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 7580
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    .line 7582
    :cond_3
    return-void

    .line 7555
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_0

    .line 7563
    :cond_5
    iget-boolean v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v2, :cond_2

    .line 7564
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 7567
    .local v1, length:I
    if-lez v1, :cond_7

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v2, :cond_7

    .line 7568
    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 7569
    .local v0, keyClicked:Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_6

    .line 7570
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    .line 7576
    .end local v0           #keyClicked:Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    goto :goto_1

    .line 7573
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    goto :goto_2
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 6334
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 6335
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 6337
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 6338
    .local v1, msg2:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 6340
    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/Dialer;->createMissingVoicemailDialog(Landroid/os/Message;Landroid/os/Message;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6344
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 6347
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 6349
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6350
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "smile_button"

    invoke-static {v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 6351
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "smile_button"

    invoke-static {v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 6356
    :cond_0
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const v4, 0x102023a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6359
    .local v2, title:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 6360
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6364
    :cond_1
    return-void
.end method

.method private hideDialpad()V
    .locals 6

    .prologue
    const v5, 0x7f0b0015

    const v4, 0x7f09009a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5253
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_1

    .line 5292
    :cond_0
    :goto_0
    return-void

    .line 5257
    :cond_1
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5261
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5262
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 5266
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 5267
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->expandListView()V

    .line 5269
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 5271
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5272
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020006

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5277
    :cond_4
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_5

    .line 5278
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020007

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5284
    :cond_5
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 5285
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5286
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setVisibility(I)V

    .line 5291
    :cond_6
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideHandWritePanel()V
    .locals 4

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 7633
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v1, :cond_1

    .line 7634
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7635
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7638
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7640
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7641
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 7642
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->clearFocus()V

    .line 7643
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->setRequestedInputType(Landroid/widget/EditText;)V

    .line 7644
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020001

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 7646
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method private initCDMAFeature()V
    .locals 4

    .prologue
    .line 7896
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 7897
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 7898
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7899
    .local v0, cdma_acumlator:Landroid/view/View;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7901
    const v1, 0x7f0b002f

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    .line 7902
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 7903
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7904
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7906
    const v1, 0x7f0b0030

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    .line 7907
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 7908
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7911
    :cond_1
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    .line 7912
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 7913
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7916
    :cond_2
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    .line 7917
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 7918
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7919
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7921
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    .line 7922
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 7923
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7926
    :cond_3
    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    .line 7927
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 7928
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7934
    .end local v0           #cdma_acumlator:Landroid/view/View;
    :cond_4
    return-void
.end method

.method private initDigitsArea(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 5837
    if-nez p1, :cond_0

    .line 5845
    :goto_0
    return-void

    .line 5842
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5843
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5844
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method private initForFirstCreate()V
    .locals 2

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initListView()V

    .line 1308
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/KeypadUtils;->update(Landroid/content/ContentResolver;)V

    .line 1309
    return-void
.end method

.method private final initItemRowHeightData()V
    .locals 2

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/htcdialer/Dialer;->mItemScrollThread:F

    .line 1001
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 878
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/htcdialer/Dialer$4;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$4;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    .line 901
    return-void
.end method

.method private initListGestureDetector()V
    .locals 2

    .prologue
    .line 904
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/htcdialer/Dialer$5;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$5;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mGestureDetectorForList:Landroid/view/GestureDetector;

    .line 997
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1313
    .local v0, listView:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->registerForContextMenu(Landroid/view/View;)V

    .line 1316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 1318
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1320
    :cond_0
    return-void
.end method

.method private final initSwitchNumberThreshold()V
    .locals 3

    .prologue
    .line 8513
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 8514
    .local v0, lv:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 8515
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v1

    .line 8516
    .local v1, width:I
    div-int/lit8 v2, v1, 0x4

    int-to-float v2, v2

    iput v2, p0, Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F

    .line 8518
    .end local v1           #width:I
    :cond_0
    return-void
.end method

.method private initTabletTitle()V
    .locals 11

    .prologue
    const v10, 0x7f0900ac

    const v9, 0x7f09001e

    .line 8154
    const v5, 0x20201ba

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 8157
    .local v3, title:Landroid/view/View;
    const v5, 0x2020050

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8158
    .local v0, imgView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_icon_app_phone"

    const-string v7, "drawable"

    const-string v8, "com.android.htcdialer"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 8159
    .local v1, res:I
    if-eqz v0, :cond_0

    .line 8160
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8163
    :cond_0
    const v5, 0x2020053

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 8164
    .local v4, view:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 8165
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 8166
    :cond_1
    const v5, 0x2020054

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 8167
    .restart local v4       #view:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 8168
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 8171
    :cond_2
    const-string v2, "All contacts"

    .line 8172
    .local v2, str:Ljava/lang/String;
    const v5, 0x2020055

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 8173
    .restart local v4       #view:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 8174
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 8175
    :cond_3
    const v5, 0x2020056

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 8176
    .restart local v4       #view:Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 8177
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 8178
    :cond_4
    return-void
.end method

.method private initTaskBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 6291
    const v6, 0x7f0b003c

    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/widget/ButtonGroup;

    iput-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    .line 6294
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "cmd_bar_7"

    const-string v8, "layout"

    const-string v9, "com.android.htcdialer"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6296
    .local v3, layout:I
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v6, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setLayoutResources(I)V

    .line 6297
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v7, 0x2020001

    invoke-virtual {v6, v7}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 6300
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 6301
    .local v4, size:F
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20a0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 6302
    .local v1, color:I
    invoke-virtual {v5, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6303
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6305
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v7, 0x2020006

    const v8, 0x7f0b0016

    const v9, 0x7f09009b

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v0

    .line 6308
    .local v0, btn1:Landroid/view/View;
    sget-boolean v6, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v6, :cond_0

    .line 6309
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 6310
    .local v2, enabled:Z
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 6313
    .end local v2           #enabled:Z
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->updateBarText(Z)V

    .line 6314
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updateTaskBarRightIcon()V

    .line 6316
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v6, p0}, Lcom/android/htcdialer/widget/ButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6320
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    new-instance v7, Lcom/android/htcdialer/Dialer$20;

    invoke-direct {v7, p0}, Lcom/android/htcdialer/Dialer$20;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v6, v7}, Lcom/android/htcdialer/widget/ButtonGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6325
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->showTaskBar()V

    .line 6326
    return-void
.end method

.method private initVTHelper()V
    .locals 5

    .prologue
    const/16 v4, 0x33

    const/16 v3, 0x32

    .line 7938
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    if-nez v0, :cond_0

    .line 7940
    sget-boolean v0, Lcom/android/htcdialer/util/VTUtils;->VT_TEST:Z

    if-eqz v0, :cond_1

    .line 7941
    new-instance v0, Lcom/android/htcdialer/util/VTUtils$VTHelper;

    const/16 v1, 0x34

    const/16 v2, 0x35

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/htcdialer/util/VTUtils$VTHelper;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    .line 7950
    :cond_0
    :goto_0
    return-void

    .line 7946
    :cond_1
    new-instance v0, Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-direct {v0, v3, v4}, Lcom/android/htcdialer/util/VTUtils$VTHelper;-><init>(II)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    goto :goto_0
.end method

.method private input(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-nez v0, :cond_0

    .line 4911
    :goto_0
    return-void

    .line 4900
    :cond_0
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 4905
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 4906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    .line 4908
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 4909
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    sget-object v1, Lcom/android/htcdialer/util/KeypadUtils;->SEARCH_PATTERN:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4910
    sget-object v0, Lcom/android/htcdialer/util/KeypadUtils;->KEY_MAP:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_0
.end method

.method private isDisableEditNumberIntentSearch()Z
    .locals 1

    .prologue
    .line 8540
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mDisableEditNumSearch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mPreEnableEditNumSearch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNationalRoaming()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 8414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8426
    .local v0, networkOperator:Ljava/lang/String;
    .local v1, simOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 8420
    .end local v0           #networkOperator:Ljava/lang/String;
    .end local v1           #simOperator:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 8421
    .restart local v1       #simOperator:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 8423
    .restart local v0       #networkOperator:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 8424
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isToHideTaskbar()Z
    .locals 2

    .prologue
    .line 1551
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1552
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1555
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v1

    return v1
.end method

.method private keyPressed(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x2

    .line 4414
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v2, :cond_1

    .line 4415
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4416
    .local v1, text:Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 4418
    .local v0, pos:I
    if-nez v0, :cond_1

    .line 4420
    sget-boolean v2, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v2, v4, :cond_1

    .line 4421
    :cond_0
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v2, :cond_1

    .line 4422
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeRequest()V

    .line 4434
    .end local v0           #pos:I
    .end local v1           #text:Landroid/text/Editable;
    :cond_1
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4435
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 4437
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 4447
    :cond_2
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2, v3, p1}, Lcom/android/htcdialer/util/KeypadUtils;->keyPress(Landroid/widget/TextView;I)V

    .line 4449
    sget-boolean v2, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v2, v4, :cond_4

    .line 4450
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v2, :cond_4

    .line 4451
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeRequest()V

    .line 4455
    :cond_4
    return-void
.end method

.method private launchHomeDigit(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8181
    if-eqz p1, :cond_1

    .line 8182
    const-string v6, "key"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8184
    .local v1, digit:Ljava/lang/String;
    const-string v6, "key_code"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8187
    .local v0, code:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8188
    const-string v6, "long_press"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 8191
    .local v2, isLongClick:Z
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 8192
    .local v3, msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 8193
    iput v0, v3, Landroid/os/Message;->arg2:I

    .line 8194
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8195
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 8196
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    .line 8199
    .end local v0           #code:I
    .end local v1           #digit:Ljava/lang/String;
    .end local v2           #isLongClick:Z
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 8100
    const-string v0, "HtcDialer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8101
    return-void
.end method

.method private mapFNCharToDigit(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 6250
    const/4 v0, 0x0

    .line 6251
    .local v0, nDigit:I
    sparse-switch p1, :sswitch_data_0

    .line 6283
    :goto_0
    return v0

    .line 6253
    :sswitch_0
    const/4 v0, 0x0

    .line 6254
    goto :goto_0

    .line 6256
    :sswitch_1
    const/4 v0, 0x1

    .line 6257
    goto :goto_0

    .line 6259
    :sswitch_2
    const/4 v0, 0x2

    .line 6260
    goto :goto_0

    .line 6262
    :sswitch_3
    const/4 v0, 0x3

    .line 6263
    goto :goto_0

    .line 6265
    :sswitch_4
    const/4 v0, 0x4

    .line 6266
    goto :goto_0

    .line 6268
    :sswitch_5
    const/4 v0, 0x5

    .line 6269
    goto :goto_0

    .line 6271
    :sswitch_6
    const/4 v0, 0x6

    .line 6272
    goto :goto_0

    .line 6274
    :sswitch_7
    const/4 v0, 0x7

    .line 6275
    goto :goto_0

    .line 6277
    :sswitch_8
    const/16 v0, 0x8

    .line 6278
    goto :goto_0

    .line 6280
    :sswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 6251
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_9
        0x20 -> :sswitch_5
        0x21 -> :sswitch_2
        0x22 -> :sswitch_6
        0x2e -> :sswitch_3
        0x2f -> :sswitch_4
        0x33 -> :sswitch_1
        0x34 -> :sswitch_8
        0x36 -> :sswitch_7
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method private mappedTo12KeyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sNumber"

    .prologue
    .line 7193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7194
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 7195
    .local v0, c:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 7196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 7197
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7199
    packed-switch v0, :pswitch_data_0

    .line 7209
    :goto_1
    :pswitch_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 7195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7200
    :pswitch_1
    const/16 v0, 0x32

    goto :goto_1

    .line 7201
    :pswitch_2
    const/16 v0, 0x33

    goto :goto_1

    .line 7202
    :pswitch_3
    const/16 v0, 0x34

    goto :goto_1

    .line 7203
    :pswitch_4
    const/16 v0, 0x35

    goto :goto_1

    .line 7204
    :pswitch_5
    const/16 v0, 0x36

    goto :goto_1

    .line 7205
    :pswitch_6
    const/16 v0, 0x37

    goto :goto_1

    .line 7206
    :pswitch_7
    const/16 v0, 0x38

    goto :goto_1

    .line 7207
    :pswitch_8
    const/16 v0, 0x39

    goto :goto_1

    .line 7213
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7199
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private moveSelectionToTop()V
    .locals 4

    .prologue
    .line 6216
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    if-lez v0, :cond_0

    .line 6217
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->bReturn_MESSAGE_MOVE_TOP:Z

    if-nez v0, :cond_0

    .line 6218
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6220
    :cond_0
    return-void
.end method

.method private needInputType()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7999
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8001
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private okToSwitchNumber(II)Z
    .locals 4
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 8049
    const/4 v0, 0x0

    .line 8050
    .local v0, toSwitch:Z
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 8051
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    .line 8053
    :cond_0
    :goto_0
    const-string v1, "HtcDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8055
    return v0

    .line 8051
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x2020007

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5122
    packed-switch p1, :pswitch_data_0

    .line 5168
    :goto_0
    :pswitch_0
    return v1

    .line 5125
    :pswitch_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    :goto_1
    move v1, v2

    .line 5168
    goto :goto_0

    .line 5128
    :pswitch_2
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_1

    .line 5131
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 5132
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v4, 0x7f0b001b

    const v5, 0x7f0900a0

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5134
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_1

    .line 5137
    :pswitch_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 5138
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v4, 0x7f0b001a

    const v5, 0x7f09009f

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5140
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_1

    .line 5144
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5145
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 5146
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->finish()V

    goto :goto_1

    .line 5150
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewContactList()V

    goto :goto_1

    .line 5153
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    goto :goto_1

    .line 5156
    :pswitch_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->callOut()V

    .line 5157
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    goto :goto_1

    .line 5161
    :pswitch_9
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V

    goto :goto_1

    .line 5122
    :pswitch_data_0
    .packed-switch 0x7f0b0015
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private parseOriginalNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 3852
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3853
    .local v0, originalNumber:Ljava/lang/String;
    const-string v2, "tel"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3854
    .local v1, schemeLength:I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3856
    const-string v2, "tel"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3861
    :goto_0
    return-object v0

    .line 3859
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private placeCall(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 4338
    if-ltz p1, :cond_0

    .line 4339
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/Dialer;->placeCall(ILandroid/view/View;)V

    .line 4353
    :goto_0
    return-void

    .line 4341
    :cond_0
    const/4 v0, 0x0

    .line 4343
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_1

    .line 4344
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4351
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private placeCall(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "selectedView"

    .prologue
    .line 4356
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/Dialer$ListItemCache;

    move-object v0, v2

    .line 4358
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 4359
    .local v1, hasPhoto:Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/Dialer;->placeCall(IZ)V

    .line 4360
    return-void

    .line 4356
    .end local v0           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    .end local v1           #hasPhoto:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4358
    .restart local v0       #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    :cond_1
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2700(Lcom/android/htcdialer/Dialer$ListItemCache;)Z

    move-result v1

    goto :goto_1
.end method

.method private placeCall(IZ)V
    .locals 3
    .parameter "position"
    .parameter "hasPhoto"

    .prologue
    .line 4363
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 4364
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    move-object v1, v2

    .line 4365
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/htcdialer/Dialer;->placeCall(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;Z)V

    .line 4367
    return-void

    .line 4364
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private placeCall(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;Z)V
    .locals 3
    .parameter "data"
    .parameter "adapter"
    .parameter "hasPhoto"

    .prologue
    .line 4397
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4398
    new-instance v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    invoke-direct {v0}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 4399
    .local v0, contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 4400
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 4401
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 4402
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v1

    iput v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 4405
    iput-boolean p3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 4408
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 4410
    .end local v0           #contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_0
    return-void
.end method

.method private placeLastDial()V
    .locals 5

    .prologue
    .line 3675
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3677
    .local v0, listAdapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-nez v0, :cond_1

    .line 3678
    const-string v3, "HtcDialer"

    const-string v4, "Invalid State - mDigitsMode=MODE_DEFAULT_HINT"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :cond_0
    :goto_0
    return-void

    .line 3681
    :cond_1
    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getLastDialIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3682
    .local v2, phoneIntent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 3685
    const-string v3, "fromDialer"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3689
    const-string v3, "home_dialing"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3692
    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    goto :goto_0

    .line 3694
    :cond_2
    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getLastDialNumber()Ljava/lang/String;

    move-result-object v1

    .line 3695
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3696
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .parameter "tone"

    .prologue
    .line 5342
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/util/KeypadUtils;->playTone(I)V

    .line 5344
    return-void
.end method

.method private playTone(II)V
    .locals 1
    .parameter "tone"
    .parameter "duration"

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/htcdialer/util/KeypadUtils;->playTone(II)V

    .line 5333
    return-void
.end method

.method private processMultipleStarKey(Landroid/text/Editable;)V
    .locals 13
    .parameter "digits"

    .prologue
    const/16 v12, 0x77

    const/16 v11, 0x70

    const/4 v10, 0x1

    const/16 v9, 0x2a

    const/4 v8, 0x0

    .line 5353
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 5354
    .local v2, len:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 5360
    .local v3, pos:I
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    if-ne v10, v4, :cond_7

    if-lez v3, :cond_7

    .line 5363
    add-int/lit8 v0, v3, -0x1

    .line 5365
    .local v0, anchor:I
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v9, v4, :cond_2

    .line 5366
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5367
    .local v1, clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5368
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "13:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5373
    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5406
    .end local v0           #anchor:I
    .end local v1           #clicked:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 5407
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5408
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    const-wide/16 v6, 0x4b0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5409
    iput-boolean v10, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    .line 5412
    :cond_1
    return-void

    .line 5376
    .restart local v0       #anchor:I
    :cond_2
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v11, v4, :cond_4

    .line 5377
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5378
    .restart local v1       #clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5379
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "14:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5384
    :cond_3
    add-int/lit8 v4, v0, 0x1

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 5387
    .end local v1           #clicked:Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v12, v4, :cond_6

    .line 5388
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5389
    .restart local v1       #clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 5390
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "10:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5395
    :cond_5
    add-int/lit8 v4, v0, 0x1

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 5398
    .end local v1           #clicked:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v5, "10:"

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5399
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 5402
    .end local v0           #anchor:I
    :cond_7
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v5, "10:"

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5403
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0
.end method

.method private profilingEditB4Call()V
    .locals 4

    .prologue
    .line 8313
    const-string v0, "edit_number_before_calling"

    const-string v1, "on"

    const-string v2, "com.android.phone"

    const-string v3, "edit_b4_call"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/phone/ProfilingUtils;->userProfiling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8315
    return-void
.end method

.method private queryIpDialCursor()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 7735
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    if-nez v0, :cond_0

    .line 7736
    new-instance v0, Lcom/android/htcdialer/Dialer$QueryHandler;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/Dialer$QueryHandler;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    .line 7739
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7740
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    const/4 v1, 0x2

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/Dialer$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7746
    :cond_2
    :goto_0
    return-void

    .line 7742
    :cond_3
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    if-eqz v0, :cond_2

    .line 7743
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->requeryIpDial()V

    .line 7744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    goto :goto_0
.end method

.method public static removeChar(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .parameter "inputString"
    .parameter "targetChar"

    .prologue
    .line 3665
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3666
    .local v6, resultString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3667
    const/4 v1, 0x0

    .line 3668
    .local v1, current:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v2, v1

    .end local v1           #current:I
    .local v2, current:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v3, v0, v4

    .line 3669
    .local v3, currentChar:C
    if-eq v3, p1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2           #current:I
    .restart local v1       #current:I
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 3668
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #current:I
    .restart local v2       #current:I
    goto :goto_0

    .line 3671
    .end local v3           #currentChar:C
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .restart local v3       #currentChar:C
    :cond_1
    move v1, v2

    .end local v2           #current:I
    .restart local v1       #current:I
    goto :goto_1
.end method

.method private removeFavorite(J)V
    .locals 4
    .parameter "personId"

    .prologue
    .line 3460
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/htc/util/contacts/ContactsUtility;->setContactsAsFavorite(Landroid/content/ContentResolver;JZ)I

    .line 3461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3462
    .local v0, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3464
    new-instance v1, Landroid/content/Intent;

    const-string v2, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3465
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "title"

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3466
    const-string v2, "contact_id_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3467
    const-string v2, "delete"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3468
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 3469
    return-void
.end method

.method private removeViewFromParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "view"

    .prologue
    .line 1563
    const/4 v0, 0x0

    .line 1564
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz p1, :cond_0

    .line 1565
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #parent:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1566
    .restart local v0       #parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1567
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1570
    :cond_0
    return-object v0
.end method

.method private requeryIpDial()V
    .locals 1

    .prologue
    .line 7749
    new-instance v0, Lcom/android/htcdialer/Dialer$26;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$26;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 7756
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7757
    return-void
.end method

.method private requestOrientation()I
    .locals 2

    .prologue
    .line 1603
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1604
    const/4 v0, 0x4

    .line 1613
    .local v0, orientation:I
    :goto_0
    return v0

    .line 1606
    .end local v0           #orientation:I
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->hasKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    const/4 v0, 0x5

    .restart local v0       #orientation:I
    goto :goto_0

    .line 1610
    .end local v0           #orientation:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private resumeVoiceCall()V
    .locals 2

    .prologue
    .line 8408
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    if-eqz v0, :cond_0

    .line 8409
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    sget-object v1, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->setType(Lcom/android/htcdialer/util/VTUtils$CallType;)V

    .line 8411
    :cond_0
    return-void
.end method

.method private safeSetVisibility(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 5830
    if-eqz p1, :cond_0

    .line 5831
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5833
    :cond_0
    return-void
.end method

.method private setIMEByLocale()Z
    .locals 3

    .prologue
    .line 7668
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7669
    .local v0, currentLocale:Ljava/util/Locale;
    if-eqz v0, :cond_1

    .line 7670
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7673
    :cond_0
    const/4 v1, 0x1

    .line 7675
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLayoutParams(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "widthId"
    .parameter "heightId"

    .prologue
    .line 8124
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8125
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8126
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8127
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8128
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8129
    return-void
.end method

.method private setListenersForKeypadControl()V
    .locals 2

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Lcom/android/htcdialer/Dialer$11;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$11;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 2220
    return-void
.end method

.method private setPaddings(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "leftId"
    .parameter "topId"
    .parameter "rightId"
    .parameter "bottomId"

    .prologue
    .line 8143
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v5, :cond_0

    .line 8144
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8145
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 8146
    .local v1, left:I
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 8147
    .local v4, top:I
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 8148
    .local v3, right:I
    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 8149
    .local v0, bottom:I
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 8151
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    return-void
.end method

.method private setPanelLayoutParams()V
    .locals 4

    .prologue
    .line 8115
    sget-boolean v2, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v2, :cond_0

    .line 8116
    const v2, 0x7f0b001d

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8117
    .local v0, panel0:Landroid/view/View;
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8118
    .local v1, panel1:Landroid/view/View;
    const v2, 0x7f0a0060

    const v3, 0x7f0a0061

    invoke-direct {p0, v0, v2, v3}, Lcom/android/htcdialer/Dialer;->setLayoutParams(Landroid/view/View;II)V

    .line 8119
    const v2, 0x7f0a0062

    const v3, 0x7f0a0063

    invoke-direct {p0, v1, v2, v3}, Lcom/android/htcdialer/Dialer;->setLayoutParams(Landroid/view/View;II)V

    .line 8121
    .end local v0           #panel0:Landroid/view/View;
    .end local v1           #panel1:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setPanelPadding()V
    .locals 9

    .prologue
    .line 8132
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_0

    .line 8133
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8134
    .local v1, panel0:Landroid/view/View;
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 8135
    .local v8, panel1:Landroid/view/View;
    const v2, 0x7f0a0064

    const v3, 0x7f0a0065

    const v4, 0x7f0a0066

    const v5, 0x7f0a0067

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer;->setPaddings(Landroid/view/View;IIII)V

    .line 8137
    const v4, 0x7f0a0068

    const v5, 0x7f0a0069

    const v6, 0x7f0a006a

    const v7, 0x7f0a006b

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/htcdialer/Dialer;->setPaddings(Landroid/view/View;IIII)V

    .line 8140
    .end local v1           #panel0:Landroid/view/View;
    .end local v8           #panel1:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setRequestedInputType(Landroid/widget/EditText;)V
    .locals 3
    .parameter "et"

    .prologue
    .line 8006
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 8007
    .local v0, type:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 8008
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 8010
    :cond_0
    return-void
.end method

.method private final setRoundCornerBitmapToPhoto(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageView"
    .parameter "bmSrc"

    .prologue
    .line 7511
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-static {v1, p2, v2}, Lcom/android/htcdialer/util/ContactsUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7512
    .local v0, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7513
    const/4 v0, 0x0

    .line 7524
    return-void
.end method

.method private setTone(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .parameter "v"
    .parameter "tone"

    .prologue
    .line 8531
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 8532
    const v0, 0x7f0b0021

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8534
    :cond_0
    return-void
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 8103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 8105
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8107
    :cond_0
    return-void
.end method

.method private setupOnItemScrollListener()V
    .locals 1

    .prologue
    .line 2477
    new-instance v0, Lcom/android/htcdialer/Dialer$12;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$12;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 2489
    .local v0, listener:Lcom/android/htcdialer/widget/OnItemScrollListener;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->setOnItemScrollListener(Lcom/android/htcdialer/widget/OnItemScrollListener;)V

    .line 2490
    return-void
.end method

.method private setupScreenOreitation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1580
    sget-boolean v2, Lcom/android/htcdialer/util/ConfigUtils;->FIXED_ORIENTATION:Z

    if-eqz v2, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return v1

    .line 1583
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->requestOrientation()I

    move-result v0

    .line 1585
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getRequestedOrientation()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1590
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1592
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->setRequestedOrientation(I)V

    .line 1593
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setupVoiceDialing()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2107
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-eqz v4, :cond_0

    .line 2108
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2109
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2111
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2112
    new-instance v4, Lcom/android/htcdialer/Dialer$10;

    invoke-direct {v4, p0}, Lcom/android/htcdialer/Dialer$10;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v4, p0, Lcom/android/htcdialer/Dialer;->mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

    .line 2124
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-nez v4, :cond_1

    .line 2125
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2126
    .local v1, hint2:Landroid/widget/TextView;
    const v4, 0x7f09004b

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2127
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2128
    const v4, 0x7f0b0024

    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2129
    .local v3, speakButton:Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2130
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2133
    .end local v1           #hint2:Landroid/widget/TextView;
    .end local v3           #speakButton:Landroid/widget/ImageView;
    :cond_1
    return-void

    .line 2120
    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const v4, 0x7f0900ab

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2121
    sput-boolean v7, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    goto :goto_0
.end method

.method private shouldEnableHandWriting()Z
    .locals 1

    .prologue
    .line 8485
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showConfirmBlockCallerDialog(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 8371
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8372
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8373
    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8374
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8375
    const v1, 0x104000a

    new-instance v2, Lcom/android/htcdialer/Dialer$30;

    invoke-direct {v2, p0, p1}, Lcom/android/htcdialer/Dialer$30;-><init>(Lcom/android/htcdialer/Dialer;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8380
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8382
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    .line 8383
    return-void
.end method

.method private showKeypadShadow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 6229
    const v2, 0x7f0b003d

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6230
    .local v0, shadow:Landroid/view/View;
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 6231
    .local v1, visible:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6233
    :cond_0
    return-void

    .line 6230
    .end local v1           #visible:I
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showNumberSelectedDialog([Lcom/android/htcdialer/search/SearchablePhone;)V
    .locals 6
    .parameter "phones"

    .prologue
    .line 7715
    array-length v4, p1

    new-array v3, v4, [Ljava/lang/String;

    .line 7716
    .local v3, numbers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 7717
    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 7716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7719
    :cond_0
    move-object v1, v3

    .line 7721
    .local v1, items:[Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/htcdialer/Dialer$25;

    invoke-direct {v5, p0, v1}, Lcom/android/htcdialer/Dialer$25;-><init>(Lcom/android/htcdialer/Dialer;[Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 7729
    .local v2, numberSelectedDialog:Lcom/htc/widget/HtcAlertDialog;
    return-void
.end method

.method private showTaskBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 8430
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_0

    .line 8431
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8432
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setVisibility(I)V

    .line 8439
    :cond_0
    :goto_0
    return-void

    .line 8434
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/ButtonGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 8435
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private shrinkListView()V
    .locals 1

    .prologue
    .line 6164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->expandListView(Z)V

    .line 6165
    return-void
.end method

.method private startHomeDialingActivityForResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3845
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3846
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3847
    const-string v1, "com.android.htcdialer"

    const-string v2, "com.android.htcdialer.HomeDialingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3848
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/Dialer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3849
    return-void
.end method

.method private startIpDialActivity()V
    .locals 2

    .prologue
    .line 8334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8335
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8336
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 8337
    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 3

    .prologue
    .line 2136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2139
    const/16 v1, 0x70

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/Dialer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2140
    return-void
.end method

.method private stopTone()V
    .locals 1

    .prologue
    .line 5348
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->stopTone()V

    .line 5350
    return-void
.end method

.method private switchDigitsMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/16 v2, 0x8

    .line 5925
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v1, p1, :cond_8

    .line 5927
    if-nez p1, :cond_7

    .line 5935
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_1

    .line 5937
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode_CDMA_DEFAULT_HINT()V

    .line 5942
    :cond_1
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-eqz v1, :cond_2

    .line 5943
    iput v3, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 5944
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->bReturn_MESSAGE_MOVE_TOP:Z

    if-nez v1, :cond_2

    .line 5945
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5948
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5949
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 5954
    :cond_3
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5955
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 5960
    :cond_4
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mDisableEditNumSearch:Z

    .line 6106
    :cond_5
    :goto_0
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_6

    .line 6108
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 6109
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 6110
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1, v5}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 6111
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v1, :cond_6

    .line 6112
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020001

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 6116
    :cond_6
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchVoiceDialingMode()V

    .line 6118
    return-void

    .line 5964
    :cond_7
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_5

    .line 5965
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 5971
    :cond_8
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 5974
    iput p1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    .line 5976
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5980
    :pswitch_0
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v1, :cond_9

    .line 5981
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v1}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 5985
    :cond_9
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 5994
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_e

    .line 5996
    :cond_a
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode_CDMA_DEFAULT_HINT()V

    .line 6020
    :goto_1
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-eqz v1, :cond_b

    .line 6021
    iput v3, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 6022
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->bReturn_MESSAGE_MOVE_TOP:Z

    if-nez v1, :cond_b

    .line 6023
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6026
    :cond_b
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->requestFocus()Z

    .line 6029
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6030
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 6034
    :cond_c
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6035
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    .line 6041
    :cond_d
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 6042
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mDisableEditNumSearch:Z

    goto/16 :goto_0

    .line 5998
    :cond_e
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 5999
    .local v0, visible:I
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6046
    .end local v0           #visible:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6053
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_5

    .line 6055
    :cond_f
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    .line 6056
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6058
    :cond_10
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 6059
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 6074
    :pswitch_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6081
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_5

    .line 6083
    :cond_11
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_12

    .line 6084
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6086
    :cond_12
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 6087
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 6101
    :cond_13
    const-string v1, "HtcDialer"

    const-string v2, "siwtchDigitMode: Some thing wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchDigitsMode_CDMA_DEFAULT_HINT()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 6122
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6123
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-boolean v1, v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->isPowerSaveMode:Z

    if-eqz v1, :cond_2

    .line 6125
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6126
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6127
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 6128
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 6155
    :cond_1
    :goto_0
    return-void

    .line 6130
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v1}, Lcom/android/htcdialer/CdmaE911Receiver;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6132
    const-string v1, "HtcDialer"

    const-string v2, "switchDigitsMode_CDMA_DEFAULT_HINT, mCdmaE911ModeHintArea.setVisibility"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6133
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6134
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6135
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 6136
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 6139
    :cond_3
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6141
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6142
    .local v0, visible:I
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6143
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 6144
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6146
    :cond_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 6147
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchImeForHandwriting(Z)V
    .locals 4
    .parameter "enterHandWriting"

    .prologue
    .line 8489
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8490
    .local v0, content:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 8491
    .local v2, nextIME:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 8492
    const-string v3, "default_input_method"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8493
    .local v1, currentIME:Ljava/lang/String;
    const-string v3, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8494
    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    .line 8495
    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    .line 8502
    .end local v1           #currentIME:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8503
    const-string v3, "default_input_method"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8510
    :cond_1
    return-void

    .line 8497
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8498
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    .line 8499
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    goto :goto_0
.end method

.method private switchToDialpad()V
    .locals 1

    .prologue
    .line 3029
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 3030
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 3031
    return-void
.end method

.method private switchVoiceDialingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2143
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2144
    .local v0, speakButton:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 2145
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 2148
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2170
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2181
    :cond_1
    :goto_1
    return-void

    .line 2151
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2154
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2155
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2161
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2162
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2164
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2176
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-nez v1, :cond_1

    .line 2177
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private toggleDialpad()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5301
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5302
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5303
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5304
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_0

    .line 5305
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020006

    const v2, 0x7f0b0016

    const v3, 0x7f09009b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5309
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 5312
    :cond_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5313
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleHandWritePanel()V

    .line 5314
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->expandListView()V

    .line 5323
    :goto_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5324
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5325
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->showTaskBar()V

    .line 5329
    :cond_2
    return-void

    .line 5317
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 5318
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/DialerKeypad;->toggleKeypad()V

    .line 5319
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shrinkListView()V

    goto :goto_0
.end method

.method private toggleHandWritePanel()V
    .locals 4

    .prologue
    .line 7651
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-nez v0, :cond_0

    .line 7652
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/AccumulatorText;->requestFocus()Z

    .line 7653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 7654
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7665
    :cond_0
    return-void
.end method

.method private updateAndRequestContactCardFocusable(Landroid/view/View;)V
    .locals 1
    .parameter "contactCard"

    .prologue
    .line 4311
    if-eqz p1, :cond_0

    .line 4312
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 4314
    :cond_0
    return-void
.end method

.method private updateAndRequestListFocusable(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 4296
    if-eqz p1, :cond_1

    .line 4297
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4298
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setFocusable(Z)V

    .line 4300
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 4302
    :cond_1
    return-void
.end method

.method private updateBarText(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 7957
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v0, :cond_1

    .line 7958
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v0, :cond_2

    .line 7959
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    if-nez v0, :cond_0

    .line 7960
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initVTHelper()V

    .line 7962
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0, v1, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->updateBarByType(Lcom/android/htcdialer/widget/ButtonGroup;Z)V

    .line 7967
    :cond_1
    :goto_0
    return-void

    .line 7964
    :cond_2
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020001

    const v2, 0x7f0b001c

    const/4 v3, 0x0

    const v4, 0x7f090030

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    goto :goto_0
.end method

.method private updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "cache"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 5810
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photoType:I
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3100(Lcom/android/htcdialer/Dialer$ListItemCache;)I

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v1, 0x2

    if-ne v1, p3, :cond_1

    .line 5812
    :cond_0
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3200(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5813
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 5814
    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3202(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5815
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5816
    const/4 v1, 0x1

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2702(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z

    .line 5823
    :goto_0
    if-eqz v0, :cond_1

    .line 5824
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5827
    .end local v0           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 5818
    .restart local v0       #oldBitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2702(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z

    .line 5819
    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3202(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5820
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/android/htcdialer/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method private updateImageView(Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V
    .locals 5
    .parameter "displayView"
    .parameter "cache"
    .parameter "photoId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5796
    if-nez p1, :cond_0

    .line 5807
    :goto_0
    return-void

    .line 5800
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    .line 5801
    invoke-direct {p0, p2, v4, v3}, Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 5803
    :cond_1
    invoke-static {v4}, Lcom/android/htcdialer/Dialer;->getBitmapOptions(Landroid/graphics/Bitmap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p3, p4, v1}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5805
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p2, v0, v3}, Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private updatePanelLayout()V
    .locals 0

    .prologue
    .line 8110
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setPanelLayoutParams()V

    .line 8111
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setPanelPadding()V

    .line 8112
    return-void
.end method

.method private updatePhotoType(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 3
    .parameter "iconType"
    .parameter "cache"

    .prologue
    .line 5776
    monitor-enter p2

    .line 5777
    :try_start_0
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 5778
    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I
    invoke-static {p2, p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2902(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    .line 5779
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v1, :cond_0

    .line 5780
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5781
    monitor-exit p2

    .line 5793
    :goto_0
    return-void

    .line 5784
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-virtual {v1, p1}, Lcom/android/htcdialer/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5785
    .local v0, callTypeDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 5786
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5787
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5792
    .end local v0           #callTypeDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5789
    .restart local v0       #callTypeDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_1
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private updateTaskBarRightIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7613
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 7614
    .local v0, result:[I
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htcdialer/Dialer;->getTaskBarRightState([IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7615
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020007

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7617
    :cond_0
    return-void
.end method

.method private updateUserSelection(Z)V
    .locals 2
    .parameter "forced"

    .prologue
    .line 5855
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v0

    .line 5857
    .local v0, currentPos:I
    if-nez p1, :cond_0

    .line 5858
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    if-ne v0, v1, :cond_0

    .line 5863
    :goto_0
    return-void

    .line 5862
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->updateUserSelectionByPosition(I)V

    goto :goto_0
.end method

.method private updateUserSelectionByPosition(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 5867
    iput p1, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 5869
    const/4 v4, 0x0

    .line 5871
    .local v4, number:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 5872
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 5874
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v4

    .line 5875
    iget v6, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v6, v7, :cond_0

    .line 5876
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v6}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    .line 5879
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 5880
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v6, v4}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 5883
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v6}, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->clean()V

    .line 5884
    iget v6, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    if-ltz v6, :cond_2

    .line 5885
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 5886
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 5887
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/Dialer$ListItemCache;

    .line 5888
    .local v1, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    if-eqz v1, :cond_1

    .line 5889
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2700(Lcom/android/htcdialer/Dialer$ListItemCache;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->bHasPhoto:Z

    .line 5892
    .end local v1           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    :cond_1
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    .line 5893
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sId:Ljava/lang/String;

    .line 5894
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sNumber:Ljava/lang/String;

    .line 5895
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v7

    iput v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sNumberType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5910
    .end local v0           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v2           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v5           #v:Landroid/view/View;
    :cond_2
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5911
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5915
    :goto_1
    return-void

    .line 5905
    :catch_0
    move-exception v3

    .line 5906
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "HtcDialer"

    const-string v7, "updateUserSelectionByPosition"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5913
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_1
.end method

.method private declared-synchronized vibrate()V
    .locals 1

    .prologue
    .line 4461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->vibrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4462
    monitor-exit p0

    return-void

    .line 4461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private viewContactCard(JZ)V
    .locals 1
    .parameter "personId"
    .parameter "isSIM"

    .prologue
    .line 3974
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V

    .line 3975
    return-void
.end method

.method private viewContactCard(JZLjava/lang/String;)V
    .locals 6
    .parameter "personId"
    .parameter "isSIM"
    .parameter "tab"

    .prologue
    .line 3978
    new-instance v0, Lcom/android/htcdialer/Dialer$18;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer$18;-><init>(Lcom/android/htcdialer/Dialer;JZLjava/lang/String;)V

    .line 4007
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4009
    return-void
.end method

.method private viewTutorial()V
    .locals 1

    .prologue
    .line 3881
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v0, :cond_0

    .line 3889
    :goto_0
    return-void

    .line 3885
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->showDialog(I)V

    .line 3888
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto :goto_0
.end method

.method private viewUnknownContactCard(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 4012
    invoke-static {p1}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4013
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 4014
    return-void
.end method


# virtual methods
.method addToContact(Ljava/lang/String;)V
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5173
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5175
    .local v1, handlerView:Landroid/view/View;
    new-instance v2, Lcom/android/htcdialer/Dialer$DialogClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htcdialer/Dialer$DialogClickListener;-><init>(Lcom/android/htcdialer/Dialer;Ljava/lang/String;)V

    .line 5177
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x2020014

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5178
    .local v3, numbertext:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5180
    const v6, 0x1020019

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 5181
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5182
    const v6, 0x102001a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 5183
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5185
    const-string v6, "common_button_small"

    invoke-static {v5, v6}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 5186
    const-string v6, "common_button_small"

    invoke-static {v4, v6}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 5189
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5190
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f09001f

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5191
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5192
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5193
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5194
    new-instance v6, Lcom/android/htcdialer/Dialer$19;

    invoke-direct {v6, p0}, Lcom/android/htcdialer/Dialer$19;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5200
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5202
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    .line 5203
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 5205
    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5206
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "input"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2306
    sget-boolean v3, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    if-eqz v3, :cond_1

    .line 2307
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->handleHythenAfterTextChanged(Landroid/text/Editable;)V

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2313
    :cond_1
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->isPasteText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2314
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3, v5}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 2315
    iput-boolean v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 2316
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 2317
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 2318
    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2325
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    if-nez v3, :cond_5

    .line 2326
    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 2329
    iget-boolean v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-ne v3, v4, :cond_4

    .line 2330
    iput-boolean v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 2332
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 2334
    sget-boolean v3, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2336
    :cond_3
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3, v5}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 2342
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-static {p0, v3, v4}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2344
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 2339
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_1

    .line 2348
    :cond_6
    iget-boolean v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v3, :cond_0

    .line 2349
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2352
    .local v1, length:I
    if-lez v1, :cond_b

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v3, :cond_b

    .line 2354
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    if-eq v3, v6, :cond_7

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 2358
    :cond_7
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 2370
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, keyClicked:Ljava/lang/String;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz v3, :cond_9

    .line 2372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    .line 2378
    .end local v0           #keyClicked:Ljava/lang/String;
    :cond_9
    :goto_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    goto/16 :goto_0

    .line 2363
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 2364
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->generateSearchString(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v2

    .line 2365
    .local v2, searchString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    goto :goto_2

    .line 2375
    .end local v2           #searchString:Ljava/lang/String;
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2292
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    if-eqz v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    if-nez v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2298
    :cond_0
    return-void
.end method

.method callVoicemail()V
    .locals 5

    .prologue
    .line 5703
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    .line 5706
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5711
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5712
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    if-eqz v1, :cond_0

    .line 5713
    const-string v1, "com.android.phone.ShowDialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5715
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 5718
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5722
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 5720
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->handleMissingVoiceMailNumber()V

    goto :goto_0
.end method

.method public cancelEditMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6470
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6471
    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 6474
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 6476
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 6480
    :cond_0
    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 6482
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v8, 0x10

    const/16 v12, 0x13

    const/4 v11, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4467
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 4472
    .local v2, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 4474
    .local v1, isDownAction:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 4475
    const/16 v7, 0x14

    if-ne v7, v2, :cond_3

    .line 4476
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4498
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_7

    if-ne v12, v2, :cond_7

    .line 4499
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_6

    .line 4640
    :cond_1
    :goto_2
    return v5

    .end local v1           #isDownAction:Z
    :cond_2
    move v1, v6

    .line 4472
    goto :goto_0

    .line 4477
    .restart local v1       #isDownAction:Z
    :cond_3
    const/16 v7, 0x16

    if-ne v7, v2, :cond_4

    sget-boolean v7, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v7, :cond_4

    .line 4478
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    goto :goto_1

    .line 4479
    :cond_4
    const/16 v7, 0x15

    if-ne v7, v2, :cond_5

    sget-boolean v7, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v7, :cond_5

    .line 4480
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    goto :goto_1

    .line 4482
    :cond_5
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4483
    if-ne v12, v2, :cond_0

    .line 4484
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4487
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 4488
    .local v4, pos:I
    if-eq v4, v11, :cond_1

    .line 4491
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    goto :goto_1

    .line 4502
    .end local v4           #pos:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 4503
    .restart local v4       #pos:I
    if-eq v4, v11, :cond_1

    .line 4509
    .end local v4           #pos:I
    :cond_7
    const/4 v7, 0x7

    if-gt v7, v2, :cond_8

    if-gt v2, v8, :cond_8

    if-eqz v1, :cond_8

    .line 4510
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v7, v8, :cond_8

    .line 4511
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v2, -0x7

    sget-object v10, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_0:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4517
    :cond_8
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4518
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getInputEditor()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 4524
    :cond_9
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v1, :cond_e

    .line 4527
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->isSearchable(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4529
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a

    .line 4530
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 4534
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getInputEditor()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 4538
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->checkKeyCodeSwitch(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 4541
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getNumericValue(Landroid/view/KeyEvent;)I

    move-result v3

    .line 4543
    .local v3, location:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4544
    if-eq v3, v11, :cond_d

    .line 4545
    if-ne v3, v5, :cond_b

    .line 4546
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto/16 :goto_2

    .line 4557
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    goto/16 :goto_2

    .line 4561
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_d

    .line 4562
    if-eq v3, v11, :cond_10

    .line 4564
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4578
    :cond_d
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 4579
    iget-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v7, :cond_e

    .line 4580
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getAppendingString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4595
    .end local v3           #location:I
    :cond_e
    const/16 v7, 0x4d

    if-ne v7, v2, :cond_13

    if-eqz v1, :cond_13

    .line 4596
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_AT:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v8}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4626
    :cond_f
    :goto_4
    const/16 v6, 0x42

    if-ne v2, v6, :cond_16

    if-nez v1, :cond_16

    .line 4627
    iget v6, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v6, v5, :cond_16

    .line 4628
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    goto/16 :goto_2

    .line 4565
    .restart local v3       #location:I
    :cond_10
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_11

    .line 4567
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    goto :goto_3

    .line 4568
    :cond_11
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_12

    .line 4570
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    goto :goto_3

    .line 4573
    :cond_12
    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    goto :goto_3

    .line 4599
    .end local v3           #location:I
    :cond_13
    const/16 v7, 0x43

    if-ne v7, v2, :cond_f

    if-eqz v1, :cond_f

    .line 4600
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v7}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 4601
    .local v0, clicked:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_f

    .line 4602
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_14

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_14

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_15

    .line 4605
    :cond_14
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    goto :goto_4

    .line 4607
    :cond_15
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4633
    .end local v0           #clicked:Ljava/lang/String;
    :cond_16
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_17

    sget-boolean v6, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v6, :cond_17

    .line 4634
    const/16 v6, 0x14

    if-eq v2, v6, :cond_1

    if-eq v2, v12, :cond_1

    .line 4640
    :cond_17
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4646
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4652
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method editNumberBeforeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 4080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4095
    :goto_0
    return-void

    .line 4082
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4087
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4092
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->onEditNumberIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected ensureList()V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1167
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->setupContentView()V

    .line 1168
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->initInputEditor()V

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1403
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1404
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_3

    .line 1405
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1412
    :goto_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 1414
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1415
    :cond_0
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    .line 1416
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_1

    .line 1417
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v1, v3}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->onListenChanging(Z)V

    .line 1422
    :cond_1
    return-void

    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    move-object v0, p0

    .line 1403
    goto :goto_0

    .line 1407
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->finish()V

    goto :goto_1
.end method

.method public getDigitsEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    return-object v0
.end method

.method public getDimension(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getSearchModule()Lcom/android/htcdialer/search/SearchModule;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    return-object v0
.end method

.method public getTaskBarRightState([IZI)Z
    .locals 5
    .parameter "result"
    .parameter "isVoiceSearchEnable"
    .parameter "currentSearchMode"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8452
    if-eqz p1, :cond_4

    const/4 v2, 0x3

    array-length v3, p1

    if-ne v2, v3, :cond_4

    .line 8454
    aput v0, p1, v4

    .line 8456
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8457
    const v2, 0x7f0900b4

    aput v2, p1, v0

    .line 8458
    const v2, 0x7f0b0024

    aput v2, p1, v1

    .line 8481
    :goto_0
    return v0

    .line 8460
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    if-ne v2, v0, :cond_1

    .line 8461
    const v2, 0x7f09009e

    aput v2, p1, v0

    .line 8462
    const v2, 0x7f0b0019

    aput v2, p1, v1

    goto :goto_0

    .line 8464
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8465
    if-ne p3, v4, :cond_2

    .line 8466
    const v2, 0x7f09009f

    aput v2, p1, v0

    .line 8467
    const v2, 0x7f0b001a

    aput v2, p1, v1

    .line 8468
    aput v4, p1, v4

    goto :goto_0

    .line 8470
    :cond_2
    const v2, 0x7f0900a0

    aput v2, p1, v0

    .line 8471
    const v2, 0x7f0b001b

    aput v2, p1, v1

    .line 8472
    aput v0, p1, v4

    goto :goto_0

    .line 8476
    :cond_3
    const v2, 0x7f09009d

    aput v2, p1, v0

    .line 8477
    const v2, 0x7f0b0018

    aput v2, p1, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 8481
    goto :goto_0
.end method

.method protected handleSearch()Z
    .locals 1

    .prologue
    .line 4284
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    .line 4285
    const/4 v0, 0x1

    return v0
.end method

.method public handleSearchComplete(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;)V
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/16 v12, 0x8

    const/4 v6, 0x0

    .line 2405
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isDisableEditNumberIntentSearch()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2408
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2410
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 2411
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2417
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_6

    .line 2418
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2427
    :goto_1
    sget-boolean v8, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v8, :cond_4

    .line 2428
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v8}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getData()Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    move v1, v5

    .line 2429
    .local v1, hasLastCall:Z
    :goto_2
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-lez v8, :cond_9

    move v3, v5

    .line 2430
    .local v3, isSearched:Z
    :goto_3
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_a

    move v2, v5

    .line 2432
    .local v2, hasResult:Z
    :goto_4
    if-eqz v3, :cond_c

    .line 2434
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    if-eqz v2, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2435
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v7, v12}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setVisibility(I)V

    .line 2436
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 2437
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2453
    :cond_2
    :goto_5
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 2454
    if-nez v3, :cond_e

    .line 2455
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    const v6, 0x7f090059

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2470
    :cond_3
    :goto_6
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2471
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->refreshView()V

    .line 2474
    .end local v1           #hasLastCall:Z
    .end local v2           #hasResult:Z
    .end local v3           #isSearched:Z
    :cond_4
    return-void

    .line 2413
    :cond_5
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2419
    :cond_6
    sget-boolean v8, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v8, :cond_7

    .line 2420
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2422
    :cond_7
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v1, v6

    .line 2428
    goto :goto_2

    .restart local v1       #hasLastCall:Z
    :cond_9
    move v3, v6

    .line 2429
    goto :goto_3

    .restart local v3       #isSearched:Z
    :cond_a
    move v2, v6

    .line 2430
    goto :goto_4

    :cond_b
    move v2, v6

    goto :goto_4

    .line 2440
    .restart local v2       #hasResult:Z
    :cond_c
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2441
    if-eqz v1, :cond_d

    .line 2442
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v7, v6}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setVisibility(I)V

    .line 2443
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 2444
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2447
    :cond_d
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v7, v12}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setVisibility(I)V

    .line 2448
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2457
    :cond_e
    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v0

    .line 2458
    .local v0, count:I
    const/4 v4, 0x0

    .line 2460
    .local v4, searchResult:Ljava/lang/CharSequence;
    if-le v0, v5, :cond_f

    .line 2461
    const v7, 0x7f090057

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/android/htcdialer/Dialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2465
    :goto_7
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2463
    :cond_f
    const v7, 0x7f090058

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/android/htcdialer/Dialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public handleStuffAfterOnResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1247
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-nez v1, :cond_0

    .line 1248
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initForFirstCreate()V

    .line 1252
    :cond_0
    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 1254
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dtmf_tone"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/htcdialer/util/KeypadUtils;->setToneEnabled(Z)V

    .line 1256
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/htcdialer/util/KeypadUtils;->update(Landroid/content/ContentResolver;)V

    .line 1261
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-nez v1, :cond_1

    .line 1262
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    .line 1265
    :cond_1
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-eq v1, v6, :cond_2

    sget-boolean v1, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v1, v2, :cond_9

    .line 1267
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dtmf_tone_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    .line 1275
    :goto_1
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    if-nez v1, :cond_3

    .line 1276
    new-instance v1, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    invoke-direct {v1}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;-><init>()V

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    .line 1280
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 1281
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->moveSelectionToTop()V

    .line 1283
    invoke-static {}, Lcom/htc/util/contacts/PhoneUtils;->getEmergencyNumbers()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;

    .line 1286
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v6, :cond_6

    .line 1287
    :cond_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-nez v1, :cond_5

    .line 1288
    new-instance v1, Lcom/android/htcdialer/CdmaE911Receiver;

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v3, v4}, Lcom/android/htcdialer/CdmaE911Receiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    .line 1290
    :cond_5
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/CdmaE911Receiver;->onListenChanging(Z)V

    .line 1295
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1296
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1298
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->forceRefreshingView()V

    .line 1302
    :cond_7
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->handleStuffAfterOnResume()V

    .line 1303
    return-void

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_8
    move v1, v3

    .line 1254
    goto/16 :goto_0

    .line 1270
    :cond_9
    iput v3, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    goto :goto_1
.end method

.method public newInputWatcher()Landroid/text/TextWatcher;
    .locals 0

    .prologue
    .line 2240
    return-object p0
.end method

.method protected newSearchListAdapter(Ljava/util/ArrayList;Ljava/util/HashMap;)Landroid/widget/BaseAdapter;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 6486
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_0

    .line 6487
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    .line 6488
    new-instance v0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0007

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    .line 6490
    :cond_0
    new-instance v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const v3, 0x7f03000f

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2666
    const/16 v3, 0x6f

    if-ne v3, p1, :cond_2

    .line 2667
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2669
    .local v2, number:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 2670
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2671
    const-string v3, "number"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2672
    invoke-virtual {p0, p3}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 2709
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2673
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    if-ne v3, p2, :cond_0

    .line 2674
    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2675
    const-string v3, "number"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2676
    invoke-virtual {p0, p3}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2688
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x70

    if-ne v3, p1, :cond_0

    if-eqz p3, :cond_0

    .line 2689
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2690
    .local v1, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x2090007

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v5, Lcom/android/htcdialer/Dialer$13;

    invoke-direct {v5, p0, v1}, Lcom/android/htcdialer/Dialer$13;-><init>(Lcom/android/htcdialer/Dialer;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2704
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2705
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 4917
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 4918
    .local v8, tag:Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v10, v8, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    if-eqz v10, :cond_1

    .line 4919
    check-cast v8, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    .end local v8           #tag:Ljava/lang/Object;
    iget v10, v8, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->id:I

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->onClick(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5118
    :cond_0
    :goto_0
    return-void

    .line 4931
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 5102
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    goto :goto_0

    .line 4933
    :sswitch_1
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4937
    :sswitch_2
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4941
    :sswitch_3
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4945
    :sswitch_4
    const/4 v10, 0x3

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4949
    :sswitch_5
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4953
    :sswitch_6
    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4957
    :sswitch_7
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4961
    :sswitch_8
    const/4 v10, 0x7

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4965
    :sswitch_9
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4969
    :sswitch_a
    const/16 v10, 0x9

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4974
    :sswitch_b
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 4976
    sget-boolean v10, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    if-eqz v10, :cond_2

    .line 4977
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v11, "10:"

    invoke-virtual {v10, v11}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4978
    const/16 v10, 0x11

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_0

    .line 4980
    :cond_2
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v10}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->processMultipleStarKey(Landroid/text/Editable;)V

    goto :goto_0

    .line 4988
    :sswitch_c
    const/16 v10, 0xb

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4995
    :sswitch_d
    iget v10, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v10, :cond_4

    .line 4996
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-eqz v10, :cond_3

    .line 4999
    :try_start_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5000
    :catch_0
    move-exception v2

    .line 5001
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "HtcDialer"

    const-string v11, "startVoiceRecognitionActivity"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5004
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    goto/16 :goto_0

    .line 5008
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->clickToMO()Z

    move-result v10

    if-nez v10, :cond_0

    .line 5013
    const/4 v3, 0x1

    .line 5014
    .local v3, enterEditMode:Z
    if-eqz v3, :cond_5

    .line 5015
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v10}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionStart()I

    move-result v7

    .line 5016
    .local v7, selectStart:I
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v10}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5017
    .local v6, number:Ljava/lang/String;
    invoke-direct {p0, v6, v7}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5021
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #selectStart:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    goto/16 :goto_0

    .line 5029
    .end local v3           #enterEditMode:Z
    :sswitch_e
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5030
    .local v1, clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 5031
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    .line 5032
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 5033
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5035
    .local v0, b:Landroid/os/Bundle;
    const-string v10, "BACK"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5036
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const-string v11, "smartdialcommit"

    invoke-virtual {v4, v10, v11, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5038
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5049
    .end local v0           #b:Landroid/os/Bundle;
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    :goto_1
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10, v1}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5051
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 5052
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5056
    :cond_7
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v10}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 5057
    .local v9, text:Landroid/text/Editable;
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v5

    .line 5059
    .local v5, length:I
    if-eqz v5, :cond_8

    const/4 v10, 0x1

    if-ne v5, v10, :cond_d

    .line 5060
    :cond_8
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5087
    :goto_2
    iget-boolean v10, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v10, :cond_9

    .line 5088
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v10}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-static {v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5094
    :cond_9
    const/16 v10, 0x43

    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto/16 :goto_0

    .line 5039
    .end local v5           #length:I
    .end local v9           #text:Landroid/text/Editable;
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    .line 5041
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5044
    :cond_c
    iget-boolean v10, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v10, :cond_6

    .line 5045
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5064
    .restart local v5       #length:I
    .restart local v9       #text:Landroid/text/Editable;
    :cond_d
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 5065
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 5108
    .end local v1           #clicked:Ljava/lang/String;
    .end local v5           #length:I
    .end local v9           #text:Landroid/text/Editable;
    :sswitch_f
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v10}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5110
    .restart local v6       #number:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5114
    .end local v6           #number:Ljava/lang/String;
    :sswitch_10
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto/16 :goto_0

    .line 4931
    :sswitch_data_0
    .sparse-switch
        0x1020005 -> :sswitch_0
        0x1020009 -> :sswitch_d
        0x202001a -> :sswitch_b
        0x202001b -> :sswitch_c
        0x2020103 -> :sswitch_f
        0x202016a -> :sswitch_e
        0x2020180 -> :sswitch_2
        0x2020181 -> :sswitch_3
        0x2020182 -> :sswitch_4
        0x2020183 -> :sswitch_5
        0x2020184 -> :sswitch_6
        0x2020185 -> :sswitch_7
        0x2020186 -> :sswitch_8
        0x2020187 -> :sswitch_9
        0x2020188 -> :sswitch_a
        0x2020189 -> :sswitch_1
        0x7f0b0015 -> :sswitch_10
        0x7f0b003e -> :sswitch_f
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1476
    iput-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    .line 1477
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1479
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->setupContentView()V

    .line 1480
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->initInputEditor()V

    .line 1481
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initTaskBar()V

    .line 1483
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initListView()V

    .line 1485
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1492
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 1494
    .local v1, diff:I
    if-eqz v1, :cond_3

    .line 1496
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_0

    .line 1497
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode(Landroid/content/res/Configuration;)Z

    move-result v3

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 1499
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupScreenOreitation()Z

    .line 1501
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 1507
    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    .line 1508
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 1509
    sget-boolean v3, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v3, :cond_1

    .line 1510
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updatePanelLayout()V

    .line 1511
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1512
    .local v2, enabled:Z
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v4, 0x2020006

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1513
    .local v0, btn1:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1518
    .end local v0           #btn1:Landroid/view/View;
    .end local v2           #enabled:Z
    :cond_1
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_2

    .line 1520
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 1523
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->setRequestedInputType(Landroid/widget/EditText;)V

    .line 1535
    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    .line 1536
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setIMEByLocale()Z

    move-result v3

    sput-boolean v3, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    .line 1540
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->changeSearchMode()V

    .line 1542
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mIsListExpanded:Z

    .line 1543
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 1545
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1548
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 18
    .parameter "item"

    .prologue
    .line 3245
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    .local v15, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-nez v15, :cond_0

    .line 3253
    new-instance v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .end local v15           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v15, v3, v4, v0, v1}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 3257
    .restart local v15       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3455
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    .end local v15           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :goto_1
    return v3

    .line 3246
    :catch_0
    move-exception v12

    .line 3247
    .local v12, e:Ljava/lang/ClassCastException;
    const-string v3, "HtcDialer"

    const-string v4, "bad menuInfoIn"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3248
    const/4 v3, 0x0

    goto :goto_1

    .line 3259
    .end local v12           #e:Ljava/lang/ClassCastException;
    .restart local v15       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :pswitch_1
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->viewContactCard(I)V

    goto :goto_0

    .line 3264
    :pswitch_2
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->sendSMS(I)V

    goto :goto_0

    .line 3269
    :pswitch_3
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->sendEmail(I)V

    goto :goto_0

    .line 3274
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3275
    .local v10, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    .line 3276
    .local v7, number:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto :goto_0

    .line 3281
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    :pswitch_5
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->getNumberByPosition(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 3286
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3287
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3289
    .local v11, data:Lcom/android/htcdialer/search/SearchableObject;
    if-nez v11, :cond_2

    .line 3290
    const/4 v3, 0x0

    goto :goto_1

    .line 3293
    :cond_2
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v8

    .line 3294
    .local v8, callId:J
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3295
    .local v5, contactId:J
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    .line 3297
    .restart local v7       #number:Ljava/lang/String;
    new-instance v2, Lcom/android/htcdialer/Dialer$14;

    const-string v4, "thread_remove_callLog"

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/htcdialer/Dialer$14;-><init>(Lcom/android/htcdialer/Dialer;Ljava/lang/String;JLjava/lang/String;J)V

    .line 3352
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3357
    .end local v2           #thread:Ljava/lang/Thread;
    .end local v5           #contactId:J
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #callId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3358
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3359
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3361
    .restart local v5       #contactId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htcdialer/Dialer;->removeFavorite(J)V

    goto/16 :goto_0

    .line 3368
    .end local v5           #contactId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    :pswitch_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3369
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3370
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3372
    .restart local v5       #contactId:J
    invoke-static {v5, v6}, Lcom/htc/provider/ContactsContract$Groups$Favorite;->getAddFavoriteIntent(J)Landroid/content/Intent;

    move-result-object v14

    .line 3374
    .local v14, intentFavorites:Landroid/content/Intent;
    if-eqz v14, :cond_1

    .line 3375
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3378
    .end local v5           #contactId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v14           #intentFavorites:Landroid/content/Intent;
    :catch_1
    move-exception v12

    .line 3380
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "HtcDialer"

    const-string v4, "MENU_ITEM_ADD_TO_FAVORITES"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3389
    .end local v12           #e:Ljava/lang/Exception;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3390
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3391
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3392
    .restart local v5       #contactId:J
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    .line 3394
    .restart local v7       #number:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    .line 3395
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    const-string v4, "PEOPLE_DETAIL_CALL_HISTORY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/htcdialer/Dialer;->viewContactCard(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3400
    :cond_3
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 3401
    .local v13, intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3402
    const/high16 v3, 0x1000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3403
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3404
    const-string v3, "number"

    invoke-virtual {v13, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3405
    const-string v3, "DefaultTab"

    const-string v4, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3406
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3417
    .end local v5           #contactId:J
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v13           #intent:Landroid/content/Intent;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3418
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3419
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3420
    .restart local v5       #contactId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->markContactAsFave(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 3427
    .end local v5           #contactId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getIpDialItemCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 3428
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->getNumberByPosition(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3432
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->startIpDialActivity()V

    goto/16 :goto_0

    .line 3441
    :pswitch_c
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->showConfirmBlockCallerDialog(I)V

    goto/16 :goto_0

    .line 3257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 757
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/high16 v5, 0x400c

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 758
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 761
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreate(Landroid/os/Bundle;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->finish()V

    .line 875
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setIMEByLocale()Z

    move-result v5

    sput-boolean v5, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    .line 773
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 774
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/htcdialer/util/ConfigUtils;->registConfig(Landroid/content/res/Configuration;)V

    .line 776
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreate(Landroid/os/Bundle;)V

    .line 782
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 784
    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->setDelayForHandleStuffAfterOnResume(I)V

    .line 787
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Security_BRIC_flag:Z

    if-ne v5, v7, :cond_2

    .line 788
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mRandom:Ljava/util/Random;

    .line 791
    :cond_2
    new-instance v5, Lcom/android/htcdialer/Dialer$QueryHandler;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/htcdialer/Dialer$QueryHandler;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    .line 793
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 797
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    .line 801
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initKeypadGestureDetector()V

    .line 802
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initListGestureDetector()V

    .line 804
    new-instance v5, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-direct {v5, p0}, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    .line 806
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_3

    .line 807
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    sget-object v6, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    .line 809
    :cond_3
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v5, :cond_4

    .line 810
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "HTC_IME_CURRENT_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    .line 813
    :cond_4
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v5, :cond_5

    .line 814
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 815
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initTabletTitle()V

    .line 818
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 821
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->hasKeyboard()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 822
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/htcdialer/Dialer;->showKeypadShadow(Z)V

    .line 825
    :cond_7
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/htcdialer/HtcIpDialActivity;->setupState(Landroid/content/Context;)V

    .line 829
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupScreenOreitation()Z

    .line 831
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initVTHelper()V

    .line 835
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initTaskBar()V

    .line 837
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 841
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v5, :cond_8

    .line 842
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->applyThemeOnActivityCreated()V

    .line 846
    :cond_8
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 848
    const-string v5, "common_app_bkg"

    const-string v6, "drawable"

    invoke-static {v5, v6, v8}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 849
    .local v1, id:I
    if-eqz v1, :cond_9

    .line 850
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 851
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    .line 868
    .end local v1           #id:I
    :cond_9
    :goto_1
    const-string v5, "com.android.htcdialer_preferences"

    invoke-virtual {p0, v5, v8}, Lcom/android/htcdialer/Dialer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 870
    .local v3, settings:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 871
    const-string v5, "brought_number_savable"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mPreEnableEditNumSearch:Z

    goto/16 :goto_0

    .line 853
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_a
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v5, :cond_b

    .line 854
    invoke-static {p0, v7}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 855
    .local v4, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_9

    .line 856
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    goto :goto_1

    .line 859
    .end local v4           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 860
    const-string v5, "common_list_bg"

    const-string v6, "drawable"

    invoke-static {v5, v6, v8}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 861
    .restart local v1       #id:I
    if-eqz v1, :cond_9

    .line 862
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 863
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 23
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 3037
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3044
    .local v13, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3047
    .local v5, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getData()Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    .line 3048
    .local v10, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v9

    .line 3049
    .local v9, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v16

    .line 3050
    .local v16, name:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v17

    .line 3051
    .local v17, number:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v7

    .line 3053
    .local v7, callLogId:J
    if-eqz v16, :cond_2

    .line 3054
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3061
    :goto_0
    if-eqz v9, :cond_4

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_4

    .line 3062
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const v22, 0x7f09002c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3068
    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const v22, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3071
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3074
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_DOUBLESHOT_TMO:Z

    if-nez v19, :cond_0

    if-eqz v9, :cond_0

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_0

    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 3075
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 3076
    .local v18, resolver:Landroid/content/ContentResolver;
    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFavesAccount(JLandroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFaveLimitReached(Landroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 3078
    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    const v22, 0x7f09005a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3084
    .end local v18           #resolver:Landroid/content/ContentResolver;
    :cond_0
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_1

    .line 3085
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f090091

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3237
    .end local v5           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v7           #callLogId:J
    .end local v9           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v10           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v13           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 3038
    :catch_0
    move-exception v11

    .line 3039
    .local v11, e:Ljava/lang/ClassCastException;
    const-string v19, "HtcDialer"

    const-string v20, "bad menuInfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3055
    .end local v11           #e:Ljava/lang/ClassCastException;
    .restart local v5       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .restart local v7       #callLogId:J
    .restart local v9       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v10       #data:Lcom/android/htcdialer/search/SearchableObject;
    .restart local v13       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #number:Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_3

    .line 3056
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 3058
    :cond_3
    const v19, 0x7f09003c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 3064
    :cond_4
    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const v22, 0x7f09001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3091
    .end local v5           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v7           #callLogId:J
    .end local v9           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v10           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3092
    .restart local v5       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v0, v13, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/search/SearchableObject;

    .line 3094
    .restart local v10       #data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v10, :cond_1

    .line 3098
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v16

    .line 3099
    .restart local v16       #name:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v17

    .line 3100
    .restart local v17       #number:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v9

    .line 3101
    .restart local v9       #contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v7

    .line 3105
    .restart local v7       #callLogId:J
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 3107
    if-eqz v16, :cond_7

    .line 3108
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3116
    :goto_3
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v19, :cond_a

    .line 3119
    if-eqz v9, :cond_9

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_9

    .line 3120
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const v22, 0x7f09002c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3126
    :goto_4
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const v22, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3129
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3131
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_DOUBLESHOT_TMO:Z

    if-nez v19, :cond_6

    if-eqz v9, :cond_6

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_6

    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 3133
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 3134
    .restart local v18       #resolver:Landroid/content/ContentResolver;
    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFavesAccount(JLandroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_6

    invoke-static/range {v18 .. v18}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFaveLimitReached(Landroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 3136
    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    const v22, 0x7f09005a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3142
    .end local v18           #resolver:Landroid/content/ContentResolver;
    :cond_6
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_1

    .line 3143
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f09003f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3109
    :cond_7
    if-eqz v17, :cond_8

    .line 3110
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_3

    .line 3112
    :cond_8
    const v19, 0x7f09003c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_3

    .line 3122
    :cond_9
    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const v22, 0x7f09001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 3151
    :cond_a
    if-eqz v9, :cond_b

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_b

    .line 3152
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const v22, 0x7f09002c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3156
    :cond_b
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_c

    .line 3158
    const/16 v19, 0x0

    const/16 v20, 0x9

    const/16 v21, 0x0

    const v22, 0x7f090092

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3163
    :cond_c
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const v22, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3166
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3168
    if-eqz v9, :cond_10

    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_10

    .line 3170
    sget-wide v19, Lcom/android/htcdialer/Dialer;->myContactId:J

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_d

    .line 3171
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v6

    .line 3172
    .local v6, bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_d

    .line 3173
    const-string v19, "contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    sput-wide v19, Lcom/android/htcdialer/Dialer;->myContactId:J

    .line 3176
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_d
    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    sget-wide v21, Lcom/android/htcdialer/Dialer;->myContactId:J

    cmp-long v19, v19, v21

    if-eqz v19, :cond_e

    .line 3177
    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 3178
    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    const v22, 0x7f09002f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3184
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/provider/ContactsContract$CommonDataKinds$Email;->queryContactEmailAddresses(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v12

    .line 3188
    .local v12, emailCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_10

    .line 3189
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_f

    .line 3190
    const/16 v19, 0x0

    const/16 v20, 0x3

    const/16 v21, 0x0

    const v22, 0x7f090044

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3192
    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3196
    .end local v12           #emailCursor:Landroid/database/Cursor;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 3199
    .local v15, isSpecial:Z
    sget-boolean v19, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v19, :cond_16

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v14, 0x1

    .line 3201
    .local v14, isN11Number:Z
    :goto_6
    if-nez v15, :cond_12

    if-nez v14, :cond_12

    if-eqz v9, :cond_11

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_12

    .line 3204
    :cond_11
    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const v22, 0x7f09001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3208
    :cond_12
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_13

    .line 3210
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v19

    const/high16 v20, 0x4000

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_17

    .line 3211
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f090040

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3220
    :cond_13
    :goto_7
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 3221
    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    const v22, 0x7f090087

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3226
    :cond_14
    if-nez v15, :cond_1

    if-nez v14, :cond_1

    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isChinaSKU()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->isVip(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v19

    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->isBlacklist(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/htc/util/contacts/BlacklistUtils;->couldAddToBlockCaller(II)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3230
    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v21, 0xd

    const v22, 0x7f090084

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3180
    .end local v14           #isN11Number:Z
    .end local v15           #isSpecial:Z
    :cond_15
    const/16 v19, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    const v22, 0x7f09002e

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 3199
    .restart local v15       #isSpecial:Z
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 3214
    .restart local v14       #isN11Number:Z
    :cond_17
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f09003f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "args"

    .prologue
    .line 7797
    const/4 v8, 0x1

    if-ne v8, p1, :cond_2

    .line 7801
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isResumed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-nez v8, :cond_0

    .line 7802
    const/4 v8, 0x0

    .line 7882
    :goto_0
    return-object v8

    .line 7806
    :cond_0
    new-instance v0, Lcom/android/htcdialer/Dialer$27;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$27;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 7817
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090089

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7818
    .local v7, title:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7819
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    const-string v10, "number"

    invoke-virtual {v8, v9, v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7825
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    if-eqz v8, :cond_1

    .line 7826
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7830
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 7834
    .end local v0           #OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v7           #title:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x2

    if-ne v8, p1, :cond_7

    .line 7835
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030027

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 7839
    .local v2, content:Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7840
    .local v3, hint2:Ljava/lang/StringBuilder;
    const v8, 0x7f09004f

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7841
    const-string v8, " \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7842
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x71

    if-eq v8, v9, :cond_3

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x70

    if-ne v8, v9, :cond_5

    .line 7844
    :cond_3
    const-string v8, "<font color = \"#FF6600\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7848
    :goto_1
    const v8, 0x7f090054

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7849
    const-string v8, "</font>"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7850
    const-string v8, "\" "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7851
    const v8, 0x7f090050

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7852
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 7853
    .local v5, spannedString:Landroid/text/Spanned;
    const v8, 0x7f0b0043

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 7854
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7857
    .local v4, hint3:Ljava/lang/StringBuilder;
    const v8, 0x7f090051

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7858
    const-string v8, " \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7859
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x71

    if-eq v8, v9, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x70

    if-ne v8, v9, :cond_6

    .line 7861
    :cond_4
    const-string v8, "<font color = \"#FF6600\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7865
    :goto_2
    const v8, 0x7f090055

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7866
    const-string v8, "</font>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7867
    const-string v8, "\" "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7868
    const v8, 0x7f090052

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7869
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 7870
    const v8, 0x7f0b0068

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 7871
    .restart local v6       #textView:Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7872
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7875
    .restart local v1       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7876
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7877
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7879
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 7846
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v4           #hint3:Ljava/lang/StringBuilder;
    .end local v5           #spannedString:Landroid/text/Spanned;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_5
    const-string v8, "<font color = \"#33CC00\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 7863
    .restart local v4       #hint3:Ljava/lang/StringBuilder;
    .restart local v5       #spannedString:Landroid/text/Spanned;
    .restart local v6       #textView:Landroid/widget/TextView;
    :cond_6
    const-string v8, "<font color = \"#33CC00\">"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7882
    .end local v2           #content:Landroid/view/View;
    .end local v3           #hint2:Ljava/lang/StringBuilder;
    .end local v4           #hint3:Ljava/lang/StringBuilder;
    .end local v5           #spannedString:Landroid/text/Spanned;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2715
    const v4, 0x7f09002b

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2716
    .local v1, menuPeople:Landroid/view/MenuItem;
    const v4, 0x2080a40

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2717
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2719
    const v4, 0x7f090090

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2720
    .local v0, menuCallHistory:Landroid/view/MenuItem;
    const v4, 0x2080a1c

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2721
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2723
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v4, :cond_0

    .line 2724
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v4, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->createMenus(Landroid/view/Menu;)V

    .line 2728
    :cond_0
    const/4 v4, 0x3

    const v5, 0x7f09002c

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20809ed

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2731
    const/4 v4, 0x4

    const v5, 0x7f09001f

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x208031d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2734
    const/4 v4, 0x5

    const v5, 0x7f090045

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080a84

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2740
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2741
    .local v3, switchKeypadString:Ljava/lang/String;
    const v2, 0x7f02005f

    .line 2742
    .local v2, switchKeypadIcon:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 2743
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2744
    const v2, 0x7f02005e

    .line 2746
    :cond_1
    const/16 v4, 0xc

    invoke-interface {p1, v6, v4, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2756
    const/4 v4, 0x6

    const v5, 0x7f09008c

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080336

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2761
    sget-boolean v4, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v4, v7, :cond_3

    .line 2762
    :cond_2
    const/16 v4, 0x8

    const v5, 0x7f0900a5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080a42

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2766
    :cond_3
    sget-boolean v4, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_4

    .line 2767
    const/16 v4, 0x9

    const v5, 0x7f090083

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20809dc

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2772
    :cond_4
    const/16 v4, 0xa

    const v5, 0x7f090088

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080a22

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2777
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2779
    const/16 v4, 0x36

    const v5, 0x7f0900ad

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2783
    :cond_5
    sget-boolean v4, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v4, :cond_6

    .line 2785
    const/4 v4, 0x7

    const v5, 0x7f09005b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080328

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2789
    :cond_6
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/htcdialer/util/VTUtils;->VT_TEST:Z

    if-eqz v4, :cond_7

    .line 2791
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v4, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->createTestMenus(Landroid/view/Menu;)V

    .line 2794
    :cond_7
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2797
    return v8
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1441
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onDestroy()V

    .line 1443
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v1}, Lcom/android/htcdialer/util/KeypadUtils;->releaseToneGenerator()V

    .line 1445
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1446
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v1, :cond_1

    .line 1447
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/CdmaE911Receiver;->onListenChanging(Z)V

    .line 1452
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->unregistConfig()V

    .line 1455
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->closeIpDialCursor()V

    .line 1459
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1460
    .local v0, window:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1463
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1464
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1468
    :cond_2
    return-void
.end method

.method protected onEditNumberIntent(Landroid/content/Intent;)V
    .locals 19
    .parameter "intent"

    .prologue
    .line 1722
    sget-boolean v17, Lcom/htc/util/phone/ProfilingUtils;->ENABLED:Z

    if-eqz v17, :cond_0

    .line 1723
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->profilingEditB4Call()V

    .line 1726
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_2

    .line 1898
    :cond_1
    :goto_0
    return-void

    .line 1728
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 1729
    .local v15, uri:Landroid/net/Uri;
    const-string v17, "tel"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1731
    .local v10, isSchemeTel:Z
    if-eqz v10, :cond_1

    .line 1735
    const/4 v8, 0x1

    .line 1778
    .local v8, editMode:Z
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1780
    .local v6, dialString:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1787
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 1792
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 1794
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 1804
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 1810
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 1813
    .local v7, digits:Landroid/text/Editable;
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->isDisableEditNumberIntentSearch()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1814
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 1817
    :cond_4
    const/16 v17, 0x0

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v7, v0, v1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1820
    .end local v7           #digits:Landroid/text/Editable;
    :cond_5
    const-string v17, "SelectionStart"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1821
    .local v12, select:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v13

    .line 1826
    .local v13, textLength:I
    if-le v12, v13, :cond_c

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v13}, Lcom/android/htcdialer/widget/AccumulatorText;->setSelection(II)V

    .line 1841
    .end local v13           #textLength:I
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v16, 0x8

    .line 1843
    .local v16, visibility:I
    :goto_2
    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    sget-boolean v17, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v17, :cond_7

    .line 1844
    const/16 v16, 0x4

    .line 1846
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_8

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1860
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 1872
    const-string v17, "com.htc.calendar.event_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    .line 1873
    const/4 v9, 0x0

    .line 1874
    .local v9, ei:Lcom/htc/util/calendar/EventInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 1875
    invoke-static/range {p0 .. p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/util/calendar/HtcCalendarManager;->getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v9

    .line 1877
    :cond_9
    if-eqz v9, :cond_a

    .line 1878
    invoke-virtual {v9}, Lcom/htc/util/calendar/EventInstance;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 1879
    .local v14, title:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/htc/util/calendar/EventInstance;->getLocation()Ljava/lang/String;

    move-result-object v11

    .line 1880
    .local v11, location:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/htc/util/calendar/EventInstance;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 1881
    .local v5, description:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/htc/util/calendar/EventInstance;->getBegin()J

    move-result-wide v3

    .line 1882
    .local v3, begin:J
    invoke-virtual {v9}, Lcom/htc/util/calendar/EventInstance;->getEnd()J

    .line 1888
    .end local v3           #begin:J
    .end local v5           #description:Ljava/lang/String;
    .end local v11           #location:Ljava/lang/String;
    .end local v14           #title:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1889
    const-string v17, "com.htc.calendar.event_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1893
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1894
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1832
    .end local v9           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v16           #visibility:I
    .restart local v13       #textLength:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v12}, Lcom/android/htcdialer/widget/AccumulatorText;->setSelection(II)V

    goto/16 :goto_1

    .line 1842
    .end local v13           #textLength:I
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 4120
    sparse-switch p1, :sswitch_data_0

    .line 4150
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 4244
    :cond_1
    :goto_1
    const/16 v5, 0x52

    if-ne p1, v5, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-eqz v5, :cond_9

    .line 4249
    :cond_2
    :goto_2
    return v4

    .line 4134
    :sswitch_0
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4135
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 4138
    :cond_3
    sget-boolean v5, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 4139
    :cond_4
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v5, :cond_0

    .line 4140
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v5}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeRequest()V

    goto :goto_0

    .line 4157
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 4158
    iput-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    goto :goto_2

    .line 4167
    :sswitch_2
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_1

    .line 4177
    :sswitch_3
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 4178
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->updateAndRequestContactCardFocusable(Landroid/view/View;)V

    goto :goto_1

    .line 4183
    :cond_5
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v5, :cond_1

    .line 4184
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    .line 4188
    .local v1, pos:I
    if-eq v1, v7, :cond_6

    if-nez v1, :cond_1

    .line 4189
    :cond_6
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    .line 4190
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 4191
    .local v0, listView:Lcom/htc/widget/HtcListView;
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->updateAndRequestListFocusable(Lcom/htc/widget/HtcListView;)V

    goto :goto_1

    .line 4199
    .end local v0           #listView:Lcom/htc/widget/HtcListView;
    .end local v1           #pos:I
    :sswitch_4
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v5, :cond_1

    .line 4200
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    .line 4203
    .restart local v1       #pos:I
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v5, :cond_1

    .line 4204
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    .line 4206
    if-eqz v1, :cond_7

    if-ne v1, v7, :cond_1

    .line 4207
    :cond_7
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 4209
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v5}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4210
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto/16 :goto_1

    .line 4212
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto/16 :goto_1

    .line 4224
    .end local v1           #pos:I
    :sswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 4226
    .local v2, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1

    .line 4228
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto/16 :goto_2

    .line 4249
    .end local v2           #timeDiff:J
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_2

    .line 4120
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch

    .line 4150
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_1
        0x8 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 4255
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 4256
    sparse-switch p1, :sswitch_data_0

    .line 4279
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 4261
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    if-eqz v1, :cond_0

    .line 4262
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    .line 4263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    goto :goto_0

    .line 4275
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    goto :goto_0

    .line 4256
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 4324
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isShowPhoneNumOnDialPadOrPopUpNumList()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 4325
    check-cast v0, Lcom/android/htcdialer/search/DialerItem;

    .line 4326
    .local v0, item:Lcom/android/htcdialer/search/DialerItem;
    iget-object v1, v0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v1, :cond_0

    .line 4327
    iget-object v1, v0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->showNumberSelectedDialog([Lcom/android/htcdialer/search/SearchablePhone;)V

    .line 4335
    .end local v0           #item:Lcom/android/htcdialer/search/DialerItem;
    :goto_0
    return-void

    .line 4329
    .restart local v0       #item:Lcom/android/htcdialer/search/DialerItem;
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/htcdialer/Dialer;->getNumberByPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 4332
    .end local v0           #item:Lcom/android/htcdialer/search/DialerItem;
    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/android/htcdialer/Dialer;->placeCall(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .parameter "view"

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 5415
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v9}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 5416
    .local v0, digits:Landroid/text/Editable;
    const/4 v6, 0x0

    .line 5429
    .local v6, speedDial:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 5698
    :cond_0
    :goto_0
    return v7

    .line 5431
    :sswitch_0
    iget-object v9, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v9}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 5432
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 5433
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5434
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    move v7, v8

    .line 5435
    goto :goto_0

    .line 5442
    :sswitch_1
    iget v8, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-eqz v8, :cond_0

    .line 5444
    const/4 v1, 0x1

    .line 5445
    .local v1, enterEditMode:Z
    if-eqz v1, :cond_0

    .line 5446
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionStart()I

    move-result v5

    .line 5447
    .local v5, selectStart:I
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5449
    .local v3, number:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v8, v5}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;I)V

    goto :goto_0

    .line 5457
    .end local v1           #enterEditMode:Z
    .end local v3           #number:Ljava/lang/String;
    .end local v5           #selectStart:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    move v7, v8

    .line 5458
    goto :goto_0

    .line 5463
    :sswitch_3
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_1

    .line 5464
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5466
    :cond_1
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "12:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5467
    const/16 v7, 0x51

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    move v7, v8

    .line 5468
    goto :goto_0

    .line 5472
    :sswitch_4
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 5473
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5474
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v2

    .line 5476
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v9, 0x28

    if-ne v7, v9, :cond_2

    .line 5478
    const-string v7, "*9"

    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :goto_1
    move v7, v8

    .line 5494
    goto :goto_0

    .line 5480
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_2
    if-eqz v2, :cond_3

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5481
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_1

    .line 5485
    :cond_3
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto :goto_1

    .line 5488
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_4
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_5

    .line 5489
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5491
    :cond_5
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "1:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5492
    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_1

    .line 5517
    :sswitch_5
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_6

    .line 5518
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5521
    :cond_6
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 5522
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5525
    :cond_7
    if-nez v6, :cond_8

    .line 5526
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "2:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5527
    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_8
    move v7, v8

    .line 5529
    goto/16 :goto_0

    .line 5533
    :sswitch_6
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_9

    .line 5534
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5537
    :cond_9
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 5538
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5541
    :cond_a
    if-nez v6, :cond_b

    .line 5542
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "3:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5543
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_b
    move v7, v8

    .line 5545
    goto/16 :goto_0

    .line 5549
    :sswitch_7
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_c

    .line 5550
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5553
    :cond_c
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_d

    .line 5554
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5557
    :cond_d
    if-nez v6, :cond_e

    .line 5558
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "4:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5559
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_e
    move v7, v8

    .line 5562
    goto/16 :goto_0

    .line 5566
    :sswitch_8
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_f

    .line 5567
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5570
    :cond_f
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_10

    .line 5571
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5574
    :cond_10
    if-nez v6, :cond_11

    .line 5575
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "5:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5576
    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_11
    move v7, v8

    .line 5578
    goto/16 :goto_0

    .line 5582
    :sswitch_9
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_12

    .line 5583
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5586
    :cond_12
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_13

    .line 5587
    const/4 v7, 0x6

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5590
    :cond_13
    if-nez v6, :cond_14

    .line 5591
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "6:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5592
    const/16 v7, 0xd

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_14
    move v7, v8

    .line 5594
    goto/16 :goto_0

    .line 5598
    :sswitch_a
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_15

    .line 5599
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5602
    :cond_15
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_16

    .line 5603
    const/4 v7, 0x7

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5606
    :cond_16
    if-nez v6, :cond_17

    .line 5607
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "7:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5608
    const/16 v7, 0xe

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_17
    move v7, v8

    .line 5610
    goto/16 :goto_0

    .line 5614
    :sswitch_b
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_18

    .line 5615
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5618
    :cond_18
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_19

    .line 5619
    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5622
    :cond_19
    if-nez v6, :cond_1a

    .line 5623
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "8:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5624
    const/16 v7, 0xf

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_1a
    move v7, v8

    .line 5626
    goto/16 :goto_0

    .line 5630
    :sswitch_c
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_1b

    .line 5631
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5634
    :cond_1b
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_1c

    .line 5635
    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v6

    .line 5638
    :cond_1c
    if-nez v6, :cond_1d

    .line 5639
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "9:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5640
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_1d
    move v7, v8

    .line 5642
    goto/16 :goto_0

    .line 5646
    :sswitch_d
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_1e

    .line 5647
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5650
    :cond_1e
    sget-boolean v7, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    if-eqz v7, :cond_20

    .line 5651
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "13:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5655
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 5656
    .local v4, pos:I
    if-gez v4, :cond_1f

    const/4 v4, 0x0

    .line 5657
    :cond_1f
    const/16 v7, 0x70

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v4           #pos:I
    :goto_2
    move v7, v8

    .line 5664
    goto/16 :goto_0

    .line 5660
    :cond_20
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v7}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->processMultipleStarKey(Landroid/text/Editable;)V

    goto :goto_2

    .line 5668
    :sswitch_e
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_21

    .line 5669
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5671
    :cond_21
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5673
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->getIpDialItemCount()I

    move-result v7

    if-lez v7, :cond_22

    .line 5675
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->editNumberWithIpDialPrefix()V

    :goto_3
    move v7, v8

    .line 5695
    goto/16 :goto_0

    .line 5679
    :cond_22
    sget-boolean v7, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    if-eqz v7, :cond_24

    .line 5680
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "14:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5684
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 5685
    .restart local v4       #pos:I
    if-gez v4, :cond_23

    const/4 v4, 0x0

    .line 5686
    :cond_23
    const/16 v7, 0x77

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    .line 5691
    .end local v4           #pos:I
    :cond_24
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "11:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5692
    const/16 v7, 0x12

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_3

    .line 5429
    :sswitch_data_0
    .sparse-switch
        0x1020005 -> :sswitch_2
        0x1020009 -> :sswitch_1
        0x202001a -> :sswitch_d
        0x202001b -> :sswitch_e
        0x202016a -> :sswitch_0
        0x2020180 -> :sswitch_4
        0x2020181 -> :sswitch_5
        0x2020182 -> :sswitch_6
        0x2020183 -> :sswitch_7
        0x2020184 -> :sswitch_8
        0x2020185 -> :sswitch_9
        0x2020186 -> :sswitch_a
        0x2020187 -> :sswitch_b
        0x2020188 -> :sswitch_c
        0x2020189 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/high16 v1, 0x400c

    invoke-static {v1, v2}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1623
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 1624
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->finish()V

    .line 1632
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1629
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer;->setIntent(Landroid/content/Intent;)V

    .line 1631
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resolveIntent()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 2882
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 2883
    .local v3, id:I
    sparse-switch v3, :sswitch_data_0

    .line 3010
    const/4 v2, 0x0

    .line 3011
    .local v2, handled:Z
    const/high16 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 3012
    iget-boolean v8, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v8, :cond_0

    .line 3013
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchToDialpad()V

    .line 3019
    :cond_0
    :goto_0
    if-eqz v2, :cond_7

    move v8, v9

    .line 3022
    .end local v2           #handled:Z
    :goto_1
    return v8

    .line 2885
    :sswitch_0
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]View call history"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    move v8, v9

    .line 2887
    goto :goto_1

    .line 2890
    :sswitch_1
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]View contact list"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewContactList()V

    move v8, v9

    .line 2892
    goto :goto_1

    .line 2895
    :sswitch_2
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]View contact"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v7

    .line 2897
    .local v7, pos:I
    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->viewContactCard(I)V

    move v8, v9

    .line 2899
    goto :goto_1

    .line 2902
    .end local v7           #pos:I
    :sswitch_3
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Add to contact"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 2905
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {v0, v8}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    .line 2907
    .local v6, number:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v6           #number:Ljava/lang/String;
    :goto_2
    move v8, v9

    .line 2912
    goto :goto_1

    .line 2908
    :catch_0
    move-exception v1

    .line 2909
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "HtcDialer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2915
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_4
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Speed dial"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2917
    .local v4, intent:Landroid/content/Intent;
    sget-object v8, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2918
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2919
    goto :goto_1

    .line 2923
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_5
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Settings"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2925
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v10, "com.android.phone.PhonePreference"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2926
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2928
    goto/16 :goto_1

    .line 2932
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_6
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Smart search hit"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    move v8, v9

    .line 2934
    goto/16 :goto_1

    .line 2939
    :sswitch_7
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]CDMA exit emergency"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2941
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2942
    goto/16 :goto_1

    .line 2947
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_8
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Go to blacklist"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2949
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "com.android.htccontacts"

    const-string v10, "com.android.htccontacts.blacklist.HtcEnterBlacklistPwActivity"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2952
    goto/16 :goto_1

    .line 2957
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_9
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]IP dial"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startIpDialActivity()V

    move v8, v9

    .line 2960
    goto/16 :goto_1

    .line 2965
    :sswitch_a
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2966
    .restart local v6       #number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2969
    const-string v8, "+86"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2970
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2978
    .local v5, ipDialNumber:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .end local v5           #ipDialNumber:Ljava/lang/String;
    :cond_1
    move v8, v9

    .line 2980
    goto/16 :goto_1

    .line 2971
    :cond_2
    const-string v8, "86"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2972
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ipDialNumber:Ljava/lang/String;
    goto :goto_3

    .line 2973
    .end local v5           #ipDialNumber:Ljava/lang/String;
    :cond_3
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2974
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*86"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ipDialNumber:Ljava/lang/String;
    goto :goto_3

    .line 2976
    .end local v5           #ipDialNumber:Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*86"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ipDialNumber:Ljava/lang/String;
    goto :goto_3

    .line 2987
    .end local v5           #ipDialNumber:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :sswitch_b
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Assisted dialing"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2989
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v10, "com.android.phone.nbpcd.AssistedDialingSetting"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2991
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2992
    goto/16 :goto_1

    .line 2997
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_c
    iget-boolean v8, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v8, :cond_5

    .line 2998
    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2999
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 3004
    :goto_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updateTaskBarRightIcon()V

    move v8, v9

    .line 3005
    goto/16 :goto_1

    .line 3001
    :cond_5
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 3002
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_4

    .line 3015
    .restart local v2       #handled:Z
    :cond_6
    sget-boolean v8, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v8, :cond_0

    .line 3016
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v8, v3, v10}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->onMenuSelected(ILcom/android/htcdialer/widget/ButtonGroup;)Z

    move-result v2

    goto/16 :goto_0

    .line 3022
    :cond_7
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto/16 :goto_1

    .line 2883
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x36 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1326
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1330
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1336
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_1

    .line 1337
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resolveIntent()V

    .line 1343
    :cond_1
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onPause()V

    .line 1345
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    .line 1346
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->releaseToneGenerator()V

    .line 1356
    :cond_2
    sget-boolean v0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v0, v5, :cond_5

    .line 1357
    :cond_3
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    .line 1358
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-nez v0, :cond_4

    .line 1359
    new-instance v0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    .line 1361
    :cond_4
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->onListenChanging(Z)V

    .line 1367
    :cond_5
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v0, :cond_7

    .line 1368
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 1371
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v0, :cond_6

    .line 1372
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 1375
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 1376
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->changeSearchMode()V

    .line 1377
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 1381
    :cond_7
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 1383
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 1384
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    :cond_8
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resumeSocialNetworkSync()V

    .line 1392
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1393
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->switchImeForHandwriting(Z)V

    .line 1396
    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .line 2804
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2805
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2807
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v6

    .line 2809
    .local v6, pos:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 2811
    .local v4, listAdapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-ltz v6, :cond_0

    if-nez v4, :cond_9

    :cond_0
    const/4 v1, 0x0

    .line 2812
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    :goto_0
    if-eqz v1, :cond_c

    invoke-virtual {v4}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_c

    iget v9, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 2813
    invoke-virtual {v4, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 2814
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v4, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    .line 2815
    .local v5, phoneNumber:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2819
    .local v3, isSpecial:Z
    sget-boolean v9, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v9, :cond_a

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    .line 2821
    .local v2, isN11Number:Z
    :goto_1
    if-eqz v0, :cond_1

    iget-wide v9, v0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_b

    .line 2824
    :cond_2
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2825
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2836
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v2           #isN11Number:Z
    .end local v3           #isSpecial:Z
    .end local v5           #phoneNumber:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x7

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2839
    sget-boolean v9, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v9, :cond_3

    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 2840
    :cond_3
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v9}, Lcom/android/htcdialer/CdmaE911Receiver;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2841
    const/16 v9, 0x8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2849
    :cond_4
    :goto_3
    const/16 v9, 0xa

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2853
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2854
    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v9}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2855
    :cond_5
    const/16 v9, 0x36

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2862
    :cond_6
    :goto_4
    sget-boolean v9, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v9, :cond_7

    .line 2863
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v9, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->prepareMenus(Landroid/view/Menu;)V

    .line 2866
    :cond_7
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2867
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2868
    .local v8, switchKeypadString:Ljava/lang/String;
    const v7, 0x7f02005f

    .line 2869
    .local v7, switchKeypadIcon:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 2870
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2871
    const v7, 0x7f02005e

    .line 2873
    :cond_8
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2874
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2877
    const/4 v9, 0x1

    return v9

    .line 2811
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v7           #switchKeypadIcon:I
    .end local v8           #switchKeypadString:Ljava/lang/String;
    :cond_9
    invoke-virtual {v4, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/search/SearchableObject;

    move-object v1, v9

    goto/16 :goto_0

    .line 2819
    .restart local v0       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v1       #data:Lcom/android/htcdialer/search/SearchableObject;
    .restart local v3       #isSpecial:Z
    .restart local v5       #phoneNumber:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2827
    .restart local v2       #isN11Number:Z
    :cond_b
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2828
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2831
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v2           #isN11Number:Z
    .end local v3           #isSpecial:Z
    .end local v5           #phoneNumber:Ljava/lang/String;
    :cond_c
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2832
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2843
    :cond_d
    const/16 v9, 0x8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2857
    :cond_e
    const/16 v9, 0x36

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1012
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resolveIntent()V

    .line 1016
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->ensureLayoutPreparedBeofreOnResume()V

    .line 1018
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onResume()V

    .line 1022
    const-wide/high16 v5, 0x4008

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsNaviOn:Z

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isNaviOn()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1023
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updateTaskBarRightIcon()V

    .line 1024
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupScreenOreitation()Z

    .line 1025
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isNaviOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsNaviOn:Z

    .line 1030
    :cond_1
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 1032
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 1041
    .local v4, volume:I
    if-eq v4, v10, :cond_2

    .line 1043
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9, v10, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1050
    .end local v4           #volume:I
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1051
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->queryIpDialCursor()V

    .line 1060
    :cond_3
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    if-eqz v5, :cond_11

    .line 1061
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    .line 1070
    :cond_4
    :goto_0
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v5, :cond_5

    .line 1071
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->resumeVoiceCall()V

    .line 1073
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->updateBarText(Z)V

    .line 1078
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Security_BRIC_flag:Z

    if-ne v5, v9, :cond_6

    .line 1080
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mRandom:Ljava/util/Random;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 1082
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1084
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_12

    .line 1085
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    :goto_1
    sget-boolean v5, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v5, v8, :cond_8

    .line 1107
    :cond_7
    iput-boolean v9, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    .line 1108
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1112
    :cond_8
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v5, :cond_a

    .line 1114
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    if-nez v5, :cond_9

    .line 1115
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "HTC_IME_CURRENT_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    .line 1118
    :cond_9
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/Dialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1125
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->pauseSocialNetworkSync()V

    .line 1129
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->IS_ESPRESSO:Z

    if-eqz v5, :cond_b

    .line 1130
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1131
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0b0009

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1132
    .local v2, im:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #im:Landroid/widget/ImageView;
    :cond_b
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 1138
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    const v6, 0x7f0900a3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1140
    :cond_c
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 1141
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    const v6, 0x7f0900a4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1143
    :cond_d
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    .line 1144
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    const v6, 0x7f0900a8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1146
    :cond_e
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    .line 1147
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    const v6, 0x7f0900a9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1155
    :cond_f
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1156
    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->switchImeForHandwriting(Z)V

    .line 1160
    :cond_10
    return-void

    .line 1064
    :cond_11
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eq v5, v9, :cond_4

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    if-eq v5, v9, :cond_4

    .line 1065
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto/16 :goto_0

    .line 1087
    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    :try_start_1
    const-string v5, "HtcDialer"

    const-string v6, "CALL button: Unable to find ITelephony interface"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1089
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1090
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "HtcDialer"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1427
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onStop()V

    .line 1428
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1435
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 2302
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const v5, 0x1020009

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4668
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4671
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4673
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 4714
    :cond_0
    :goto_0
    sparse-switch v1, :sswitch_data_1

    move v2, v3

    .line 4890
    :goto_1
    return v2

    .line 4681
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v4, :cond_1

    if-eq v5, v1, :cond_0

    .line 4685
    :cond_1
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4691
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v4, :cond_2

    if-eq v5, v1, :cond_0

    .line 4695
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 4702
    :sswitch_2
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mGestureDetectorForList:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4704
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v4, :cond_0

    .line 4705
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v4, :cond_0

    .line 4706
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    goto :goto_0

    :sswitch_3
    move v2, v3

    .line 4721
    goto :goto_1

    .line 4725
    :sswitch_4
    if-nez v0, :cond_4

    .line 4726
    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4727
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4731
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4733
    goto :goto_1

    .line 4728
    :cond_4
    if-eq v0, v2, :cond_5

    if-ne v0, v7, :cond_3

    .line 4729
    :cond_5
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_2

    .line 4736
    :sswitch_5
    if-nez v0, :cond_7

    .line 4737
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4738
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4742
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4744
    goto :goto_1

    .line 4739
    :cond_7
    if-eq v0, v2, :cond_8

    if-ne v0, v7, :cond_6

    .line 4740
    :cond_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_3

    .line 4747
    :sswitch_6
    if-nez v0, :cond_a

    .line 4748
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4749
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4753
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4755
    goto :goto_1

    .line 4750
    :cond_a
    if-eq v0, v2, :cond_b

    if-ne v0, v7, :cond_9

    .line 4751
    :cond_b
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_4

    .line 4758
    :sswitch_7
    if-nez v0, :cond_d

    .line 4759
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4760
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4766
    :cond_c
    :goto_5
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4768
    goto/16 :goto_1

    .line 4762
    :cond_d
    if-eq v0, v2, :cond_e

    if-ne v0, v7, :cond_c

    .line 4763
    :cond_e
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_5

    .line 4771
    :sswitch_8
    if-nez v0, :cond_10

    .line 4772
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4773
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4779
    :cond_f
    :goto_6
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4781
    goto/16 :goto_1

    .line 4775
    :cond_10
    if-eq v0, v2, :cond_11

    if-ne v0, v7, :cond_f

    .line 4776
    :cond_11
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_6

    .line 4784
    :sswitch_9
    if-nez v0, :cond_13

    .line 4785
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4786
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4792
    :cond_12
    :goto_7
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4794
    goto/16 :goto_1

    .line 4788
    :cond_13
    if-eq v0, v2, :cond_14

    if-ne v0, v7, :cond_12

    .line 4789
    :cond_14
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_7

    .line 4797
    :sswitch_a
    if-nez v0, :cond_16

    .line 4798
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4799
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4805
    :cond_15
    :goto_8
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4807
    goto/16 :goto_1

    .line 4801
    :cond_16
    if-eq v0, v2, :cond_17

    if-ne v0, v7, :cond_15

    .line 4802
    :cond_17
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_8

    .line 4810
    :sswitch_b
    if-nez v0, :cond_19

    .line 4811
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4812
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4818
    :cond_18
    :goto_9
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4820
    goto/16 :goto_1

    .line 4814
    :cond_19
    if-eq v0, v2, :cond_1a

    if-ne v0, v7, :cond_18

    .line 4815
    :cond_1a
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_9

    .line 4823
    :sswitch_c
    if-nez v0, :cond_1c

    .line 4824
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4825
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4831
    :cond_1b
    :goto_a
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4833
    goto/16 :goto_1

    .line 4827
    :cond_1c
    if-eq v0, v2, :cond_1d

    if-ne v0, v7, :cond_1b

    .line 4828
    :cond_1d
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_a

    .line 4836
    :sswitch_d
    if-nez v0, :cond_1f

    .line 4837
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4838
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_1e
    :goto_b
    move v2, v3

    .line 4845
    goto/16 :goto_1

    .line 4840
    :cond_1f
    if-eq v0, v2, :cond_20

    if-ne v0, v7, :cond_1e

    .line 4841
    :cond_20
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_b

    .line 4849
    :sswitch_e
    const-string v4, "HtcDialer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch pound, action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    if-nez v0, :cond_22

    .line 4852
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4853
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_21
    :goto_c
    move v2, v3

    .line 4865
    goto/16 :goto_1

    .line 4855
    :cond_22
    if-eq v0, v2, :cond_23

    if-ne v0, v7, :cond_21

    .line 4856
    :cond_23
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_c

    .line 4868
    :sswitch_f
    if-nez v0, :cond_25

    .line 4869
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4870
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_24
    :goto_d
    move v2, v3

    .line 4877
    goto/16 :goto_1

    .line 4872
    :cond_25
    if-eq v0, v2, :cond_26

    if-ne v0, v7, :cond_24

    .line 4873
    :cond_26
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_d

    .line 4881
    :sswitch_10
    if-nez v0, :cond_27

    .line 4883
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_27
    move v2, v3

    .line 4886
    goto/16 :goto_1

    .line 4673
    :sswitch_data_0
    .sparse-switch
        0x1020005 -> :sswitch_0
        0x1020009 -> :sswitch_0
        0x102000a -> :sswitch_2
        0x7f0b0025 -> :sswitch_0
        0x7f0b0040 -> :sswitch_1
    .end sparse-switch

    .line 4714
    :sswitch_data_1
    .sparse-switch
        0x1020005 -> :sswitch_3
        0x1020009 -> :sswitch_3
        0x202001a -> :sswitch_f
        0x202001b -> :sswitch_e
        0x202016a -> :sswitch_10
        0x2020180 -> :sswitch_4
        0x2020181 -> :sswitch_5
        0x2020182 -> :sswitch_6
        0x2020183 -> :sswitch_7
        0x2020184 -> :sswitch_8
        0x2020185 -> :sswitch_9
        0x2020186 -> :sswitch_a
        0x2020187 -> :sswitch_b
        0x2020188 -> :sswitch_c
        0x2020189 -> :sswitch_d
        0x7f0b0025 -> :sswitch_3
    .end sparse-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4657
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 4664
    :cond_0
    :goto_0
    return v0

    .line 4660
    :cond_1
    iget v2, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 4661
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    move v0, v1

    .line 4662
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 749
    return-void
.end method

.method public pauseSocialNetworkSync()V
    .locals 2

    .prologue
    .line 7683
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_SOCIAL_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7684
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 7685
    return-void
.end method

.method placeCall()V
    .locals 3

    .prologue
    .line 3706
    const/4 v0, 0x0

    .line 3708
    .local v0, number:Ljava/lang/String;
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_4

    .line 3710
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3711
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 3712
    if-eqz v0, :cond_0

    .line 3713
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 3741
    :cond_0
    :goto_0
    return-void

    .line 3717
    :cond_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3718
    const-string v1, "HtcDialer"

    const-string v2, "Invalid State - mDigitsMode=MODE_DEFAULT_HINT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3722
    :cond_2
    sget-boolean v1, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v1, :cond_3

    .line 3723
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(I)V

    goto :goto_0

    .line 3726
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->placeLastDial()V

    goto :goto_0

    .line 3731
    :cond_4
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 3732
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_5

    .line 3733
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3740
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 3736
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(I)V

    goto :goto_0
.end method

.method placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V
    .locals 7
    .parameter "contactInfo"

    .prologue
    const/4 v6, 0x1

    .line 3473
    if-eqz p1, :cond_1

    .line 3474
    iget-object v3, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3476
    :cond_0
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 3520
    :cond_1
    :goto_0
    return-void

    .line 3481
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v3, v6, :cond_3

    .line 3483
    iget-object v3, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->checkMMIcode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3491
    :cond_3
    sget-boolean v3, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_NOT_ALLOW_DIAL_ECC_FROM_RECENT_CALLS:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3494
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 3495
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v3}, Lcom/android/htcdialer/CdmaE911Receiver;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    if-eq v1, v6, :cond_1

    .line 3507
    .end local v1           #phoneType:I
    :cond_5
    const-string v3, "tel"

    iget-object v4, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3509
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3510
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/htc/util/phone/DialUtils;->copyDialExtra(Landroid/content/Intent;Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 3513
    const-string v3, "fromDialer"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3517
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 3518
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto :goto_0
.end method

.method placeCall(Ljava/lang/String;)V
    .locals 14
    .parameter "number"

    .prologue
    .line 3525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3528
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 3542
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 3544
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->checkMMIcode(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3662
    :cond_1
    :goto_0
    return-void

    .line 3531
    :cond_2
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 3533
    sget-boolean v10, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v10, :cond_0

    .line 3536
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto :goto_0

    .line 3548
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3550
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->placeLastDial()V

    goto :goto_0

    .line 3555
    :cond_5
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v10, v11, :cond_9

    .line 3556
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3557
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-eqz v0, :cond_9

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCount()I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 3558
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/search/SearchableObject;

    .line 3559
    .local v6, itemData:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v6, :cond_9

    .line 3560
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3561
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getMatchedPhoneIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3562
    .local v5, intentPhone:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v2

    .line 3563
    .local v2, contactId:J
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v2

    if-gez v10, :cond_9

    if-eqz v5, :cond_9

    .line 3564
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v9

    .line 3565
    .local v9, sName:Ljava/lang/String;
    const-wide/16 v10, 0x0

    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhotoId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    const/4 v1, 0x1

    .line 3566
    .local v1, bHasPhoto:Z
    :goto_1
    const-string v10, "personId"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3567
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3568
    const-string v10, "name"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3570
    :cond_6
    if-eqz v1, :cond_7

    .line 3571
    const-string v10, "hasPhoto"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3576
    :cond_7
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v7

    .line 3577
    .local v7, phoneType:I
    const-string v10, "number"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3578
    const-string v10, "numberType"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3587
    const-string v10, "fromDialer"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3592
    const-string v10, "home_dialing"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3594
    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 3595
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto/16 :goto_0

    .line 3565
    .end local v1           #bHasPhoto:Z
    .end local v7           #phoneType:I
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 3605
    .end local v0           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v2           #contactId:J
    .end local v5           #intentPhone:Landroid/content/Intent;
    .end local v6           #itemData:Lcom/android/htcdialer/search/SearchableObject;
    .end local v9           #sName:Ljava/lang/String;
    :cond_9
    sget-boolean v10, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v10}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3607
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->contactCardPlaceCall()V

    goto/16 :goto_0

    .line 3613
    :cond_a
    if-eqz p1, :cond_1

    .line 3616
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v10

    if-nez v10, :cond_b

    .line 3617
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->mappedTo12KeyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3621
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, p1, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3625
    .local v4, intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3627
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v10, v11, :cond_d

    .line 3628
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-object v8, v10, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sId:Ljava/lang/String;

    .line 3629
    .local v8, sId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d

    .line 3630
    const-string v10, "personId"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3631
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-boolean v10, v10, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->bHasPhoto:Z

    if-eqz v10, :cond_c

    .line 3632
    const-string v10, "hasPhoto"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3634
    :cond_c
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-object v10, v10, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 3635
    const-string v10, "name"

    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-object v11, v11, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3643
    .end local v8           #sId:Ljava/lang/String;
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 3645
    const-string v10, "number"

    invoke-virtual {v4, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3651
    :cond_e
    const-string v10, "fromDialer"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3655
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 3656
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3660
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto/16 :goto_0
.end method

.method protected requestWindowFeatures()V
    .locals 1

    .prologue
    .line 2185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->requestWindowFeature(I)Z

    .line 2186
    return-void
.end method

.method public resolveIntent()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1639
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1640
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getParent()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1646
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v3, v6

    .line 1650
    .local v3, isEditAction:Z
    :goto_1
    if-eqz v3, :cond_6

    .line 1652
    iget-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mPreEnableEditNumSearch:Z

    if-nez v7, :cond_1

    .line 1653
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mDisableEditNumSearch:Z

    .line 1655
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->onEditNumberIntent(Landroid/content/Intent;)V

    .line 1674
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    const-string v6, "ota"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1675
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090006

    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090007

    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1676
    .local v4, message:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const v8, 0x7f090008

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090005

    new-instance v7, Lcom/android/htcdialer/Dialer$8;

    invoke-direct {v7, p0}, Lcom/android/htcdialer/Dialer$8;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/htcdialer/Dialer$7;

    invoke-direct {v6, p0}, Lcom/android/htcdialer/Dialer$7;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1713
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1718
    .end local v4           #message:Ljava/lang/String;
    :cond_3
    return-void

    .line 1642
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isEditAction:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .restart local v2       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .restart local v0       #action:Ljava/lang/String;
    :cond_5
    move v3, v5

    .line 1647
    goto/16 :goto_1

    .line 1656
    .restart local v3       #isEditAction:Z
    :cond_6
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1657
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/htcdialer/HtcIpDialActivity;->updateState(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-nez v6, :cond_2

    .line 1659
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->queryIpDialCursor()V

    goto/16 :goto_2

    .line 1661
    :cond_7
    const-string v6, "com.htc.util.phone.DialUtils.QWERTY.action_key_event"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1662
    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->launchHomeDigit(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1663
    :cond_8
    const-string v6, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1665
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x51

    if-ne v6, v7, :cond_2

    .line 1666
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1667
    .local v1, broacastIntent:Landroid/content/Intent;
    const-string v6, "com.htc.intent.action.LAUNCHDIALER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public resumeSocialNetworkSync()V
    .locals 2

    .prologue
    .line 7689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_SOCIAL_GO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7690
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 7691
    return-void
.end method

.method sendEmail(I)V
    .locals 13
    .parameter "itemPos"

    .prologue
    .line 4038
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 4039
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    .line 4040
    .local v3, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v3, :cond_1

    .line 4041
    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v2

    .line 4042
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_1

    iget-wide v9, v2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 4043
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 4044
    .local v6, mailUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v9, v10, v11}, Lcom/htc/provider/ContactsContract$CommonDataKinds$Email;->getEmailCursorAndLocateAtPrimary(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v7

    .line 4047
    .local v7, primaryMailCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 4048
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4049
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4051
    .local v4, email:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4052
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "mailto"

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 4055
    .local v8, sendUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    invoke-direct {v9, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 4057
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 4060
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 4062
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #sendUri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4066
    .end local v2           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v6           #mailUri:Landroid/net/Uri;
    .end local v7           #primaryMailCursor:Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method sendSMS(I)V
    .locals 7
    .parameter "itemPos"

    .prologue
    .line 4018
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 4019
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 4020
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v1, :cond_0

    .line 4021
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v2

    .line 4022
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4023
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 4029
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 4032
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setSearchMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 8031
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    .line 8032
    .local v0, oldMode:I
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->setSearchMode(I)V

    .line 8033
    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 8035
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 8037
    :cond_1
    return-void
.end method

.method public setupContentView()V
    .locals 13

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/DialerApp;

    invoke-virtual {v9}, Lcom/android/htcdialer/DialerApp;->getDialerLayout()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    .line 1905
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    if-eqz v9, :cond_b

    .line 1913
    :goto_0
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->setContentView(Landroid/view/View;)V

    .line 1915
    sget-boolean v9, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v9, :cond_0

    .line 1916
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 1922
    :cond_0
    iget-object v9, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 1923
    iget-object v9, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 1924
    iget-object v9, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 1926
    const v9, 0x202016a

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    .line 1927
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;)V

    .line 1928
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    const/16 v10, 0x32

    invoke-direct {p0, v9, v10}, Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V

    .line 1930
    const v9, 0x7f0b0025

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    .line 1931
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1932
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1934
    const v9, 0x1020005

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    .line 1935
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1936
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1937
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1938
    .local v8, visible:I
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1939
    sget-boolean v9, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v9, :cond_1

    .line 1940
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1941
    .local v0, color:I
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1942
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1943
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1944
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tv:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 1945
    .restart local v5       #tv:Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1946
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1958
    .end local v0           #color:I
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_1
    const v9, 0x1020009

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/widget/AccumulatorText;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    .line 1963
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->setRequestedInputType(Landroid/widget/EditText;)V

    .line 1974
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const v10, 0x7f050001

    invoke-virtual {v9, v10}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSizes(I)V

    .line 1978
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupVoiceDialing()V

    .line 1982
    const v9, 0x7f0b0024

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1983
    .local v2, speakButton:Landroid/widget/ImageView;
    const/16 v9, 0x32

    invoke-direct {p0, v2, v9}, Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V

    .line 1984
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1985
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1986
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1987
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1988
    new-instance v4, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    invoke-direct {v4}, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;-><init>()V

    .line 1989
    .local v4, tag:Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    const v9, 0x7f0b001c

    iput v9, v4, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->id:I

    .line 1990
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1998
    .end local v4           #tag:Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    :cond_2
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v9, :cond_3

    .line 1999
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 2005
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    new-instance v10, Lcom/android/htcdialer/Dialer$9;

    invoke-direct {v10, p0}, Lcom/android/htcdialer/Dialer$9;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v9, v10}, Lcom/android/htcdialer/widget/AccumulatorText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2035
    :cond_3
    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-nez v9, :cond_4

    .line 2036
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    iput v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    .line 2038
    :cond_4
    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    sget-boolean v9, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-eqz v9, :cond_6

    .line 2039
    :cond_5
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initCDMAFeature()V

    .line 2043
    :cond_6
    const v9, 0x7f0b0040

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/widget/DialerKeypad;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    .line 2044
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->setupKeypadListener(Landroid/view/View;)V

    .line 2045
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {v9, p0}, Lcom/android/htcdialer/widget/DialerKeypad;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2048
    const v9, 0x7f0b003f

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    .line 2049
    sget-boolean v9, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v9, :cond_7

    .line 2050
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 2054
    :cond_7
    const v9, 0x7f0b003e

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    .line 2056
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    if-eqz v9, :cond_8

    .line 2057
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    const v10, 0x2020103

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2059
    .local v7, view:Landroid/view/View;
    const-string v9, "common_button_small"

    invoke-static {v7, v9}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 2060
    const v9, 0x2020104

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2061
    const v9, 0x2020105

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2062
    .local v6, txt:Landroid/widget/TextView;
    const v9, 0x7f09001f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2063
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2064
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2072
    .end local v6           #txt:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    :cond_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setListenersForKeypadControl()V

    .line 2074
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupOnItemScrollListener()V

    .line 2076
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 2078
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 2080
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    if-nez v9, :cond_9

    .line 2081
    new-instance v9, Lcom/android/htcdialer/util/KeypadUtils;

    invoke-direct {v9}, Lcom/android/htcdialer/util/KeypadUtils;-><init>()V

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    .line 2084
    :cond_9
    const v9, 0x7f0b003d

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mKeypadShadow:Landroid/view/View;

    .line 2090
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "show_keypad_stub"

    const-string v11, "id"

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2091
    .local v1, id:I
    if-eqz v1, :cond_a

    .line 2092
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 2093
    .local v3, stub:Landroid/view/ViewStub;
    if-eqz v3, :cond_a

    .line 2094
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    .line 2095
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    if-eqz v9, :cond_a

    .line 2096
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    .end local v3           #stub:Landroid/view/ViewStub;
    :cond_a
    return-void

    .line 1910
    .end local v1           #id:I
    .end local v2           #speakButton:Landroid/widget/ImageView;
    .end local v8           #visible:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/DialerApp;

    invoke-virtual {v9}, Lcom/android/htcdialer/DialerApp;->inflateDialerLayout()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public setupKeypadListener(Landroid/view/View;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2224
    const v0, 0x2020180

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2225
    const v0, 0x2020181

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2226
    const v0, 0x2020182

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2227
    const v0, 0x2020183

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2228
    const v0, 0x2020184

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2229
    const v0, 0x2020185

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2230
    const v0, 0x2020186

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2231
    const v0, 0x2020187

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2232
    const v0, 0x2020188

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2233
    const v0, 0x202001a

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2234
    const v0, 0x2020189

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2235
    const v0, 0x202001b

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2236
    return-void
.end method

.method public superFinishForTestOnly()V
    .locals 0

    .prologue
    .line 8444
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->finish()V

    .line 8445
    return-void
.end method

.method viewCallHistoy()V
    .locals 5

    .prologue
    .line 3893
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 3896
    .local v1, item0:Lcom/android/htcdialer/search/SearchableObject;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 3898
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3899
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3901
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.ViewCallHistory"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3903
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3921
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3922
    return-void

    .line 3904
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    sget v2, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v2, :cond_1

    .line 3907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewCallHistoy(): sectionIndex of Item[0] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->log(Ljava/lang/String;)V

    .line 3909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3910
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.htcdialer"

    const-string v3, "com.android.htcdialer.carhome.MakecallSelectPeopleActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3911
    const-string v2, "display_mode"

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3912
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3914
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3915
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3916
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3917
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method viewContactCard(I)V
    .locals 1
    .parameter "itemPos"

    .prologue
    .line 3944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/htcdialer/Dialer;->viewContactCard(ILjava/lang/String;)V

    .line 3945
    return-void
.end method

.method viewContactCard(ILjava/lang/String;)V
    .locals 10
    .parameter "itemPos"
    .parameter "tab"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3948
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3949
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 3950
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v2, :cond_2

    .line 3952
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v1

    .line 3953
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    .line 3954
    .local v5, phoneNumber:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 3957
    .local v4, isSpecial:Z
    sget-boolean v8, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v8, :cond_3

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .line 3959
    .local v3, isN11Number:Z
    :goto_0
    if-nez v4, :cond_0

    if-eqz v3, :cond_4

    .line 3960
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->viewUnknownContactCard(Ljava/lang/String;)V

    .line 3969
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3971
    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v3           #isN11Number:Z
    .end local v4           #isSpecial:Z
    .end local v5           #phoneNumber:Ljava/lang/String;
    :cond_2
    return-void

    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v4       #isSpecial:Z
    .restart local v5       #phoneNumber:Ljava/lang/String;
    :cond_3
    move v3, v7

    .line 3957
    goto :goto_0

    .line 3961
    .restart local v3       #isN11Number:Z
    :cond_4
    if-eqz v1, :cond_1

    .line 3962
    iget-boolean v8, v1, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    if-eqz v8, :cond_5

    .line 3963
    iget-wide v7, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-direct {p0, v7, v8, v6, p2}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V

    goto :goto_1

    .line 3965
    :cond_5
    iget-wide v8, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-direct {p0, v8, v9, v7, p2}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V

    goto :goto_1
.end method

.method viewContactList()V
    .locals 4

    .prologue
    .line 3926
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 3928
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3929
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3931
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3939
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3940
    return-void

    .line 3933
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3934
    .local v1, viewAll:Landroid/content/Intent;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3935
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
