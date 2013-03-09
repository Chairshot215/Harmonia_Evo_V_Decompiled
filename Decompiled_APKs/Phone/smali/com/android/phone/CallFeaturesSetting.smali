.class public Lcom/android/phone/CallFeaturesSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field protected static final APTG_ALWAYS_CALL_FWD_VOICEMAIL_DISABLE_NUM:Ljava/lang/String; = "*210"

.field protected static final APTG_ALWAYS_CALL_FWD_VOICEMAIL_ENABLE_NUM:Ljava/lang/String; = "*21#0982000777"

.field protected static final APTG_CALL_FWD_VOICEMAIL_DISABLE:I = 0x0

.field protected static final APTG_CALL_FWD_VOICEMAIL_DISABLE_NUM:Ljava/lang/String; = "*650"

.field protected static final APTG_CALL_FWD_VOICEMAIL_ENABLE:I = 0x1

.field protected static final APTG_CALL_FWD_VOICEMAIL_ENABLE_NUM:Ljava/lang/String; = "*65#0982000777"

.field protected static final APTG_VOICEMAIL_NUM:Ljava/lang/String; = "777"

.field private static final BUTTON_ALWAYS_CALL_FWD_TO_VOICEMAIL:Ljava/lang/String; = "button_always_call_fwd_to_voicemail_key"

.field private static final BUTTON_CALL_BARRING_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_TO_VOICEMAIL:Ljava/lang/String; = "button_call_fwd_to_voicemail_key"

.field private static final BUTTON_CDMA_ASSISTED_DIALING:Ljava/lang/String; = "button_cdma_assissted_dialing_key"

.field private static final BUTTON_CDMA_NBPCD:Ljava/lang/String; = "button_cdma_nbpcd_key"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final BUTTON_CLEAR_MWI_KEY:Ljava/lang/String; = "button_clear_mwi_key"

.field private static final BUTTON_DIAL_IN_VOICEMAIL_KEY:Ljava/lang/String; = "button_dial_in_voicemail_key"

.field private static final BUTTON_DTMF_KEY:Ljava/lang/String; = "button_dtmf_settings"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_GLOBAL_KEY:Ljava/lang/String; = "button_global_mode_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final BUTTON_HAC_KEY:Ljava/lang/String; = "button_hac_key"

.field private static final BUTTON_PHONE_NUMBER_KEY:Ljava/lang/String; = "button_phone_number_key"

.field private static final BUTTON_RESPOND_VIA_SMS_KEY:Ljava/lang/String; = "button_respond_via_sms_key"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry_key"

.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final BUTTON_UMTS_TTY_KEY:Ljava/lang/String; = "button_tty_key"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field public static final CB_SETTING:Ljava/lang/String; = "pref_key_cb_enable"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DBG:Z = false

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "channel DESC"

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = ""

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final ENHANCED_PLUS_CODE_DIALING_ID:I = 0x3

.field private static final ENHANCED_PLUS_CODE_DIALING_KEY:Ljava/lang/String; = "enhanced_plus_code_dialing_key"

.field private static final ENHANCED_PLUS_CODE_DIALING_NUMBER_KEY:Ljava/lang/String; = "enhanced_plus_code_dialing_number_key"

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field private static final FDN_ON_ERROR:I = 0x3b6

.field static final FORWARDING_SETTINGS_REASONS:[I = null

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo; = null

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "CallFeaturesSetting"

.field private static final MSG_DUE_TO_FDN:I = 0x3b6

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_OK:I = 0x64

.field private static final MSG_RADIO_OFF:I = 0x320

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final REGISTER_NETWORK_DIALOG:I = 0x3e9

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field private static final UP_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final UP_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.contacts"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x25b

.field static final preferredTtyMode:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAlwaysCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

.field private mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

.field private mButtonDTMF:Lcom/htc/preference/HtcListPreference;

.field private mButtonDialVoiceMail:Lcom/htc/preference/HtcPreference;

.field private mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

.field private mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

.field private mCallBarringSettings:Lcom/htc/preference/HtcPreferenceScreen;

.field mChangingVMorFwdDueToProviderChange:Z

.field private mClearMwi:Lcom/htc/preference/HtcPreference;

.field private mContactListIntent:Landroid/content/Intent;

.field mCurrentDialogId:I

.field private mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mHAC:Lcom/android/phone/HACSetting;

.field private mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

.field private mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mTTY:Lcom/android/phone/TTYSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

.field private mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 177
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 284
    const-string v0, "content://cbchannels/cbch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->CONTENT_URI:Landroid/net/Uri;

    .line 286
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->PROJECTION:[Ljava/lang/String;

    .line 335
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 320
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    .line 425
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 431
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 438
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 443
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 448
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 453
    iput v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 459
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 465
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 472
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 478
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 484
    iput v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 537
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1094
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1301
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1370
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 2705
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2806
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    .line 2807
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1412
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1413
    const/4 v2, 0x1

    .line 1425
    .local v2, result:Z
    :cond_0
    :goto_0
    return v2

    .line 1417
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x1

    .line 1418
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1419
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1420
    const/4 v2, 0x0

    .line 1421
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1432
    const/4 v3, 0x0

    .line 1433
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1435
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1436
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1437
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1438
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1439
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1440
    if-nez v3, :cond_1

    .line 1441
    const-string v3, ""

    .line 1446
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1456
    const-string v0, ""

    .line 1460
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 2052
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2062
    :cond_1
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 2063
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 2064
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 2065
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    .line 2066
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2067
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    if-nez v0, :cond_0

    .line 2497
    :goto_0
    return-void

    .line 2494
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1017
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1018
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2500
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2501
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #key:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getSipCallOptionPreference()Lcom/htc/preference/HtcListPreference;
    .locals 4

    .prologue
    .line 2077
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 2079
    .local v1, wifiAnd3G:Lcom/htc/preference/HtcListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 2081
    .local v2, wifiOnly:Lcom/htc/preference/HtcListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 2083
    .local v0, sipSettings:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2084
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 2088
    .end local v2           #wifiOnly:Lcom/htc/preference/HtcListPreference;
    :goto_0
    return-object v2

    .line 2087
    .restart local v2       #wifiOnly:Lcom/htc/preference/HtcListPreference;
    :cond_0
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-object v2, v1

    .line 2088
    goto :goto_0
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 2523
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2524
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2525
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2526
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2527
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2528
    return-void
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1467
    const/4 v2, 0x1

    .line 1468
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1469
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1470
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1471
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_0

    .line 1473
    const/4 v2, 0x0

    .line 1474
    const/4 v1, 0x1

    .line 1477
    :cond_0
    if-eqz v2, :cond_1

    .line 1478
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_1

    .line 1480
    const/4 v2, 0x0

    .line 1483
    :cond_1
    if-eqz v2, :cond_2

    .line 1486
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1488
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1490
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1500
    :goto_0
    return-void

    .line 1492
    :cond_2
    if-eqz v1, :cond_3

    .line 1493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1494
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1496
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1497
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 2213
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2215
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 2217
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2218
    return-void
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1516
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1517
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 980
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1503
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1504
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1505
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1506
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1512
    :goto_0
    return-void

    .line 1509
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1510
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1511
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1212
    const/4 v4, 0x0

    .line 1213
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 1214
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1215
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 1216
    move-object v4, v2

    .line 1221
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_0
    return-object v4

    .line 1214
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 22

    .prologue
    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2280
    const/4 v14, 0x0

    .line 2283
    .local v14, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 2284
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2287
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2293
    :cond_0
    if-eqz v14, :cond_1

    .line 2294
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 2299
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 2302
    const v18, 0x7f0e02c6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2303
    .local v10, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2308
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2309
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2310
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 2311
    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 2316
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 2317
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 2318
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2319
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2322
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2325
    add-int/lit8 v9, v9, -0x1

    .line 2316
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2328
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2329
    .local v11, nameForDisplay:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 2330
    .local v13, providerIntent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2341
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #nameForDisplay:Ljava/lang/String;
    .end local v13           #providerIntent:Landroid/content/Intent;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    .line 2342
    .local v4, entries:[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2343
    .local v17, values:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 2344
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 2345
    const/4 v5, 0x1

    .line 2346
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 2347
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2348
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 2346
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2351
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 2352
    aput-object v8, v17, v5

    .line 2353
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2356
    .end local v8           #key:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2362
    sget-boolean v18, Lcom/android/phone/HtcFeatureList;->FEATURE_SETUP_VOICE_MAIL_SERVICE_TO_MYCARRIER:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 2369
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2371
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2208
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCallBarringEnabled()Z
    .locals 2

    .prologue
    .line 2773
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isCallBarringDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x98

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFDNEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2758
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd1

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd2

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->checkFDNCapability()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 2764
    .local v0, disabled:Z
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .end local v0           #disabled:Z
    :cond_1
    move v0, v2

    .line 2758
    goto :goto_0

    .restart local v0       #disabled:Z
    :cond_2
    move v1, v2

    .line 2764
    goto :goto_1
.end method

.method private isHomeCountryEnabled()Z
    .locals 2

    .prologue
    .line 2783
    const-wide v0, 0x4000cccccccccccdL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    return v0
.end method

.method private isPureGsmUmtsPhone()Z
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isPureGsmUmtsPhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 1226
    const/4 v0, 0x1

    .line 1227
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1230
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1231
    const/4 v0, 0x0

    .line 1234
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 2446
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2448
    .local v6, vmNumberSetting:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2482
    :goto_0
    return-object v5

    .line 2454
    :cond_0
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2455
    .local v0, cfi:[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2456
    .local v1, fwdKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2458
    .local v2, fwdLen:I
    if-lez v2, :cond_1

    .line 2459
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2460
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 2461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2463
    .local v4, settingKey:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 2464
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2466
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2469
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2470
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2471
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2473
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2460
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2478
    .end local v3           #i:I
    .end local v4           #settingKey:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2482
    .local v5, settings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2223
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 2374
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 9
    .parameter "key"
    .parameter "newSettings"

    .prologue
    .line 2404
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    if-nez v7, :cond_1

    .line 2435
    :cond_0
    :goto_0
    return-void

    .line 2407
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 2408
    .local v0, curSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2416
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2417
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2419
    .local v3, fwdKey:Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2420
    .local v5, s:[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 2421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2422
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 2423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2425
    .local v6, settingKey:Ljava/lang/String;
    aget-object v2, v5, v4

    .line 2426
    .local v2, fi:Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2422
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2432
    .end local v2           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i:I
    .end local v6           #settingKey:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2434
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1240
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 6
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    .line 1029
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1031
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1032
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1035
    :cond_0
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1043
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1046
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1050
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1054
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_3

    .line 1056
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1058
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1092
    :cond_2
    :goto_0
    return-void

    .line 1066
    :cond_3
    const/16 v1, 0x259

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    .line 1069
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1070
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 1071
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1072
    iput v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1073
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1074
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1078
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1079
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1080
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1081
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1090
    .end local v0           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 1245
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1246
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1247
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_4

    .line 1249
    const/4 v6, 0x1

    .line 1251
    .local v6, dismissflag:Z
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 1252
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v8, v0, v9

    .line 1255
    .local v8, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v7

    .line 1258
    .local v7, doUpdate:Z
    if-eqz v7, :cond_0

    .line 1260
    const/4 v6, 0x0

    .line 1264
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v13, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v8, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v11, 0x1f5

    iget v12, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v11, v12, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1252
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v1, v10

    .line 1266
    goto :goto_1

    .line 1278
    .end local v7           #doUpdate:Z
    .end local v8           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    if-ne v6, v13, :cond_3

    .line 1280
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    .line 1288
    .end local v6           #dismissflag:Z
    .end local v9           #i:I
    :cond_3
    :goto_2
    return-void

    .line 1286
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    .line 1013
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1687
    sparse-switch p1, :sswitch_data_0

    .line 1709
    :goto_0
    return-void

    .line 1691
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1694
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1697
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1700
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1703
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1687
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Lcom/htc/preference/HtcPreference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 2386
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2387
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 2388
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2389
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/preference/HtcPreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2394
    :cond_0
    return-void

    .line 2387
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/16 v5, 0x25b

    const/4 v12, 0x0

    .line 761
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 762
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 764
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 766
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 767
    .local v9, prevSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 775
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 777
    if-eqz v9, :cond_4

    .line 780
    iget-object v8, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 781
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_5

    .line 782
    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 783
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 784
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_5

    .line 785
    aget-object v6, v8, v7

    .line 791
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 792
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 784
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v1, v12

    .line 794
    goto :goto_1

    .line 810
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 811
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 821
    .end local v9           #prevSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    :cond_5
    :goto_2
    return-void

    .line 818
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    goto :goto_2
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .parameter "currentProviderSetting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2233
    move-object v0, p1

    .line 2234
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2243
    .local v1, provider:Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 2244
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    const v4, 0x7f0e02c5

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2246
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2247
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 2248
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2264
    :goto_0
    return-void

    .line 2250
    :cond_0
    iget-object v2, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2251
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2252
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0407

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2254
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v8}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 2258
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isVoiceMailNumDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2259
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 2262
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1524
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1528
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1529
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1530
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1532
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1533
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1535
    .local v0, summary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1533
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0e0405

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/4 v9, 0x0

    .line 1110
    if-nez p1, :cond_1

    .line 1112
    const-string v5, "CallFeaturesSetting"

    const-string v6, "ar == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    const/4 v2, 0x0

    .line 1117
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1121
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1123
    :cond_2
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 1127
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 1132
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v5, :cond_0

    .line 1139
    if-eqz v2, :cond_4

    .line 1142
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1146
    const/16 v5, 0x259

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1148
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_0

    .line 1153
    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1154
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 1155
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 1156
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 1157
    aget-object v3, v0, v4

    .line 1161
    :cond_5
    if-nez v3, :cond_a

    .line 1167
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1168
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1169
    sget-object v5, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1170
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1181
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 1184
    const/4 v1, 0x1

    .line 1185
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 1186
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    .line 1187
    const/4 v1, 0x0

    .line 1191
    :cond_7
    if-eqz v1, :cond_0

    .line 1198
    iget-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    .line 1199
    const-string v5, ""

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1202
    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1204
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 1155
    .end local v1           #done:Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1174
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 1175
    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 1185
    .restart local v1       #done:Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 844
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 845
    const/4 v8, 0x0

    .line 850
    .local v8, failure:Z
    iget-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 851
    .local v12, isVMProviderSettingsForced:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 853
    const/4 v14, 0x0

    .line 854
    .local v14, vmNum:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    .line 857
    const/4 v8, 0x1

    .line 891
    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    .line 894
    if-eqz v12, :cond_1

    .line 895
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 968
    .end local v8           #failure:Z
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 859
    .restart local v8       #failure:Z
    .restart local v12       #isVMProviderSettingsForced:Z
    .restart local v14       #vmNum:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 862
    const/4 v8, 0x1

    goto :goto_0

    .line 864
    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 867
    if-eqz v12, :cond_4

    .line 870
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 872
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 876
    .local v13, victim:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v11, i:Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const/high16 v1, 0x400

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0, v11}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 883
    .end local v11           #i:Landroid/content/Intent;
    .end local v13           #victim:Ljava/lang/String;
    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 884
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 887
    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    .line 902
    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 903
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 909
    .local v9, fwdNum:Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 915
    .local v10, fwdNumTime:I
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 920
    .end local v8           #failure:Z
    .end local v9           #fwdNum:Ljava/lang/String;
    .end local v10           #fwdNumTime:I
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_8
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 939
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 942
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 944
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_a

    .line 948
    :cond_9
    if-eqz v7, :cond_1

    .line 949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 954
    :cond_a
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    .line 956
    if-eqz v7, :cond_1

    .line 957
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 962
    .end local v7           #cursor:Landroid/database/Cursor;
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->onPickActivityResult(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 939
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCbSyncCompleted(Z)V
    .locals 5
    .parameter "done"

    .prologue
    .line 2689
    const-string v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCbSyncCompleted> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2691
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2692
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2693
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2695
    .end local v0           #checked:Z
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCellBroadcastSetting()V

    .line 2696
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x1f6

    .line 1644
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1645
    packed-switch p2, :pswitch_data_0

    .line 1679
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1681
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 1683
    :cond_1
    :goto_1
    return-void

    .line 1653
    :pswitch_1
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1656
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1662
    :pswitch_2
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1665
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_1

    .line 1645
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 1717
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1721
    const-string v9, "CallFeaturesSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using Device("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1727
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_KDDI_NETWORK_SERVICE:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1728
    const v9, 0x7f050020

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1732
    :cond_0
    const v9, 0x7f050002

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1734
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1735
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1738
    .local v5, phoneType:I
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isPureGsmUmtsPhone()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1739
    const v9, 0x7f050010

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1744
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    .line 1745
    .local v7, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v9, "button_voicemail_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1746
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v9, :cond_2

    .line 1747
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1749
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v9, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1750
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v10, 0x7f0e0398

    invoke-virtual {v9, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1753
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isVoiceMailNumDisabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1754
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1760
    :cond_2
    const-string v9, "button_dtmf_settings"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    .line 1761
    const-string v9, "button_auto_retry_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1762
    const-string v9, "button_hac_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1763
    const-string v9, "button_tty_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1764
    const-string v9, "button_voicemail_provider_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    .line 1766
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_3

    .line 1767
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1768
    const-string v9, "button_voicemail_setting_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    .line 1770
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    .line 1774
    :cond_3
    const-string v9, "button_phone_number_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    .line 1775
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v9, :cond_5

    .line 1776
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isMSISDNalphaTagEditabled()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1777
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const v10, 0x7f0e01e8

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 1778
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const v10, 0x7f0e01e9

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 1779
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_15

    .line 1780
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 1781
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1783
    :cond_4
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1784
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1802
    :cond_5
    :goto_0
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_6

    .line 1803
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isPureGsmUmtsPhone()Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_18

    .line 1804
    const-string v9, "CallFeaturesSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO remove Feature BUTTON_DTMF_ENABLE_KEY("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    .line 1816
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_7

    .line 1817
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->EnableAutoRetry:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    .line 1818
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1825
    :cond_7
    :goto_2
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_8

    .line 1828
    invoke-static {v5}, Lcom/android/phone/HtcFeatureList;->FEATURE_HEARING_AIDS(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1829
    new-instance v9, Lcom/android/phone/HACSetting;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v9, v10}, Lcom/android/phone/HACSetting;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mHAC:Lcom/android/phone/HACSetting;

    .line 1831
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1839
    :cond_8
    :goto_3
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_ENHANCED_PLUS_CODE_DIALING:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 1840
    const-string v9, "button_advanced_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1841
    .local v1, advancedSetting:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_9

    .line 1842
    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1845
    :cond_9
    const v9, 0x7f05001a

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1846
    const-string v9, "enhanced_plus_code_dialing_number_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    .line 1847
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    const/4 v10, 0x3

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 1848
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getPlusCodePrefixNumber()Ljava/lang/String;

    move-result-object v6

    .line 1850
    .local v6, plusCode:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    invoke-virtual {v9, v6}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->setText(Ljava/lang/String;)V

    .line 1851
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1c

    .line 1852
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->setEnabled(Z)V

    .line 1857
    :goto_4
    if-eqz v1, :cond_a

    .line 1858
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    invoke-virtual {v9}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getOrder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setOrder(I)V

    .line 1859
    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1865
    .end local v1           #advancedSetting:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v6           #plusCode:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_b

    .line 1866
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_GSM_TTY_MODE:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isPureGsmUmtsPhone()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 1867
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1868
    new-instance v9, Lcom/android/phone/TTYSetting;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v9, v10}, Lcom/android/phone/TTYSetting;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mTTY:Lcom/android/phone/TTYSetting;

    .line 1877
    :cond_b
    :goto_5
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v9, :cond_1e

    .line 1880
    new-instance v9, Lcom/android/phone/HtcWorldPhoneOptions;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v7, v10}, Lcom/android/phone/HtcWorldPhoneOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    .line 1888
    const-string v9, "button_cdma_assissted_dialing_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1889
    .local v3, pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v3, :cond_c

    .line 1890
    const-string v9, "CallFeaturesSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO re-arrange BUTTON_CDMA_ASSISTED_DIALING("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const v9, 0x7f05001b

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1896
    :cond_c
    const-string v9, "button_advanced_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .end local v3           #pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1897
    .restart local v3       #pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v3, :cond_d

    .line 1898
    const-string v9, "CallFeaturesSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO re-arrange button_advanced_key("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const v9, 0x7f05001c

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1906
    :cond_d
    const-string v9, "button_fdn_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1907
    .local v2, fdnButton:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_e

    .line 1909
    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1968
    .end local v2           #fdnButton:Lcom/htc/preference/HtcPreference;
    .end local v3           #pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_e
    :goto_6
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_ASSISTED_DIALING:Z

    if-nez v9, :cond_f

    .line 1969
    const-string v9, "button_cdma_assissted_dialing_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1970
    .restart local v3       #pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v3, :cond_f

    .line 1971
    const-string v9, "CallFeaturesSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO remove BUTTON_CDMA_ASSISTED_DIALING("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    .end local v3           #pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_f
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1978
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v10, "vnd.android.cursor.item/phone"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    if-nez p1, :cond_10

    .line 1986
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_10

    .line 1989
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_26

    .line 1990
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Lcom/htc/preference/HtcPreference;)V

    .line 1999
    :cond_10
    :goto_7
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 2000
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 2001
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    .line 2003
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2004
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_11

    .line 2006
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2010
    :cond_11
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x31

    if-eq v9, v10, :cond_12

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x7

    if-ne v9, v10, :cond_13

    .line 2013
    :cond_12
    const-string v9, "button_voicemail_category_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v10, "button_clear_mwi_key"

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 2018
    :cond_13
    const-string v9, "button_clear_mwi_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mClearMwi:Lcom/htc/preference/HtcPreference;

    .line 2021
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2025
    const-string v9, "button_dial_in_voicemail_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDialVoiceMail:Lcom/htc/preference/HtcPreference;

    .line 2026
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDialVoiceMail:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 2027
    const-string v9, "button_always_call_fwd_to_voicemail_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAlwaysCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    .line 2028
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAlwaysCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2029
    const-string v9, "button_call_fwd_to_voicemail_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    .line 2030
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2031
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_VOICE_MAIL_SP:Z

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDialVoiceMail:Lcom/htc/preference/HtcPreference;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_14

    .line 2033
    const-string v9, "CallFeaturesSetting"

    const-string v10, "remove BUTTON_DIAL_IN_VOICEMAIL_KEY,BUTTON_CALL_FWD_TO_VOICEMAIL"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const-string v9, "button_voicemail_category_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v10, "button_dial_in_voicemail_key"

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 2038
    const-string v9, "button_voicemail_category_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v10, "button_always_call_fwd_to_voicemail_key"

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 2042
    const-string v9, "button_voicemail_category_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v10, "button_call_fwd_to_voicemail_key"

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 2048
    :cond_14
    return-void

    .line 1787
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_15
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1790
    :cond_16
    const-string v9, "button_phone_number_category_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1792
    .local v4, phoneNumcategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v4, :cond_17

    .line 1793
    invoke-virtual {v7, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1796
    :cond_17
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1797
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    goto/16 :goto_0

    .line 1807
    .end local v4           #phoneNumcategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1808
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 1810
    :cond_19
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1811
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    goto/16 :goto_1

    .line 1820
    :cond_1a
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1821
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_2

    .line 1833
    :cond_1b
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1834
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_3

    .line 1854
    .restart local v1       #advancedSetting:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v6       #plusCode:Ljava/lang/String;
    :cond_1c
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mEnhancedPlusCodeDialing:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1870
    .end local v1           #advancedSetting:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v6           #plusCode:Ljava/lang/String;
    :cond_1d
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1871
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_5

    .line 1914
    :cond_1e
    const/4 v9, 0x2

    if-ne v5, v9, :cond_21

    .line 1916
    const-string v9, "button_fdn_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1917
    .restart local v2       #fdnButton:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_20

    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_SUPPORT_FDN:Z

    if-eqz v9, :cond_1f

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getFdnEnabledStatus()Z

    move-result v9

    if-nez v9, :cond_20

    .line 1924
    :cond_1f
    const-string v9, "CallFeaturesSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove FDN UI.FDN status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getFdnEnabledStatus()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1928
    :cond_20
    new-instance v9, Lcom/android/phone/HtcCdmaCallOptions;

    invoke-direct {v9, p0, v7}, Lcom/android/phone/HtcCdmaCallOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    goto/16 :goto_6

    .line 1929
    .end local v2           #fdnButton:Lcom/htc/preference/HtcPreference;
    :cond_21
    const/4 v9, 0x1

    if-ne v5, v9, :cond_25

    .line 1930
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isFDNEnabled()Z

    move-result v9

    if-nez v9, :cond_22

    .line 1931
    const-string v9, "button_fdn_key"

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1932
    .restart local v2       #fdnButton:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_22

    .line 1933
    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1936
    .end local v2           #fdnButton:Lcom/htc/preference/HtcPreference;
    :cond_22
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isCallBarringEnabled()Z

    move-result v9

    if-nez v9, :cond_23

    .line 1937
    const-string v9, "button_cb_expand_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringSettings:Lcom/htc/preference/HtcPreferenceScreen;

    .line 1938
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringSettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v9, :cond_23

    .line 1939
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringSettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1940
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringSettings:Lcom/htc/preference/HtcPreferenceScreen;

    .line 1945
    :cond_23
    const-string v9, "pref_key_cb_enable"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CustomizeCheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1946
    const-string v9, "pref_key_cb_setting"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1948
    .local v8, settings:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_e

    if-eqz v8, :cond_e

    .line 1949
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCellBroadcase()Z

    move-result v9

    if-nez v9, :cond_24

    .line 1950
    const-string v9, "pref_key_cb_setting"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1951
    const-string v9, "pref_key_cb_enable"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_6

    .line 1953
    :cond_24
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 1954
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1955
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1961
    .end local v8           #settings:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_25
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1992
    :cond_26
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 1994
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0e02bb

    .line 1555
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    .line 1560
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1563
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f0e02b3

    .line 1564
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1601
    const v3, 0x7f0e02b8

    .line 1604
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1608
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1609
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1610
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1611
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1612
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1615
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1633
    .end local v0           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v1

    .line 1566
    .restart local v0       #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0e02c0

    .line 1567
    .restart local v3       #msgId:I
    const v4, 0x7f0e028b

    .line 1569
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1574
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0e02c4

    .line 1575
    .restart local v3       #msgId:I
    const v4, 0x7f0e028b

    .line 1577
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1580
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0e02c1

    .line 1582
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1585
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0e02c2

    .line 1587
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1590
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0e02c3

    .line 1591
    .restart local v3       #msgId:I
    const v5, 0x7f0e0400

    invoke-virtual {v0, v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1592
    const v5, 0x7f0e0401

    invoke-virtual {v0, v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1596
    .end local v3           #msgId:I
    :sswitch_5
    const v3, 0x7f0e007d

    .line 1597
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1619
    .end local v0           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1622
    :cond_2
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1623
    .local v1, dialog:Lcom/htc/app/HtcProgressDialog;
    const v5, 0x7f0e02b2

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1624
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1625
    invoke-virtual {v1, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1626
    if-ne p1, v8, :cond_3

    const v5, 0x7f0e02b5

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0e02b6

    goto :goto_2

    :cond_4
    const v5, 0x7f0e02b4

    goto :goto_2

    .line 1633
    .end local v1           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1564
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
        0x3b6 -> :sswitch_5
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 704
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 708
    move-object v0, p1

    .line 710
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 727
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 741
    :cond_0
    :goto_0
    return-object v1

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e028c

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 2506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2507
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 2508
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2509
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2510
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2511
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 2512
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 2513
    const/4 v2, 0x1

    .line 2515
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 511
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 516
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 520
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->setOnCbSyncCompletedListener(Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;)V

    .line 525
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->pause()V

    .line 529
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 627
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_1

    .line 628
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 629
    .local v1, index:I
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone_type"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    .end local v1           #index:I
    :cond_0
    :goto_0
    return v6

    .line 632
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_3

    .line 633
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v2, p2

    .line 634
    check-cast v2, Ljava/lang/String;

    .line 638
    .local v2, newProviderKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 643
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 645
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 647
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 655
    .local v3, newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_2

    .line 659
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 660
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 666
    :cond_2
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 667
    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .line 670
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_4

    .line 671
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAlwaysCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_6

    .line 676
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 677
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "*21#0982000777"

    invoke-static {v5, v7}, Lcom/android/phone/util/HtcPhoneUtils;->createDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 679
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 680
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "*210"

    invoke-static {v5, v7}, Lcom/android/phone/util/HtcPhoneUtils;->createDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 683
    :cond_6
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwdVoiceMail:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_0

    .line 685
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 686
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "*65#0982000777"

    invoke-static {v5, v7}, Lcom/android/phone/util/HtcPhoneUtils;->createDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 688
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 689
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "*650"

    invoke-static {v5, v7}, Lcom/android/phone/util/HtcPhoneUtils;->createDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 2531
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v5, :cond_3

    .line 2534
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2537
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->getCmdLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, langStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2544
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->getCmdChannelStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2545
    .local v1, mCh:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCellBroadcastSetting()V

    .line 2546
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2547
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    .end local v0           #langStr:Ljava/lang/String;
    .end local v1           #mCh:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 2557
    .restart local v0       #langStr:Ljava/lang/String;
    .restart local v1       #mCh:Ljava/lang/String;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd1

    if-ne v5, v6, :cond_1

    .line 2562
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v7, v7}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2564
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v7, v7}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2567
    .end local v1           #mCh:Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e01c9

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0045

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e02bb

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v6, p0, v0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0256

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 2605
    .end local v0           #langStr:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDialVoiceMail:Lcom/htc/preference/HtcPreference;

    if-ne p1, v5, :cond_4

    .line 2607
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "777"

    invoke-static {v6, v4}, Lcom/android/phone/util/HtcPhoneUtils;->createDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 2612
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 548
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-virtual {v4, p2}, Lcom/android/phone/HtcCdmaCallOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v2

    .line 552
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_0

    .line 554
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    if-eq p2, v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 558
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 559
    .local v1, ttymode:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_tty_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mTTY:Lcom/android/phone/TTYSetting;

    if-eqz v4, :cond_0

    .line 563
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mTTY:Lcom/android/phone/TTYSetting;

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/phone/TTYSetting;->toggle(Z)V

    goto :goto_0

    .end local v1           #ttymode:I
    :cond_3
    move v1, v3

    .line 558
    goto :goto_1

    .line 567
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 568
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v2

    :cond_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 573
    :cond_6
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_a

    .line 574
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v2

    .line 576
    .local v0, hac:I
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "HACSetting"

    if-eqz v0, :cond_9

    const-string v4, "ON"

    :goto_3
    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mHAC:Lcom/android/phone/HACSetting;

    if-eqz v4, :cond_0

    .line 584
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mHAC:Lcom/android/phone/HACSetting;

    if-eqz v0, :cond_7

    move v3, v2

    :cond_7
    invoke-virtual {v4, v3}, Lcom/android/phone/HACSetting;->toggle(Z)V

    goto :goto_0

    .end local v0           #hac:I
    :cond_8
    move v0, v3

    .line 574
    goto :goto_2

    .line 580
    .restart local v0       #hac:I
    :cond_9
    const-string v4, "OFF"

    goto :goto_3

    .line 588
    .end local v0           #hac:I
    :cond_a
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v4, :cond_b

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 593
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 598
    :cond_b
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mClearMwi:Lcom/htc/preference/HtcPreference;

    if-ne p2, v4, :cond_d

    .line 599
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->clearVoiceMessageWaiting()V

    .line 600
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mClearMwi:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_c
    move v2, v3

    .line 613
    goto/16 :goto_0

    .line 606
    :cond_d
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v4, p2}, Lcom/android/phone/HtcWorldPhoneOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    if-ne v4, v2, :cond_c

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1548
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1549
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1550
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 2098
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 2099
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 2102
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isMSISDNalphaTagEditabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2103
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v12, :cond_1

    .line 2104
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const v13, 0x7f0e01e8

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 2105
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const v13, 0x7f0e01e9

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 2106
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v12, v13, :cond_5

    .line 2107
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 2108
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2110
    :cond_0
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 2111
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2121
    :cond_1
    :goto_0
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v12, :cond_2

    .line 2122
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCellBroadcastSetting()V

    .line 2123
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->setOnCbSyncCompletedListener(Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;)V

    .line 2128
    :cond_2
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v13, :cond_3

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2129
    :cond_3
    const-string v12, "sip_settings_category_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    .line 2130
    .local v10, sipSettings:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    .line 2131
    .local v8, screen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v8}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 2132
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_e

    .line 2133
    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 2134
    .local v7, pref:Lcom/htc/preference/HtcPreference;
    if-eq v7, v10, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 2132
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2114
    .end local v3           #count:I
    .end local v6           #i:I
    .end local v7           #pref:Lcom/htc/preference/HtcPreference;
    .end local v8           #screen:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v10           #sipSettings:Lcom/htc/preference/HtcPreference;
    :cond_5
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhonenumberSettings:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 2140
    :cond_6
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    if-eqz v12, :cond_7

    .line 2141
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dtmf_tone_type"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2144
    .local v4, dtmf:I
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v12, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 2147
    .end local v4           #dtmf:I
    :cond_7
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v12, :cond_8

    .line 2148
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "call_auto_retry"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2150
    .local v1, autoretry:I
    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_f

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2153
    .end local v1           #autoretry:I
    :cond_8
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v12, :cond_9

    .line 2154
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "hearing_aid"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2156
    .local v5, hac:I
    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_10

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2160
    .end local v5           #hac:I
    :cond_9
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v12, :cond_a

    .line 2161
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preferred_tty_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 2165
    .local v11, ttyMode:I
    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonUmtsTTY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_11

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2170
    .end local v11           #ttyMode:I
    :cond_a
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mClearMwi:Lcom/htc/preference/HtcPreference;

    if-eqz v12, :cond_b

    .line 2171
    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mClearMwi:Lcom/htc/preference/HtcPreference;

    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v12

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 2181
    :cond_b
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v14, 0x101

    invoke-virtual {v12, v13, v14}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2188
    sget-boolean v12, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v12, :cond_c

    .line 2189
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v12}, Lcom/android/phone/HtcWorldPhoneOptions;->resume()V

    .line 2192
    :cond_c
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    if-eqz v12, :cond_d

    .line 2193
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-virtual {v12}, Lcom/android/phone/HtcCdmaCallOptions;->resume()V

    .line 2196
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2197
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getImsRegistered()Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v9, 0x1

    .line 2198
    .local v9, show:Z
    :goto_6
    const-string v12, "button_cf_expand_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 2199
    .local v2, cfSettings:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v12, "button_more_expand_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 2200
    .local v0, addiSettings:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v2, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 2201
    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 2204
    .end local v0           #addiSettings:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v2           #cfSettings:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v9           #show:Z
    :cond_e
    return-void

    .line 2150
    .restart local v1       #autoretry:I
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 2156
    .end local v1           #autoretry:I
    .restart local v5       #hac:I
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 2165
    .end local v5           #hac:I
    .restart local v11       #ttyMode:I
    :cond_11
    const/4 v12, 0x0

    goto :goto_4

    .line 2171
    .end local v11           #ttyMode:I
    :cond_12
    const/4 v12, 0x0

    goto :goto_5

    .line 2197
    :cond_13
    const/4 v9, 0x0

    goto :goto_6
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 829
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 830
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 831
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 833
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1296
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 747
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 749
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 756
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public updateCellBroadcastSetting()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2718
    const-string v5, "pref_key_cb_setting"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 2720
    .local v2, settings:Lcom/htc/preference/HtcPreferenceScreen;
    if-nez v2, :cond_1

    .line 2748
    :cond_0
    :goto_0
    return-void

    .line 2724
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 2725
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 2729
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 2733
    .local v0, airplaneMode:Z
    :goto_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    .line 2735
    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isCbSyncCompleted()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 2737
    .local v1, enable:Z
    :goto_2
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2738
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 2741
    :goto_3
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChListCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 2742
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #airplaneMode:Z
    .end local v1           #enable:Z
    :cond_3
    move v0, v4

    .line 2729
    goto :goto_1

    .restart local v0       #airplaneMode:Z
    :cond_4
    move v1, v4

    .line 2735
    goto :goto_2

    .line 2740
    .restart local v1       #enable:Z
    :cond_5
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_3

    .line 2745
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
