.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;
    }
.end annotation


# static fields
.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final CALLBACK_NUMBER_SETTING_CATEGORY:Ljava/lang/String; = "pref_callback_number_setting_category_key"

.field public static final CMAS_AMBER_ALERT_CHECKBOX:Ljava/lang/String; = "pref_cmas_alerts_amber_alert_key"

.field public static final CMAS_EXTREME_ALERT_CHECKBOX:Ljava/lang/String; = "pref_cmas_alerts_extreme_alert_key"

.field public static final CMAS_OPTIONAL_CHECKEDBOX_COUNT:I = 0x4

.field public static final CMAS_PRESIDENTIAL_ALERT_CHECKBOX:Ljava/lang/String; = "pref_cmas_alerts_presidential_alert_key"

.field public static final CMAS_SETTING_CATEGORY:Ljava/lang/String; = "pref_cmas_setting_category_key"

.field public static final CMAS_SETTING_ROOT_SCREEN:Ljava/lang/String; = "pref_cmas_setting_preferenceScreen_key"

.field public static final CMAS_SEVERE_ALERT_CHECKBOX:Ljava/lang/String; = "pref_cmas_alerts_severe_alert_key"

.field public static final CMAS_TEST_ALERT_CHECKBOX:Ljava/lang/String; = "pref_cmas_alerts_test_alert_key"

.field public static final COMPRESS_IMAGE_MODE:Ljava/lang/String; = "pref_key_mms_compress_images"

.field public static final CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field private static final CUSTOMIZATION_RETRIEVAL_METHOD:Ljava/lang/String; = "setting_method"

.field private static final CUSTOMIZATION_RETRIEVAL_METHOD_NO:Ljava/lang/String; = "operator_define_no"

.field public static final CUSTOMIZATION_RETRIEVAL_METHOD_YES:Ljava/lang/String; = "operator_define_yes"

.field private static final CUSTOMIZATION_RETRIEVAL_SETTING:Ljava/lang/String; = "mms_retrieval_during_roaming"

.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Message"

.field public static final ConversationSortBy:Ljava/lang/String; = "pref_SortBy"

.field public static final EARTHQUAKE_ALERT_CHECKBOX:Ljava/lang/String; = "pref_earthquake_alert_key"

.field public static final EDIT_SMS_CENTER:Ljava/lang/String; = "pref_key_sms_center"

.field private static final EVENT_LOAD_SMSC_DONE:I = 0x2

.field private static final EVENT_LOAD_SMSC_REQUEST:I = 0x1

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x4

.field private static final EVENT_UPDATE_SMSC_REQUEST:I = 0x3

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field public static final EXTERNAL_STORAGE_INDEX:I = 0x1

.field private static final LOCAL_LOGV:Z = true

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MESSAGE_CB_CHANNEL:Ljava/lang/String; = "pref_cellbroadcast_channel_key"

.field public static final MESSAGE_CB_CHANNELNAME:Ljava/lang/String; = "pref_cellbroadcast_channelname_key"

.field public static final MESSAGE_FORWARDING_CATEGORY:Ljava/lang/String; = "pref_key_msg_forwarding"

.field public static final MESSAGE_FORWARD_EMAIL:Ljava/lang/String; = "pref_key_msg_forwarding_email"

.field public static final MESSAGE_PREVIEW:Ljava/lang/String; = "pref_key_msg_preview"

.field public static final MESSAGE_PREVIEW_CATEGORY:Ljava/lang/String; = "pref_key_msg_preview_settings"

.field public static final MMS_ATTACHMENT_STORAGE:Ljava/lang/String; = "pref_key_attachment_storage_setting"

.field public static final MMS_CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_mms_callback"

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final MMS_DISPLAY_MODE:Ljava/lang/String; = "pref_key_mms_displaymode"

.field public static final MMS_MESSAGE_PREVIEW_CHECKBOX:Ljava/lang/String; = "pref_key_mms_message_preview"

.field public static final MMS_PLAY_MODE:Ljava/lang/String; = "pref_key_play_mode"

.field private static final MMS_PREFERENCE_CATEGORY:Ljava/lang/String; = "pref_key_mms_preference_category"

.field public static final MMS_RESTRICTED_MODE:Ljava/lang/String; = "pref_key_mms_restricted_mode"

.field public static final MMS_SIZE_LIMIIT:Ljava/lang/String; = "pref_key_mms_max_size"

.field public static final NGM_GROUP_CONVERSATION:Ljava/lang/String; = "pref_key_ngm_group_conversation"

.field public static final NGM_PREF:Ljava/lang/String; = "com.android.mms.ngm_pref"

.field public static final NGM_PREF_NEW_COMPOSE_SHOWN:Ljava/lang/String; = "ngm_pref_new_compose_shown"

.field public static final NGM_PREF_NEW_NGM_LOCATION:Ljava/lang/String; = "ngm_pref_new_location"

.field public static final NGM_PREF_SETTING_SHOWN:Ljava/lang/String; = "ngm_pref_setting_shown"

.field public static final PHONE_STORAGE_INDEX:I = 0x0

.field private static final PREF_VERSION:Ljava/lang/String; = "Version"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final RECEIVED_NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_received_notification_settings_category"

.field public static final RECEIVED_NOTIFICATION_CHARM:Ljava/lang/String; = "pref_key_charm_notifications"

.field public static final RECEIVED_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_received_notifications"

.field public static final RECEIVED_NOTIFICATION_PREVIEW:Ljava/lang/String; = "pref_key_preview_received_notifications"

.field public static final RECEIVED_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_received_ringtone"

.field public static final RECEIVED_NOTIFICATION_SOUND:Ljava/lang/String; = "pref_key_play_received_notifications"

.field public static final RECEIVED_NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate_received_notifications"

.field public static final RESUBMISSION_MODE:Ljava/lang/String; = "pref_key_mms_resubmission_mode"

.field public static RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = null

.field private static final SECURE_PREFERENCE_CATEGORY:Ljava/lang/String; = "pref_key_settings_preference_category"

.field public static final SENT_DISPLAY_MESSAGE:Ljava/lang/String; = "pref_display_message"

.field public static final SENT_DISPLAY_MESSAGE_SETTING_FAIL:Ljava/lang/String; = "failure"

.field public static final SENT_DISPLAY_MESSAGE_SETTING_NONE:Ljava/lang/String; = "none"

.field public static final SENT_DISPLAY_MESSAGE_SETTING_SUC:Ljava/lang/String; = "success"

.field public static final SENT_DISPLAY_MESSAGE_SETTING_SUC_AND_FAIL:Ljava/lang/String; = "success_and_failure"

.field public static final SENT_FAILURE_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_sent_failure_notifications"

.field private static final SENT_NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_sent_notification_settings_category"

.field public static final SENT_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_sent_notifications"

.field public static final SENT_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_sent_ringtone"

.field public static final SENT_NOTIFICATION_SOUND:Ljava/lang/String; = "pref_key_play_sent_notifications"

.field public static final SENT_NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate_sent_notifications"

.field public static final SET_CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_set_callback"

.field public static final SHOW_CALL_HISTORY_SETTING:Ljava/lang/String; = "pref_key_call_history"

.field public static final SHOW_EMAIL_ADDRESS_SETTING:Ljava/lang/String; = "pref_key_email_address"

.field public static final SHOW_MMS_CONNECTION:Ljava/lang/String; = "pref_key_htc_cdma_mms_connections_settings_setting"

.field public static final SHOW_SENT_HISTORY_SETTING:Ljava/lang/String; = "pref_key_sent_history"

.field public static final SMS_CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_sms_callback"

.field public static final SMS_CHARACTERS:Ljava/lang/String; = "pref_key_sms_characters"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_LAYER2_TOP_CATEGORY:Ljava/lang/String; = "sms_setting_preferenceScreen"

.field public static final SMS_MANAGE_SIM_CARD:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final SMS_MESSAGE_PREVIEW_CHECKBOX:Ljava/lang/String; = "pref_key_sms_message_preview"

.field public static final SMS_PREFERENCE_CATEGORY:Ljava/lang/String; = "pref_key_sms_preference_category"

.field public static final SMS_PRIORITY:Ljava/lang/String; = "pref_key_sms_priority"

.field private static final TAG:Ljava/lang/String; = "MessagingPreferenceActivity"

.field public static final VALUE_CREATION_MODE_FREE:I = 0x2

.field public static final VALUE_CREATION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_CREATION_MODE_WARNING:I = 0x1

.field public static final VALUE_RESUBMISSION_MODE_FREE:I = 0x2

.field public static final VALUE_RESUBMISSION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_RESUBMISSION_MODE_WARNING:I = 0x1

.field public static final VVM_ATTACHMENT_STORAGE:Ljava/lang/String; = "pref_key_vvm_archive_storage"

.field public static final VVM_LAYER2_TOP_CATEGORY:Ljava/lang/String; = "vvm_preferenceScreen"

.field public static final VVM_PREFERENCE_NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_key_vvm_notification_category"

.field public static final VVM_PREFERENCE_SETTINGS_CATEGORY:Ljava/lang/String; = "pref_key_vvm_settings_category"

.field public static final VVM_RECEIVED_NOTIFICATION_CHARM:Ljava/lang/String; = "pref_key_vvm_charm_notifications"

.field public static final VVM_RECEIVED_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_vvm_notification_ringtone"

.field public static final VVM_RECEIVED_NOTIFICATION_SOUND:Ljava/lang/String; = "pref_key_vvm_play_notification"

.field public static final VVM_RECEIVED_NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vvm_vibrate_notification"

.field private static final VersionNum:I = 0x1

.field public static final defaultRingTone:Ljava/lang/String; = "content://settings/system/msg_notification"

.field private static mNeedRestoreSendingOption:Z

.field private static sThis:Lcom/android/mms/ui/MessagingPreferenceActivity;


# instance fields
.field private mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbackNumber:Ljava/lang/String;

.field private mContentChanged:Z

.field private mDefaultSharedPref:Landroid/content/SharedPreferences;

.field private mExtremePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;

.field private mManageSimPref:Lcom/htc/preference/HtcPreference;

.field private mMmsCallback:Z

.field mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mMmsDeliveryReport:Z

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Lcom/htc/preference/HtcPreference;

.field private mMmsPriority:Ljava/lang/String;

.field private mMmsReadReport:Z

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPresidentailPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mServiceHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

.field mSetCallbackPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mSeverePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSmsCallback:Z

.field mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSmsDeliveryReport:Z

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Lcom/htc/preference/HtcPreference;

.field private mSmsPriority:Ljava/lang/String;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsc:Ljava/lang/String;

.field private mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

.field private mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mbCustomizeInitialed:Z

.field private mbHasCustomize:Z

.field private mbNotificationsSettings:Z

.field private mbSendingOptions:Z

.field private mbVvmSettings:Z

.field private mms_sp:Landroid/content/SharedPreferences;

.field private preMsgPreview:Lcom/htc/preference/HtcPreference;

.field private preSize:Lcom/htc/preference/HtcPreference;

.field private prefDisplay:Lcom/htc/preference/HtcPreference;

.field private prefPlayMode:Lcom/htc/preference/HtcPreference;

.field private prefRetrieval:Lcom/htc/preference/HtcPreference;

.field private prefSet:Lcom/htc/preference/HtcPreference;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "pref_key_mms_retrieval_during_roaming"

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    .line 346
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sThis:Lcom/android/mms/ui/MessagingPreferenceActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 293
    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mContentChanged:Z

    .line 297
    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 301
    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    .line 302
    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    .line 304
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbHasCustomize:Z

    .line 305
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbSendingOptions:Z

    .line 307
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbVvmSettings:Z

    .line 308
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbNotificationsSettings:Z

    .line 2248
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$18;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2972
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$20;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 3266
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$21;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 3274
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$22;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCSTableIndexFromServiceID(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->sendCmasCommands()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/SmsCenterPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefSet:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefPlayMode:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefDisplay:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setGreekInputType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 3196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3197
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3199
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3202
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 3203
    const/4 v0, 0x0

    .line 3205
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 3204
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public static convertContentClass(Ljava/lang/String;)I
    .locals 1
    .parameter "contentValue"

    .prologue
    .line 2752
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 2900
    const-string v0, "creation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2901
    const/4 v0, 0x0

    .line 2905
    :goto_0
    return v0

    .line 2902
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2903
    const/4 v0, 0x1

    goto :goto_0

    .line 2904
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2905
    const/4 v0, 0x2

    goto :goto_0

    .line 2907
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertExpiryTime(Ljava/lang/String;)I
    .locals 1
    .parameter "expiryTimeName"

    .prologue
    .line 2764
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 13
    .parameter "pContext"
    .parameter "maxSize"

    .prologue
    .line 2777
    invoke-static {}, Lcom/android/mms/MmsApp;->getKiloSize()I

    move-result v3

    .line 2781
    .local v3, ksize:I
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd2

    if-eq v10, v11, :cond_0

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x50

    if-ne v10, v11, :cond_1

    .line 2785
    :cond_0
    mul-int/lit16 v10, v3, 0x400

    .line 2868
    :goto_0
    return v10

    .line 2788
    :cond_1
    const/4 v5, 0x0

    .line 2789
    .local v5, splocal:Landroid/content/SharedPreferences;
    const-string v10, "com.android.mms.customizationBySIM"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2790
    const/4 v0, 0x0

    .line 2791
    .local v0, bcust:Z
    if-eqz v5, :cond_2

    .line 2792
    const-string v10, "Do_Customize"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2793
    :cond_2
    if-nez v0, :cond_13

    .line 2794
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x98

    if-eq v10, v11, :cond_3

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa9

    if-eq v10, v11, :cond_3

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x59

    if-eq v10, v11, :cond_3

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    .line 2798
    :cond_3
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2799
    mul-int/lit8 v10, v3, 0x64

    goto :goto_0

    .line 2800
    :cond_4
    const-string v10, "2"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2801
    mul-int/lit16 v10, v3, 0x12c

    goto :goto_0

    .line 2802
    :cond_5
    const-string v10, "3"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2803
    mul-int/lit16 v10, v3, 0x258

    goto :goto_0

    .line 2805
    :cond_6
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown MMS Size Limit."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2807
    :cond_7
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x94

    if-ne v10, v11, :cond_b

    .line 2808
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2809
    mul-int/lit8 v10, v3, 0x64

    goto :goto_0

    .line 2810
    :cond_8
    const-string v10, "2"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2811
    mul-int/lit16 v10, v3, 0xc8

    goto :goto_0

    .line 2812
    :cond_9
    const-string v10, "3"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2813
    mul-int/lit16 v10, v3, 0x3e8

    goto :goto_0

    .line 2815
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown MMS Size Limit."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2818
    :cond_b
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_f

    .line 2820
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2821
    mul-int/lit16 v10, v3, 0xc8

    goto/16 :goto_0

    .line 2822
    :cond_c
    const-string v10, "2"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2823
    mul-int/lit16 v10, v3, 0x1f4

    goto/16 :goto_0

    .line 2824
    :cond_d
    const-string v10, "3"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2825
    mul-int/lit16 v10, v3, 0x4b0

    goto/16 :goto_0

    .line 2827
    :cond_e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown MMS Size Limit."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2831
    :cond_f
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2832
    mul-int/lit8 v10, v3, 0x64

    goto/16 :goto_0

    .line 2833
    :cond_10
    const-string v10, "2"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2834
    mul-int/lit16 v10, v3, 0xc8

    goto/16 :goto_0

    .line 2835
    :cond_11
    const-string v10, "3"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2836
    mul-int/lit16 v10, v3, 0x12c

    goto/16 :goto_0

    .line 2838
    :cond_12
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown MMS Size Limit."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2842
    :cond_13
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/String;

    .line 2843
    .local v6, tStr:[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "MMS_Msg_Size1"

    const-string v12, "100k"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 2844
    const/4 v10, 0x1

    const-string v11, "MMS_Msg_Size2"

    const-string v12, "200k"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 2845
    const/4 v10, 0x2

    const-string v11, "MMS_Msg_Size3"

    const-string v12, "300k"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 2846
    const/4 v10, 0x3

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    .line 2847
    .local v9, tsize:[I
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    const/4 v10, 0x3

    if-ge v1, v10, :cond_16

    .line 2848
    aget-object v10, v6, v1

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v1

    .line 2849
    aget-object v10, v6, v1

    const-string v11, "K"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2850
    .local v2, kidx:I
    aget-object v10, v6, v1

    const-string v11, "M"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2852
    .local v4, midx:I
    const/4 v7, 0x0

    .line 2853
    .local v7, tmpflo:F
    if-lez v2, :cond_15

    .line 2854
    aget-object v10, v6, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2855
    .local v8, tmpstr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 2856
    float-to-int v10, v7

    aput v10, v9, v1

    .line 2847
    .end local v8           #tmpstr:Ljava/lang/String;
    :cond_14
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2857
    :cond_15
    if-lez v4, :cond_14

    .line 2858
    aget-object v10, v6, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2859
    .restart local v8       #tmpstr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    int-to-float v11, v3

    mul-float v7, v10, v11

    .line 2860
    float-to-int v10, v7

    aput v10, v9, v1

    goto :goto_2

    .line 2863
    .end local v2           #kidx:I
    .end local v4           #midx:I
    .end local v7           #tmpflo:F
    .end local v8           #tmpstr:Ljava/lang/String;
    :cond_16
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2864
    const/4 v10, 0x0

    aget v10, v9, v10

    mul-int/2addr v10, v3

    goto/16 :goto_0

    .line 2865
    :cond_17
    const-string v10, "2"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2866
    const/4 v10, 0x1

    aget v10, v9, v10

    mul-int/2addr v10, v3

    goto/16 :goto_0

    .line 2867
    :cond_18
    const-string v10, "3"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 2868
    const/4 v10, 0x2

    aget v10, v9, v10

    mul-int/2addr v10, v3

    goto/16 :goto_0

    .line 2870
    :cond_19
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown MMS Size Limit."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2846
    nop

    :array_0
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public static convertPriorityId(Ljava/lang/String;)I
    .locals 2
    .parameter "priorityValue"

    .prologue
    .line 2882
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2883
    const/16 v0, 0x80

    .line 2887
    :goto_0
    return v0

    .line 2884
    :cond_0
    const-string v0, "medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2885
    const/16 v0, 0x81

    goto :goto_0

    .line 2886
    :cond_1
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2887
    const/16 v0, 0x82

    goto :goto_0

    .line 2889
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS priority."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertResubmissionMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 2918
    const-string v0, "creation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2919
    const/4 v0, 0x0

    .line 2923
    :goto_0
    return v0

    .line 2920
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2921
    const/4 v0, 0x1

    goto :goto_0

    .line 2922
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2923
    const/4 v0, 0x2

    goto :goto_0

    .line 2925
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS resubmission mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCSTableIndexFromServiceID(I)I
    .locals 2
    .parameter "serviceId"

    .prologue
    .line 1326
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v1, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v1, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-ge v0, v1, :cond_1

    .line 1327
    sget-object v1, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v1, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 1330
    .end local v0           #index:I
    :goto_1
    return v0

    .line 1326
    .restart local v0       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 1337
    if-nez p0, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return v0

    .line 1338
    :cond_1
    const-string v1, "pref_cmas_alerts_presidential_alert_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1340
    const/16 v0, 0x1000

    goto :goto_0

    .line 1341
    :cond_2
    const-string v1, "pref_cmas_alerts_extreme_alert_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    const/16 v0, 0x1001

    goto :goto_0

    .line 1344
    :cond_3
    const-string v1, "pref_cmas_alerts_severe_alert_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1346
    const/16 v0, 0x1002

    goto :goto_0

    .line 1347
    :cond_4
    const-string v1, "pref_cmas_alerts_amber_alert_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1349
    const/16 v0, 0x1003

    goto :goto_0

    .line 1350
    :cond_5
    const-string v1, "pref_cmas_alerts_test_alert_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1352
    const/16 v0, 0x1004

    goto :goto_0
.end method

.method private getGsmCmasChannelList()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    .line 1359
    new-array v3, v7, [Z

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExtremePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    aput-boolean v5, v3, v10

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSeverePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    aput-boolean v5, v3, v6

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    aput-boolean v5, v3, v8

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    aput-boolean v5, v3, v9

    .line 1365
    .local v3, ischecked:[Z
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/CmasMessage;->getGsmCmasChannelListStr(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v9}, Lcom/android/internal/telephony/CmasMessage;->getGsmCmasChannelListStr(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v7}, Lcom/android/internal/telephony/CmasMessage;->getGsmCmasChannelListStr(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/internal/telephony/CmasMessage;->getGsmCmasChannelListStr(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 1372
    .local v1, channels:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {v6}, Lcom/android/internal/telephony/CmasMessage;->getGsmCmasChannelListStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 1378
    aget-boolean v5, v3, v2

    if-eqz v5, :cond_0

    .line 1379
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    const-string v0, ""

    .line 1383
    .local v0, chList:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1384
    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/ui/MessagingPreferenceActivity;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sThis:Lcom/android/mms/ui/MessagingPreferenceActivity;

    return-object v0
.end method

.method public static getReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 2417
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2419
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_received_ringtone"

    const-string v5, "content://settings/system/msg_notification"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2423
    .local v2, reminderRingtone:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2424
    const-string v4, "content://settings/system/msg_notification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "msg_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2429
    .local v0, defaultUri:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2432
    const-string v0, "content://settings/system/notification_sound"

    .line 2434
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2440
    .end local v0           #defaultUri:Ljava/lang/String;
    .local v3, reminderRingtoneUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2442
    .end local v3           #reminderRingtoneUri:Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 2437
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #reminderRingtoneUri:Landroid/net/Uri;
    goto :goto_0

    .line 2442
    .end local v3           #reminderRingtoneUri:Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getRetrievalSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://customization_settings/SettingTable/application_Message"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3211
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 3213
    :try_start_0
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3214
    .local v9, valueIndex:I
    const/4 v0, -0x1

    if-eq v0, v9, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3215
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 3216
    .local v8, data:[B
    if-eqz v8, :cond_1

    .line 3217
    invoke-static {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 3218
    .local v6, bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 3219
    const-string v0, "mms_retrieval_during_roaming"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting_method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 3229
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 3232
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #data:[B
    .end local v9           #valueIndex:I
    :cond_0
    :goto_0
    return-object v2

    .line 3229
    .restart local v9       #valueIndex:I
    :cond_1
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 3223
    .end local v9           #valueIndex:I
    :catch_0
    move-exception v0

    .line 3229
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 3225
    :catch_1
    move-exception v0

    .line 3229
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "pref_key"

    .prologue
    .line 2389
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2391
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "content://settings/system/msg_notification"

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2394
    .local v2, reminderRingtone:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2395
    const-string v4, "content://settings/system/msg_notification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "msg_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2400
    .local v0, defaultUri:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2401
    const-string v0, "content://settings/system/notification_sound"

    .line 2402
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2406
    .end local v0           #defaultUri:Ljava/lang/String;
    .local v3, reminderRingtoneUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2408
    .end local v3           #reminderRingtoneUri:Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 2404
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #reminderRingtoneUri:Landroid/net/Uri;
    goto :goto_0

    .line 2408
    .end local v3           #reminderRingtoneUri:Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getSentRingtone(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 2448
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2450
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_sent_ringtone"

    const-string v5, "content://settings/system/msg_notification"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2454
    .local v2, reminderRingtone:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2455
    const-string v4, "content://settings/system/msg_notification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "msg_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2459
    .local v0, defaultUri:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2460
    const-string v0, "content://settings/system/notification_sound"

    .line 2461
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2465
    .end local v0           #defaultUri:Ljava/lang/String;
    .local v3, reminderRingtoneUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2467
    .end local v3           #reminderRingtoneUri:Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 2463
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #reminderRingtoneUri:Landroid/net/Uri;
    goto :goto_0

    .line 2467
    .end local v3           #reminderRingtoneUri:Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getVvmReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 2412
    const-string v0, "pref_key_vvm_notification_ringtone"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 2945
    const-string v3, "pref_key_sms_center"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SmsCenterPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    .line 2946
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    invoke-virtual {v3, p0}, Lcom/android/mms/ui/SmsCenterPreference;->setOnSmscEnteredListner(Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;)V

    .line 2948
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SMSC Pref"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2949
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2951
    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/android/mms/ui/MessagingPreferenceActivity$1;)V

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;

    .line 2953
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLooper:Landroid/os/Looper;

    .line 2954
    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;

    .line 2957
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2958
    .local v2, tm:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SmsCenterPreference;->setEnabled(Z)V

    .line 2959
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 2960
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2961
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2964
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    if-eqz v3, :cond_1

    .line 2965
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "SMS_SMSC_Editable"

    invoke-static {}, Lcom/android/mms/MmsApp;->isSmscEditable()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SmsCenterPreference;->setSelectable(Z)V

    .line 2969
    :cond_1
    return-void
.end method

.method private initCallbackNumberPref()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3009
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 3010
    .local v2, mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "pref_callback_number_setting_category_key"

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 3012
    .local v1, mCallbackNumberCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "pref_key_sms_callback"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 3013
    const-string v5, "pref_key_mms_callback"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 3014
    const-string v5, "pref_key_set_callback"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    .line 3016
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    if-nez v5, :cond_1

    .line 3052
    :cond_0
    :goto_0
    return-void

    .line 3019
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3020
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 3021
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3022
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 3024
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3026
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 3031
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 3033
    .local v3, mdn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 3034
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3035
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3044
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 3045
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_7

    .line 3046
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3047
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 3051
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 3028
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v3           #mdn:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 3037
    .restart local v3       #mdn:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_6

    .line 3038
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3039
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initCmasPreference()V
    .locals 10

    .prologue
    const v9, 0x7f090310

    const/4 v7, 0x1

    .line 1240
    const-string v6, "MessagingPreferenceActivity"

    const-string v8, "init CMAS Preference"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const-string v6, "pref_cmas_setting_preferenceScreen_key"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1244
    .local v5, xmlRoot:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v5, :cond_0

    .line 1245
    invoke-static {v9}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 1249
    :cond_0
    const-string v6, "pref_cmas_alerts_presidential_alert_key"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPresidentailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1250
    const-string v6, "pref_cmas_alerts_extreme_alert_key"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExtremePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1251
    const-string v6, "pref_cmas_alerts_severe_alert_key"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSeverePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1252
    const-string v6, "pref_cmas_alerts_amber_alert_key"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1253
    const-string v6, "pref_cmas_alerts_test_alert_key"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 1255
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f090316

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 1257
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f09031c

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1262
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f090315

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 1264
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPresidentailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f090318

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1266
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExtremePref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f090319

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1268
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSeverePref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f09031a

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1270
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f09031b

    invoke-static {v8}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1274
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 1275
    .local v3, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v6, "pref_cmas_setting_category_key"

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1278
    .local v1, cmasCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v9}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 1281
    invoke-static {}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    .line 1282
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 1284
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    sget-object v6, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v6, v6, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-ge v2, v6, :cond_8

    .line 1285
    sget-object v6, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v6, v6, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    aget v4, v6, v2

    .line 1286
    .local v4, service_id:I
    sget-object v6, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v6, v6, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    aget v6, v6, v2

    if-ne v6, v7, :cond_2

    move v0, v7

    .line 1287
    .local v0, checked:Z
    :goto_1
    const-string v6, "pref_cmas_alerts_presidential_alert_key"

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 1288
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPresidentailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasSetting(Lcom/htc/preference/HtcPreferenceCategory;Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 1284
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1286
    .end local v0           #checked:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1289
    .restart local v0       #checked:Z
    :cond_3
    const-string v6, "pref_cmas_alerts_extreme_alert_key"

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_4

    .line 1290
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExtremePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasSetting(Lcom/htc/preference/HtcPreferenceCategory;Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    goto :goto_2

    .line 1291
    :cond_4
    const-string v6, "pref_cmas_alerts_severe_alert_key"

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_5

    .line 1292
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSeverePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasSetting(Lcom/htc/preference/HtcPreferenceCategory;Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    goto :goto_2

    .line 1293
    :cond_5
    const-string v6, "pref_cmas_alerts_amber_alert_key"

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_6

    .line 1294
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasSetting(Lcom/htc/preference/HtcPreferenceCategory;Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    goto :goto_2

    .line 1295
    :cond_6
    const-string v6, "pref_cmas_alerts_test_alert_key"

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 1296
    invoke-static {}, Lcom/android/mms/MmsApp;->showTestCmasSettingInEngMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1297
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasSetting(Lcom/htc/preference/HtcPreferenceCategory;Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    goto :goto_2

    .line 1302
    .end local v0           #checked:Z
    .end local v2           #index:I
    .end local v4           #service_id:I
    :cond_7
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPresidentailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 1303
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExtremePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 1304
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSeverePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 1305
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAmberPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 1306
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 1308
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->showTestCmasSettingInEngMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1309
    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_9

    .line 1310
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mTestPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1313
    :cond_9
    return-void
.end method

.method private initMsgPreviewPreference()V
    .locals 8

    .prologue
    .line 2190
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    const/4 v3, 0x0

    .line 2198
    .local v3, mSize:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2199
    .local v2, mIndex:I
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v6, "MSG_Preview_Line"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2201
    .local v0, Line:I
    const/4 v5, 0x1

    if-ge v0, v5, :cond_2

    .line 2203
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2204
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_msg_preview"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2205
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2210
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    .line 2211
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2213
    .local v1, Str:[Ljava/lang/String;
    const-string v5, "pref_key_msg_preview"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    .line 2214
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    aget-object v6, v1, v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2215
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    new-instance v6, Lcom/android/mms/ui/MessagingPreferenceActivity$17;

    invoke-direct {v6, p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$17;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 2208
    .end local v1           #Str:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_1
.end method

.method private initPreference()V
    .locals 41

    .prologue
    .line 1508
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initMsgPreviewPreference()V

    .line 1513
    sget-short v38, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v39, 0x78

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_0

    .line 1514
    const-string v38, "pref_key_mms_auto_retrieval"

    sput-object v38, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    .line 1519
    :cond_0
    sget-object v38, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefRetrieval:Lcom/htc/preference/HtcPreference;

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getRetrievalSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 1521
    .local v30, retrievalMethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefRetrieval:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2

    if-eqz v30, :cond_2

    const-string v38, "operator_define_yes"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1

    const-string v38, "operator_define_no"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 1522
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v38

    const-string v39, "pref_key_mms_preference_category"

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefRetrieval:Lcom/htc/preference/HtcPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1529
    :cond_2
    const-string v38, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefSet:Lcom/htc/preference/HtcPreference;

    .line 1531
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 1532
    .local v29, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_4

    .line 1534
    const-string v38, "pref_key_mms_priority"

    const-string v39, "medium"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1535
    .local v15, mPrioroty:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1536
    .local v37, stringId:Ljava/lang/String;
    const-string v38, "low"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_21

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0900c4

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1543
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefSet:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    new-instance v39, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1565
    .end local v15           #mPrioroty:Ljava/lang/String;
    .end local v37           #stringId:Ljava/lang/String;
    :cond_4
    const-string v38, "pref_key_play_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefPlayMode:Lcom/htc/preference/HtcPreference;

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefPlayMode:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_6

    .line 1567
    const-string v38, "pref_key_play_mode"

    const-string v39, "manual"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1568
    .local v13, mPlayMode:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1569
    .restart local v37       #stringId:Ljava/lang/String;
    const-string v38, "auto"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f09034f

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1573
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefPlayMode:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefPlayMode:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    new-instance v39, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1594
    .end local v13           #mPlayMode:Ljava/lang/String;
    .end local v37           #stringId:Ljava/lang/String;
    :cond_6
    const-string v38, "pref_key_mms_displaymode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefDisplay:Lcom/htc/preference/HtcPreference;

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefDisplay:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    .line 1596
    const-string v38, "pref_key_mms_displaymode"

    const-string v39, "Expand"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1597
    .local v11, mDisplayMode:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1598
    .restart local v37       #stringId:Ljava/lang/String;
    const-string v38, "Collapse"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_24

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f09034c

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1603
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefDisplay:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->prefDisplay:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    new-instance v39, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1622
    .end local v11           #mDisplayMode:Ljava/lang/String;
    .end local v37           #stringId:Ljava/lang/String;
    :cond_8
    const-string v38, "pref_key_sms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v26

    .line 1623
    .local v26, prefSms:Lcom/htc/preference/HtcPreference;
    if-eqz v26, :cond_a

    .line 1624
    const-string v4, "normal"

    .line 1625
    .local v4, P_NORMAL:Ljava/lang/String;
    const-string v3, "high"

    .line 1626
    .local v3, P_HIGH:Ljava/lang/String;
    const-string v38, "pref_key_sms_priority"

    const-string v39, "normal"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1627
    .local v33, sSmsPriority:Ljava/lang/String;
    const/16 v34, 0x0

    .line 1629
    .local v34, sSummary:Ljava/lang/String;
    const-string v38, "normal"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_25

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0900c3

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1634
    :cond_9
    :goto_3
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1636
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/htc/preference/HtcPreference;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1656
    .end local v3           #P_HIGH:Ljava/lang/String;
    .end local v4           #P_NORMAL:Ljava/lang/String;
    .end local v33           #sSmsPriority:Ljava/lang/String;
    .end local v34           #sSummary:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v38

    if-eqz v38, :cond_b

    .line 1657
    const-string v38, "pref_display_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    .line 1658
    .local v21, preDisplayMessage:Lcom/htc/preference/HtcPreference;
    if-eqz v21, :cond_b

    if-eqz v29, :cond_b

    .line 1659
    const-string v38, "pref_display_message"

    const-string v39, "success_and_failure"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1661
    .local v32, sSetting:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setNTY_DISPLYONSCREEN(Ljava/lang/String;)V

    .line 1663
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/htc/preference/HtcPreference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1724
    .end local v21           #preDisplayMessage:Lcom/htc/preference/HtcPreference;
    .end local v32           #sSetting:Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMMSLimit()[Ljava/lang/String;

    move-result-object v5

    .line 1725
    .local v5, Str:[Ljava/lang/String;
    const-string v38, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_c

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    check-cast v38, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1728
    :cond_c
    const-string v38, "pref_key_mms_max_size"

    const-string v39, "3"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1731
    .local v16, mSize:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1732
    .local v12, mIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    if-eqz v38, :cond_d

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    add-int/lit8 v39, v12, -0x1

    aget-object v39, v5, v39

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;

    move-object/from16 v38, v0

    new-instance v39, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;[Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1773
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSRestrictedMode()Z

    move-result v38

    if-eqz v38, :cond_e

    .line 1774
    const-string v38, "pref_key_mms_restricted_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v22

    .line 1775
    .local v22, preRestrictedMode:Lcom/htc/preference/HtcPreference;
    if-eqz v22, :cond_e

    .line 1776
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1786
    .end local v22           #preRestrictedMode:Lcom/htc/preference/HtcPreference;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbVvmSettings:Z

    move/from16 v38, v0

    if-nez v38, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbNotificationsSettings:Z

    move/from16 v38, v0

    if-nez v38, :cond_f

    .line 1789
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_26

    .line 1791
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v38

    if-eqz v38, :cond_f

    .line 1792
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initSmsPriority()V

    .line 1805
    :cond_f
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v38

    if-eqz v38, :cond_10

    .line 1806
    const-string v38, "pref_key_attachment_storage_setting"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/android/mms/util/MsgPreferenceUtils;->updateAttachmentStorageSetting(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V

    .line 1807
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v38

    if-eqz v38, :cond_10

    .line 1808
    const-string v38, "pref_key_vvm_archive_storage"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/android/mms/util/MsgPreferenceUtils;->updateAttachmentStorageSetting(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V

    .line 1813
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1814
    .local v23, pref:Landroid/content/SharedPreferences;
    if-eqz v23, :cond_11

    .line 1816
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 1818
    .local v24, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v38, "Version"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_11

    .line 1819
    const-string v38, "Version"

    const/16 v39, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1820
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1826
    .end local v24           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbSendingOptions:Z

    move/from16 v38, v0

    if-nez v38, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbVvmSettings:Z

    move/from16 v38, v0

    if-nez v38, :cond_28

    .line 1827
    const-string v38, "pref_key_enable_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual/range {v38 .. v38}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    .line 1828
    .local v8, bsent:Z
    const-string v38, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual/range {v38 .. v38}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    .line 1829
    .local v9, bsentfail:Z
    if-nez v8, :cond_27

    if-nez v9, :cond_27

    const/4 v7, 0x0

    .line 1831
    .local v7, benableNotify:Z
    :goto_5
    const-string v38, "pref_key_play_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1832
    const-string v38, "pref_key_sent_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1833
    const-string v38, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1834
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v38

    if-eqz v38, :cond_12

    const-string v38, "pref_display_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    if-eqz v38, :cond_12

    .line 1835
    const-string v38, "pref_display_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1837
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setNotificationListeners()V

    .line 1839
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v38

    if-eqz v38, :cond_13

    .line 1842
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfEnableCmasSettings()Z

    move-result v38

    if-eqz v38, :cond_13

    .line 1843
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initCmasPreference()V

    .line 1907
    .end local v7           #benableNotify:Z
    .end local v8           #bsent:Z
    .end local v9           #bsentfail:Z
    :cond_13
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsSetting()Z

    move-result v38

    if-eqz v38, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbVvmSettings:Z

    move/from16 v38, v0

    if-nez v38, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbNotificationsSettings:Z

    move/from16 v38, v0

    if-nez v38, :cond_15

    .line 1910
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1913
    .local v31, sLocale:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_14

    if-eqz v31, :cond_34

    const-string v38, "el_"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_34

    const-string v38, "el"

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_34

    .line 1915
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v38

    const-string v39, "pref_key_sms_preference_category"

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v39, "pref_key_greek_encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1950
    .end local v31           #sLocale:Ljava/lang/String;
    :cond_15
    :goto_7
    sget-boolean v38, Lcom/android/mms/MmsApp$Customize;->Emerald:Z

    if-nez v38, :cond_17

    .line 1951
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v38

    const-string v39, "pref_key_sms_preference_category"

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v36

    check-cast v36, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1952
    .local v36, smsperf:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v36, :cond_16

    .line 1953
    const-string v38, "pref_key_sms_message_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1956
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v38

    const-string v39, "pref_key_mms_preference_category"

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v38

    check-cast v19, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1957
    .local v19, mmspref:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v19, :cond_17

    .line 1958
    const-string v38, "pref_key_mms_message_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1963
    .end local v19           #mmspref:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v36           #smsperf:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v38

    if-nez v38, :cond_36

    const-string v38, "pref_key_ngm_group_conversation"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    if-eqz v38, :cond_36

    .line 1964
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v38

    const-string v39, "pref_key_mms_preference_category"

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v38

    check-cast v19, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1965
    .restart local v19       #mmspref:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v19, :cond_18

    .line 1966
    const-string v38, "pref_key_ngm_group_conversation"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1989
    .end local v19           #mmspref:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_18
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    .line 1990
    .local v25, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v25, :cond_19

    .line 1991
    const-string v38, "pref_key_sms_preference_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v35

    check-cast v35, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1992
    .local v35, smsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v35, :cond_19

    invoke-virtual/range {v35 .. v35}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v38

    if-nez v38, :cond_19

    .line 1993
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1998
    .end local v35           #smsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v38

    const-string v39, "pref_received_notification_settings_category"

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    check-cast v38, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v20, v38

    check-cast v20, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1999
    .local v20, notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v20, :cond_1b

    .line 2000
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationPreview()Z

    move-result v38

    if-eqz v38, :cond_37

    .line 2004
    const-string v38, "pref_key_enable_received_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2007
    .local v28, preference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v10

    .line 2008
    .local v10, enabled:Z
    const-string v38, "MessagingPreferenceActivity"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Global Notification Setting:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-virtual/range {v28 .. v28}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_1a

    .line 2010
    const-string v38, "pref_key_preview_received_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2011
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2013
    :cond_1a
    const-string v38, "pref_key_preview_received_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2014
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$12;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$12;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2030
    .end local v10           #enabled:Z
    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_1b
    :goto_9
    const-string v38, "pref_key_vvm_notification_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    .line 2031
    .local v6, VVMVoicemailCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMCharmNotification()Z

    move-result v38

    if-eqz v38, :cond_38

    .line 2033
    if-eqz v6, :cond_1d

    .line 2037
    const-string v38, "pref_key_vvm_play_notification"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2038
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$13;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$13;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2056
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getVVMCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v10

    .line 2057
    .restart local v10       #enabled:Z
    const-string v38, "MessagingPreferenceActivity"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Global VVM charm Notification Setting:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-virtual/range {v28 .. v28}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 2059
    const-string v38, "pref_key_vvm_charm_notifications"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2060
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2062
    :cond_1c
    const-string v38, "pref_key_vvm_charm_notifications"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2063
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$14;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$14;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2088
    .end local v10           #enabled:Z
    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_1d
    :goto_a
    if-eqz v20, :cond_1f

    .line 2089
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCharmNotification()Z

    move-result v38

    if-eqz v38, :cond_3a

    .line 2092
    const-string v38, "pref_key_enable_received_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2094
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v10

    .line 2095
    .restart local v10       #enabled:Z
    const-string v38, "MessagingPreferenceActivity"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Global Charm Notification Setting:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    invoke-virtual/range {v28 .. v28}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 2097
    const-string v38, "pref_key_charm_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2098
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2100
    :cond_1e
    const-string v38, "pref_key_charm_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2101
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$15;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$15;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2118
    .end local v10           #enabled:Z
    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_1f
    :goto_b
    if-eqz v20, :cond_20

    .line 2122
    const-string v38, "pref_key_enable_received_notifications"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v28

    check-cast v28, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2123
    .restart local v28       #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v38, Lcom/android/mms/ui/MessagingPreferenceActivity$16;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$16;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2162
    .end local v28           #preference:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_20
    return-void

    .line 1538
    .end local v5           #Str:[Ljava/lang/String;
    .end local v6           #VVMVoicemailCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v12           #mIndex:I
    .end local v16           #mSize:Ljava/lang/String;
    .end local v20           #notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v23           #pref:Landroid/content/SharedPreferences;
    .end local v25           #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v26           #prefSms:Lcom/htc/preference/HtcPreference;
    .restart local v15       #mPrioroty:Ljava/lang/String;
    .restart local v37       #stringId:Ljava/lang/String;
    :cond_21
    const-string v38, "medium"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_22

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0900c3

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_0

    .line 1540
    :cond_22
    const-string v38, "high"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0900c2

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_0

    .line 1571
    .end local v15           #mPrioroty:Ljava/lang/String;
    .restart local v13       #mPlayMode:Ljava/lang/String;
    :cond_23
    const-string v38, "manual"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f090350

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_1

    .line 1600
    .end local v13           #mPlayMode:Ljava/lang/String;
    .restart local v11       #mDisplayMode:Ljava/lang/String;
    :cond_24
    const-string v38, "Expand"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f09034d

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_2

    .line 1631
    .end local v11           #mDisplayMode:Ljava/lang/String;
    .end local v37           #stringId:Ljava/lang/String;
    .restart local v3       #P_HIGH:Ljava/lang/String;
    .restart local v4       #P_NORMAL:Ljava/lang/String;
    .restart local v26       #prefSms:Lcom/htc/preference/HtcPreference;
    .restart local v33       #sSmsPriority:Ljava/lang/String;
    .restart local v34       #sSummary:Ljava/lang/String;
    :cond_25
    const-string v38, "high"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0900c2

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_3

    .line 1798
    .end local v3           #P_HIGH:Ljava/lang/String;
    .end local v4           #P_NORMAL:Ljava/lang/String;
    .end local v33           #sSmsPriority:Ljava/lang/String;
    .end local v34           #sSummary:Ljava/lang/String;
    .restart local v5       #Str:[Ljava/lang/String;
    .restart local v12       #mIndex:I
    .restart local v16       #mSize:Ljava/lang/String;
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->init()V

    goto/16 :goto_4

    .line 1829
    .restart local v8       #bsent:Z
    .restart local v9       #bsentfail:Z
    .restart local v23       #pref:Landroid/content/SharedPreferences;
    :cond_27
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1854
    .end local v8           #bsent:Z
    .end local v9           #bsentfail:Z
    :cond_28
    const-string v38, "pref_key_sms_preference_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v35

    check-cast v35, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1855
    .restart local v35       #smsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v38, "pref_key_sms_center"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1856
    .local v27, prefence:Lcom/htc/preference/HtcPreference;
    if-eqz v27, :cond_29

    .line 1857
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1858
    :cond_29
    const-string v38, "pref_key_manage_sim_messages"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1859
    if-eqz v27, :cond_2a

    .line 1860
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1862
    :cond_2a
    const-string v38, "pref_key_mms_preference_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1863
    .local v18, mmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    sget-object v38, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1864
    if-eqz v27, :cond_2b

    .line 1865
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1866
    :cond_2b
    const-string v38, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1867
    if-eqz v27, :cond_2c

    .line 1868
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1869
    :cond_2c
    const-string v38, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1870
    if-eqz v27, :cond_2d

    .line 1871
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1872
    :cond_2d
    const-string v38, "pref_key_attachment_storage_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1873
    if-eqz v27, :cond_2e

    .line 1874
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1875
    :cond_2e
    const-string v38, "pref_key_htc_cdma_mms_connections_settings_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1876
    if-eqz v27, :cond_2f

    .line 1877
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1878
    :cond_2f
    const-string v38, "pref_key_mms_displaymode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1879
    if-eqz v27, :cond_30

    .line 1880
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1882
    :cond_30
    const-string v38, "pref_key_play_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1883
    if-eqz v27, :cond_31

    .line 1884
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1887
    :cond_31
    const-string v38, "pref_key_delete_all_mms"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1888
    if-eqz v27, :cond_32

    .line 1889
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1892
    :cond_32
    const-string v38, "pref_key_ngm_group_conversation"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1893
    if-eqz v27, :cond_33

    .line 1894
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1898
    :cond_33
    const-string v38, "pref_key_mms_restricted_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v27

    .line 1899
    if-eqz v27, :cond_13

    .line 1900
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_6

    .line 1918
    .end local v18           #mmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v27           #prefence:Lcom/htc/preference/HtcPreference;
    .end local v35           #smsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v31       #sLocale:Ljava/lang/String;
    :cond_34
    invoke-static {}, Lcom/android/mms/MmsApp;->isGreekInputType7bit()Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_35

    .line 1919
    const-string v38, "7bit"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setGreekInputType(Ljava/lang/String;)V

    .line 1927
    :goto_c
    const-string v38, "pref_key_greek_encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    new-instance v39, Lcom/android/mms/ui/MessagingPreferenceActivity$10;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$10;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_7

    .line 1922
    :cond_35
    const-string v38, "unicode"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setGreekInputType(Ljava/lang/String;)V

    goto :goto_c

    .line 1968
    .end local v31           #sLocale:Ljava/lang/String;
    :cond_36
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v38

    if-eqz v38, :cond_18

    const-string v38, "pref_key_ngm_group_conversation"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    if-eqz v38, :cond_18

    const-string v38, "pref_key_mms_preference_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    if-eqz v38, :cond_18

    .line 1969
    const-string v38, "pref_key_ngm_group_conversation"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    new-instance v39, Lcom/android/mms/ui/MessagingPreferenceActivity$11;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$11;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual/range {v38 .. v39}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_8

    .line 2024
    .restart local v20       #notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v25       #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_37
    const-string v38, "pref_key_preview_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_9

    .line 2076
    .restart local v6       #VVMVoicemailCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_38
    if-eqz v25, :cond_1d

    .line 2077
    const/16 v17, 0x0

    .line 2078
    .local v17, mVvmCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v38, "vvm_preferenceScreen"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcPreferenceScreen;

    .line 2080
    .local v14, mPrefScreen2:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v14, :cond_39

    .line 2081
    const-string v38, "pref_key_vvm_notification_category"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    .end local v17           #mVvmCategory:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v17, Lcom/htc/preference/HtcPreferenceCategory;

    .line 2083
    .restart local v17       #mVvmCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_39
    if-eqz v17, :cond_1d

    const-string v38, "pref_key_vvm_charm_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    if-eqz v38, :cond_1d

    .line 2084
    const-string v38, "pref_key_vvm_charm_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_a

    .line 2111
    .end local v14           #mPrefScreen2:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v17           #mVvmCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_3a
    const-string v38, "pref_key_charm_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_b
.end method

.method private initSmsPriority()V
    .locals 9

    .prologue
    .line 2357
    const-string v1, "normal"

    .line 2358
    .local v1, P_NORMAL:Ljava/lang/String;
    const-string v0, "high"

    .line 2359
    .local v0, P_HIGH:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2360
    .local v3, STR_NORMAL:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2361
    .local v2, STR_HIGH:Ljava/lang/String;
    const-string v6, "pref_key_sms_priority"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 2362
    .local v4, preSet:Lcom/htc/preference/HtcPreference;
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_0

    .line 2363
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    .line 2366
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "pref_key_sms_priority"

    const-string v8, "normal"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    .local v5, priority:Ljava/lang/String;
    const-string v6, "normal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2368
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2373
    :cond_1
    :goto_0
    new-instance v6, Lcom/android/mms/ui/MessagingPreferenceActivity$19;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$19;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 2386
    return-void

    .line 2369
    :cond_2
    const-string v6, "high"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2370
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static isSendingOptionsItemsAtLeastOneItemExisted(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2473
    const/4 v6, 0x0

    .line 2474
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v9, "com.android.mms.customizationBySIM"

    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2476
    if-nez v6, :cond_0

    .line 2512
    :goto_0
    return v8

    .line 2478
    :cond_0
    const-string v9, "Do_Customize"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2481
    .local v0, bHasCustomize:Z
    const/4 v4, 0x0

    .line 2482
    .local v4, bSMSDRShow:Z
    const/4 v5, 0x0

    .line 2484
    .local v5, bSMSPRIShow:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsSetting()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2487
    if-eqz v0, :cond_6

    .line 2489
    invoke-static {}, Lcom/android/mms/MmsApp;->isWorldPhone()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2490
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v4

    .line 2498
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v5

    .line 2505
    :cond_1
    const/4 v1, 0x0

    .local v1, bMMSDRShow:Z
    const/4 v3, 0x0

    .local v3, bMMSRRShow:Z
    const/4 v2, 0x0

    .line 2506
    .local v2, bMMSPRIShow:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2507
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSDeliveryReport()Z

    move-result v1

    .line 2508
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v3

    .line 2509
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSPriority()Z

    move-result v2

    .line 2512
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v7, v8

    :cond_4
    move v8, v7

    goto :goto_0

    .line 2492
    .end local v1           #bMMSDRShow:Z
    .end local v2           #bMMSPRIShow:Z
    .end local v3           #bMMSRRShow:Z
    :cond_5
    const-string v9, "SMS_Delivery_Report"

    invoke-interface {v6, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    .line 2495
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v4

    goto :goto_1
.end method

.method private onRestoreDefaultSettings()V
    .locals 3

    .prologue
    .line 2731
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfEnableCmasSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2732
    invoke-static {}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2735
    .local v0, isCdma:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2741
    .end local v0           #isCdma:Z
    :cond_0
    :goto_1
    return-void

    .line 2732
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2738
    .restart local v0       #isCdma:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->sendCmasCommands()V

    goto :goto_1
.end method

.method private restoreCMASSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1484
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1485
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/16 v1, 0x1001

    invoke-virtual {v0, v2, v1}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    .line 1486
    const/16 v1, 0x1002

    invoke-virtual {v0, v2, v1}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    .line 1487
    const/16 v1, 0x1003

    invoke-virtual {v0, v2, v1}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    .line 1488
    const/16 v1, 0x1004

    invoke-virtual {v0, v2, v1}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    .line 1489
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2567
    iget-boolean v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbHasCustomize:Z

    if-eqz v5, :cond_3

    .line 2568
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2569
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "Finished_Customize"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2570
    const-string v5, "Finished_General_Customize"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2571
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2572
    iput-boolean v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    .line 2573
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2577
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyDisplayMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2579
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2580
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2581
    .local v2, preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_key_mms_displaymode"

    const-string v6, "Collapse"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2582
    const-string v5, "pref_key_mms_displaymode_default"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2583
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2586
    .end local v2           #preEdt:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 2587
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultPrefLayout(Z)V

    .line 2605
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V

    .line 2607
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 2608
    const-string v5, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    .line 2609
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 2610
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2611
    const-string v5, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    .line 2612
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 2617
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2618
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 2619
    .local v3, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "pref_key_mms_preference_category"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 2622
    .local v1, mmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v1, :cond_2

    .line 2623
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 2626
    .end local v1           #mmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreGeneralPreference()V

    .line 2633
    invoke-static {p0}, Lcom/android/mms/util/MsgForwardHelper;->setForwardDefault(Landroid/content/Context;)V

    .line 2634
    return-void

    .line 2589
    :cond_3
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2593
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyDisplayMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2595
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2596
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2597
    .restart local v2       #preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_key_mms_displaymode"

    const-string v6, "Collapse"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2598
    const-string v5, "pref_key_mms_displaymode_default"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2599
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2602
    .end local v2           #preEdt:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 2603
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultPrefLayout(Z)V

    goto :goto_0
.end method

.method private restoreGeneralPreference()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2638
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2639
    .local v3, mms_sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2642
    .local v4, preEdt:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "RECIPT_Show_Sent_Msg_History"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2643
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "RECIPT_Show_Sent_Msg_History"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2644
    .local v5, value:Z
    if-ne v5, v8, :cond_0

    .line 2645
    const-string v6, "pref_key_sent_history"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2649
    .end local v5           #value:Z
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "RECIPT_Show_Call_History"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2650
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "RECIPT_Show_Call_History"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2651
    .restart local v5       #value:Z
    if-ne v5, v8, :cond_1

    .line 2652
    const-string v6, "pref_key_call_history"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2656
    .end local v5           #value:Z
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsEmailAddress()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "RECIPT_Show_Email_Address"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2657
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "RECIPT_Show_Email_Address"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2658
    .restart local v5       #value:Z
    if-ne v5, v8, :cond_3

    .line 2659
    const-string v6, "pref_key_email_address"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2663
    .end local v5           #value:Z
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "STORAGE_Del_Old_Msg"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2664
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "STORAGE_Del_Old_Msg"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2665
    .restart local v5       #value:Z
    if-ne v5, v8, :cond_4

    .line 2666
    const-string v6, "pref_key_auto_delete"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2670
    .end local v5           #value:Z
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "STORAGE_Text_Msg_Limit"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2671
    iget-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    if-nez v6, :cond_5

    .line 2672
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_5

    .line 2673
    const/4 v0, 0x0

    .line 2675
    .local v0, Limit:I
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "STORAGE_Text_Msg_Limit"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2679
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    if-eqz v6, :cond_5

    .line 2680
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v6, p0, v0}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 2690
    .end local v0           #Limit:I
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "STORAGE_MMS_Msg_Limit"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2691
    iget-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    if-nez v6, :cond_6

    .line 2692
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_6

    .line 2693
    const/4 v2, 0x0

    .line 2695
    .local v2, MMSLimit:I
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "STORAGE_MMS_Msg_Limit"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2697
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    if-eqz v6, :cond_6

    .line 2698
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v6, p0, v2}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 2708
    .end local v2           #MMSLimit:I
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "MSG_Preview_Line"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2709
    const/4 v1, 0x0

    .line 2711
    .local v1, Line:I
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "MSG_Preview_Line"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2712
    if-lt v1, v8, :cond_7

    .line 2713
    const-string v6, "pref_key_msg_preview"

    add-int/lit8 v7, v1, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2714
    sput v1, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    .line 2719
    .end local v1           #Line:I
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSIEUseSignature()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "MSG_Use_Signature"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2720
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "MSG_Use_Signature"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2721
    .restart local v5       #value:Z
    const-string v6, "pref_key_signature_enabled"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2724
    .end local v5           #value:Z
    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2725
    return-void
.end method

.method private sendCmasCommands()V
    .locals 2

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getGsmCmasChannelList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->sendGsmCmasCommands(Landroid/content/Context;Ljava/lang/String;)V

    .line 1435
    return-void
.end method

.method private setCmasSetting(Lcom/htc/preference/HtcPreferenceCategory;Lcom/htc/preference/HtcCheckBoxPreference;Z)V
    .locals 0
    .parameter "prefCategory"
    .parameter "pref"
    .parameter "checked"

    .prologue
    .line 1318
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1319
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 1320
    invoke-virtual {p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1321
    return-void
.end method

.method private setCustomizeSetting(Z)V
    .locals 26
    .parameter "restore"

    .prologue
    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    .line 542
    .local v11, mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v21, "pref_key_sms_preference_category"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcPreferenceCategory;

    .line 544
    .local v13, mSmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v21, "pref_key_mms_preference_category"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    .line 547
    .local v9, mMmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v21, "pref_key_vvm_settings_category"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcPreferenceCategory;

    .line 550
    .local v14, mVvmCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v21, "pref_sent_notification_settings_category"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceCategory;

    .line 554
    .local v10, mNtyCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v13, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 557
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v21

    if-nez v21, :cond_0

    .line 558
    const-string v21, "pref_key_manage_sim_messages"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 559
    :cond_0
    const-string v21, "pref_key_sms_center"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 566
    :cond_1
    if-eqz v13, :cond_22

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportAccentConvert()Z

    move-result v21

    if-nez v21, :cond_22

    .line 567
    if-nez p1, :cond_2

    const-string v21, "pref_key_sms_characters"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 568
    const-string v21, "pref_key_sms_characters"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 578
    :cond_2
    :goto_0
    if-eqz v13, :cond_23

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v21

    if-nez v21, :cond_23

    .line 579
    if-nez p1, :cond_3

    const-string v21, "pref_key_sms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 580
    const-string v21, "pref_key_sms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 589
    :cond_3
    :goto_1
    if-eqz v9, :cond_24

    const/16 v21, 0x1

    invoke-static {}, Lcom/android/mms/MmsApp;->isHideConnectionSetting()Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    if-nez p1, :cond_24

    const-string v21, "pref_key_htc_cdma_mms_connections_settings_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_24

    .line 590
    const-string v21, "pref_key_htc_cdma_mms_connections_settings_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 614
    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v21

    if-nez v21, :cond_6

    if-nez p1, :cond_6

    const-string v21, "pref_key_attachment_storage_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 615
    const-string v21, "pref_key_attachment_storage_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 617
    if-eqz v14, :cond_5

    invoke-virtual {v11, v14}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 621
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 623
    if-eqz v11, :cond_6

    .line 624
    const-string v21, "vvm_preferenceScreen"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    check-cast v12, Lcom/htc/preference/HtcPreferenceScreen;

    .line 625
    .local v12, mPrefScreen2:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    .line 627
    invoke-virtual {v12, v14}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 640
    .end local v12           #mPrefScreen2:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isWorldPhone()Z

    move-result v21

    if-eqz v21, :cond_26

    .line 641
    if-eqz v13, :cond_7

    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v21

    if-nez v21, :cond_7

    .line 642
    const-string v21, "pref_key_sms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 660
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSDeliveryReport()Z

    move-result v21

    if-nez v21, :cond_28

    .line 661
    if-eqz v9, :cond_8

    if-nez p1, :cond_8

    const-string v21, "pref_key_mms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 662
    const-string v21, "pref_key_mms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 675
    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v21

    if-nez v21, :cond_29

    .line 676
    if-eqz v9, :cond_9

    if-nez p1, :cond_9

    const-string v21, "pref_key_mms_read_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 677
    const-string v21, "pref_key_mms_read_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 690
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Auto_Retrieve"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2a

    .line 691
    if-eqz v9, :cond_a

    if-nez p1, :cond_a

    const-string v21, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 692
    const-string v21, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 705
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Roaming_Auto_Retrieve"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2b

    .line 706
    if-eqz v9, :cond_b

    if-nez p1, :cond_b

    sget-object v21, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 707
    sget-object v21, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 720
    :cond_b
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSPriority()Z

    move-result v21

    if-nez v21, :cond_2c

    .line 721
    if-eqz v9, :cond_c

    if-nez p1, :cond_c

    const-string v21, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 722
    const-string v21, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 735
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Msg_Size_Choose"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2d

    .line 736
    if-eqz v9, :cond_d

    if-nez p1, :cond_d

    const-string v21, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 737
    const-string v21, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 750
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Received_Notify"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2e

    .line 751
    if-eqz v9, :cond_e

    if-nez p1, :cond_e

    const-string v21, "pref_key_enable_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 752
    const-string v21, "pref_key_enable_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 765
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Play_Received_Notify"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2f

    .line 766
    if-eqz v9, :cond_f

    if-nez p1, :cond_f

    const-string v21, "pref_key_play_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 767
    const-string v21, "pref_key_play_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 780
    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Received_Notify_sound"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_30

    .line 781
    if-eqz v9, :cond_10

    if-nez p1, :cond_10

    const-string v21, "pref_key_received_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_10

    .line 782
    const-string v21, "pref_key_received_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 795
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Received_Viberation"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_31

    .line 796
    if-eqz v9, :cond_11

    if-nez p1, :cond_11

    const-string v21, "pref_key_vibrate_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_11

    .line 797
    const-string v21, "pref_key_vibrate_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 810
    :cond_11
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Sent_Notify"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_32

    .line 811
    if-eqz v9, :cond_12

    if-nez p1, :cond_12

    const-string v21, "pref_key_enable_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_12

    .line 812
    const-string v21, "pref_key_enable_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 825
    :cond_12
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Fail_Notify"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_33

    .line 826
    if-eqz v9, :cond_13

    if-nez p1, :cond_13

    const-string v21, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_13

    .line 827
    const-string v21, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 840
    :cond_13
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Play_Notify"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_34

    .line 841
    if-eqz v9, :cond_14

    if-nez p1, :cond_14

    const-string v21, "pref_key_play_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_14

    .line 842
    const-string v21, "pref_key_play_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 855
    :cond_14
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Notify_Sound"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_35

    .line 856
    if-eqz v9, :cond_15

    if-nez p1, :cond_15

    const-string v21, "pref_key_sent_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_15

    .line 857
    const-string v21, "pref_key_sent_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 869
    :cond_15
    :goto_11
    if-eqz v9, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Viberation"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_36

    .line 870
    if-nez p1, :cond_16

    const-string v21, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_16

    .line 871
    const-string v21, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 884
    :cond_16
    :goto_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_18

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportAccentConvert()Z

    move-result v21

    if-eqz v21, :cond_18

    const/16 v21, 0x34

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 887
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_18

    .line 888
    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 889
    .local v15, sLocale:Ljava/lang/String;
    const-string v21, "fr_"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    const-string v21, "fr"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 890
    :cond_17
    const-string v21, "pref_key_sms_characters"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    check-cast v17, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 891
    .local v17, smsCharacters:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v17, :cond_18

    .line 892
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 912
    .end local v8           #locale:Ljava/util/Locale;
    .end local v15           #sLocale:Ljava/lang/String;
    .end local v17           #smsCharacters:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    .line 913
    invoke-static {}, Lcom/android/mms/MmsApp;->isSignatureDefaultEnable()Z

    move-result v21

    if-eqz v21, :cond_19

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "pref_key_signature_enabled"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 916
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "pref_key_signature_text_by_user"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 921
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v21

    if-eqz v21, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "pref_key_sms_callback"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "SMS_Callback_Number"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 926
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v21

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "pref_key_mms_callback"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "MMS_Callback_Number"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 931
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v21

    if-nez v21, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v21

    if-eqz v21, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_1e

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "pref_key_set_callback"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 938
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "Display_message_on_screen"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_37

    .line 939
    if-eqz v10, :cond_1f

    if-nez p1, :cond_1f

    const-string v21, "pref_display_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_1f

    .line 940
    const-string v21, "pref_display_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 952
    :cond_1f
    :goto_13
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSRestrictedMode()Z

    move-result v21

    if-nez v21, :cond_38

    .line 953
    if-eqz v9, :cond_20

    if-nez p1, :cond_20

    const-string v21, "pref_key_mms_restricted_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_20

    .line 954
    const-string v21, "pref_key_mms_restricted_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 967
    :cond_20
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_21

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 969
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "Finished_Customize"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 970
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 972
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_21
    return-void

    .line 569
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 570
    const-string v21, "pref_key_sms_characters"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 571
    .local v5, SMS_Characters:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v5, :cond_2

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "SMS_Characters"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSMSCharactersSetting()Z

    move-result v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 581
    .end local v5           #SMS_Characters:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 582
    const-string v21, "pref_key_sms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    .line 583
    .local v6, SMS_Priority:Lcom/htc/preference/HtcListPreference;
    if-eqz v6, :cond_3

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "SMS_Priority"

    const-string v23, "normal"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    .end local v6           #SMS_Priority:Lcom/htc/preference/HtcListPreference;
    :cond_24
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaMmsConnEditorEditable()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "default_htc_cdma_mms_connection_type"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 595
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 596
    .local v20, values:Landroid/content/ContentValues;
    const-string v21, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "default_htc_cdma_mms_connections_name"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v21, "mmsc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "default_htc_cdma_mms_mmsc"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v21, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "default_htc_cdma_mms_proxy"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v21, "mmsport"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "default_htc_cdma_mms_port"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v21, "mmsprotocol"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "default_htc_cdma_mms_connection_type"

    const-string v24, "2.0"

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaAPN()Z

    move-result v21

    if-eqz v21, :cond_25

    .line 604
    sget-object v19, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 608
    .local v19, uri:Landroid/net/Uri;
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    invoke-static {}, Lcom/htc/messaging/ui/HtcCdmaMmsConnEditor;->queryDatabaseWhereString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 606
    .end local v19           #uri:Landroid/net/Uri;
    :cond_25
    sget-object v19, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v19       #uri:Landroid/net/Uri;
    goto :goto_15

    .line 645
    .end local v19           #uri:Landroid/net/Uri;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_26
    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "SMS_Delivery_Report"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_27

    .line 646
    if-nez p1, :cond_7

    .line 647
    const-string v21, "pref_key_sms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    .line 650
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    const-string v21, "pref_key_sms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 652
    const-string v21, "pref_key_sms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "SMS_Delivery_Report"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 655
    const-string v21, "pref_key_sms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "SMS_Delivery_Report"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 664
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    const-string v21, "pref_key_mms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 666
    const-string v21, "pref_key_mms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Delivery_Report"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 669
    const-string v21, "pref_key_mms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Delivery_Report"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 679
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    const-string v21, "pref_key_mms_read_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 681
    const-string v21, "pref_key_mms_read_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Read_Report"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 684
    const-string v21, "pref_key_mms_read_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Read_Report"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 694
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    const-string v21, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 696
    const-string v21, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Auto_Retrieve"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 699
    const-string v21, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Auto_Retrieve"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 709
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    sget-object v21, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 711
    sget-object v21, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Roaming_Auto_Retrieve"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 714
    sget-object v21, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Roaming_Auto_Retrieve"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 724
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    const-string v21, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 726
    const-string v21, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Priority"

    const-string v24, "medium"

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 729
    const-string v21, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Priority"

    const-string v24, "medium"

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 739
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    const-string v21, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 741
    const-string v21, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Msg_Size_Choose"

    const-string v24, "3"

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 744
    const-string v21, "pref_key_mms_max_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Msg_Size_Choose"

    const-string v24, "3"

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 754
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    const-string v21, "pref_key_enable_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 756
    const-string v21, "pref_key_enable_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Received_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 759
    const-string v21, "pref_key_enable_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Received_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 769
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_f

    const-string v21, "pref_key_play_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 771
    const-string v21, "pref_key_play_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Play_Received_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 774
    const-string v21, "pref_key_play_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Play_Received_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 784
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_10

    const-string v21, "pref_key_received_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_10

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Received_Notify_sound"

    const-string v23, "content://settings/system/notification_sound"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 787
    .local v18, str:Ljava/lang/String;
    const-string v21, "Default Ringtone"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 788
    const-string v21, "pref_key_received_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 799
    .end local v18           #str:Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_11

    const-string v21, "pref_key_vibrate_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_11

    .line 801
    const-string v21, "pref_key_vibrate_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Received_Viberation"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 804
    const-string v21, "pref_key_vibrate_received_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Received_Viberation"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 814
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_12

    const-string v21, "pref_key_enable_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_12

    .line 816
    const-string v21, "pref_key_enable_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Sent_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 819
    const-string v21, "pref_key_enable_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Sent_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 829
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_13

    const-string v21, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_13

    .line 831
    const-string v21, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Fail_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 834
    const-string v21, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Fail_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 844
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    const-string v21, "pref_key_play_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_14

    .line 846
    const-string v21, "pref_key_play_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Play_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 849
    const-string v21, "pref_key_play_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Play_Notify"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 859
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_15

    const-string v21, "pref_key_sent_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_15

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "MMS_Notify_Sound"

    const-string v23, "content://settings/system/notification_sound"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 862
    .restart local v18       #str:Ljava/lang/String;
    const-string v21, "Default Ringtone"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_15

    .line 863
    const-string v21, "pref_key_sent_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 873
    .end local v18           #str:Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_16

    const-string v21, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_16

    .line 875
    const-string v21, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Viberation"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 878
    const-string v21, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "MMS_Viberation"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 943
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_1f

    const-string v21, "pref_display_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_1f

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "Display_message_on_screen"

    const-string v23, "success_and_failure"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 946
    .local v16, set:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setNTY_DISPLYONSCREEN(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 956
    .end local v16           #set:Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    move/from16 v21, v0

    if-nez v21, :cond_20

    const-string v21, "pref_key_mms_restricted_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    if-eqz v21, :cond_20

    .line 957
    const-string v21, "pref_key_mms_restricted_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 960
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    goto/16 :goto_14
.end method

.method private setDefaultPrefLayout(Z)V
    .locals 12
    .parameter "restoreCustomize"

    .prologue
    const v11, 0x7f040018

    const v10, 0x7f040011

    const v9, 0x7f04000d

    const v8, 0x7f04000b

    const/4 v7, 0x0

    .line 1022
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1023
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1024
    const-string v6, "sending_options"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbSendingOptions:Z

    .line 1025
    const-string v6, "vvm_settings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbVvmSettings:Z

    .line 1026
    const-string v6, "notification_settings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbNotificationsSettings:Z

    .line 1030
    :cond_0
    iget-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbSendingOptions:Z

    if-eqz v6, :cond_a

    .line 1031
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1032
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1033
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1035
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1036
    :cond_2
    const v6, 0x7f040001

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1037
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initCallbackNumberPref()V

    .line 1040
    :cond_3
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNeedRestoreSendingOption:Z

    .line 1041
    if-eqz v2, :cond_4

    .line 1042
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->backupSendingOption(Landroid/content/Intent;)V

    .line 1165
    :cond_4
    :goto_0
    iget-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbHasCustomize:Z

    if-nez v6, :cond_1e

    .line 1166
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultSettingLayout()V

    .line 1174
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1175
    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Lcom/htc/preference/HtcPreference;

    .line 1177
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x97

    if-ne v6, v7, :cond_5

    .line 1178
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f09035b

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1179
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f09035a

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1183
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1184
    const-string v6, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    .line 1185
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 1186
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_storage_settings"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v7, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1192
    :goto_2
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 1193
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 1194
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 1195
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1196
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 1200
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1201
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_storage_settings"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v1, v6

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1202
    .local v1, deleted_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v1, :cond_7

    .line 1203
    const-string v6, "pref_key_delete_immediately"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1204
    const-string v6, "MessagingPreferenceActivity"

    const-string v7, "Remove the setting item"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .end local v1           #deleted_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSendCallLog()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1213
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_recipient_list_settings"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v4, v6

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1215
    .local v4, recipient_list_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v4, :cond_8

    .line 1216
    const-string v6, "pref_key_sent_history"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1217
    const-string v6, "pref_key_call_history"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1222
    .end local v4           #recipient_list_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsSetting()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1223
    const/4 v5, 0x0

    .line 1225
    .local v5, target:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1226
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "sms_setting_preferenceScreen"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 1230
    :goto_3
    if-eqz v5, :cond_9

    .line 1231
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1235
    .end local v5           #target:Lcom/htc/preference/HtcPreference;
    :cond_9
    return-void

    .line 1044
    :cond_a
    iget-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbVvmSettings:Z

    if-eqz v6, :cond_b

    .line 1045
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 1046
    :cond_b
    iget-boolean v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbNotificationsSettings:Z

    if-eqz v6, :cond_c

    .line 1047
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 1048
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v6

    if-nez v6, :cond_18

    .line 1049
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1051
    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1052
    const v6, 0x7f040013

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1053
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1054
    const v6, 0x7f04000a

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1055
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRecipientListEnhance()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1056
    const v6, 0x7f04000f

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1058
    :cond_f
    invoke-static {p0}, Lcom/android/mms/util/MsgForwardHelper;->initPreferenceLayout(Lcom/htc/preference/HtcPreferenceActivity;)Z

    .line 1060
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1061
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1063
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_mms_preference_category"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v3, v6

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1066
    .local v3, mms_common_2layer:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyDisplayMode()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1068
    if-eqz v3, :cond_10

    .line 1069
    const-string v6, "pref_key_mms_displaymode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1072
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyMMSPlayMode()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1073
    if-eqz v3, :cond_11

    .line 1074
    const-string v6, "pref_key_play_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1078
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeleteAllMMS()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1079
    if-eqz v3, :cond_12

    .line 1080
    const-string v6, "pref_key_delete_all_mms"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1084
    .end local v3           #mms_common_2layer:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1085
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1087
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1088
    const v6, 0x7f040010

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1090
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1091
    const v6, 0x7f040016

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1095
    :cond_15
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1097
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_cmcc_setting"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v0, v6

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1098
    .local v0, blockListCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v0, :cond_4

    .line 1099
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v6

    if-nez v6, :cond_16

    .line 1100
    const-string v6, "pref_key_save_block_message"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1103
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v6

    if-nez v6, :cond_17

    .line 1104
    const-string v6, "pref_key_mms_thread_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1107
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSenderInformation()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1108
    const-string v6, "pref_key_forward_sender_info"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 1119
    .end local v0           #blockListCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_18
    const v6, 0x7f04000e

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1120
    const v6, 0x7f040012

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1121
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1123
    const v6, 0x7f04000c

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1124
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_mms_preference_category"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v3, v6

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1126
    .restart local v3       #mms_common_2layer:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyDisplayMode()Z

    move-result v6

    if-nez v6, :cond_19

    .line 1128
    if-eqz v3, :cond_19

    .line 1129
    const-string v6, "pref_key_mms_displaymode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1132
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyMMSPlayMode()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1133
    if-eqz v3, :cond_1a

    .line 1134
    const-string v6, "pref_key_play_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1138
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeleteAllMMS()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1139
    if-eqz v3, :cond_1b

    .line 1140
    const-string v6, "pref_key_delete_all_mms"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1145
    .end local v3           #mms_common_2layer:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1b
    const v6, 0x7f040005

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1148
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1149
    const v6, 0x7f040019

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1153
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfEnableCmasSettings()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1154
    const v6, 0x7f040003

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1159
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1160
    const v6, 0x7f040007

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 1168
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCustomizeSetting(Z)V

    goto/16 :goto_1

    .line 1190
    :cond_1f
    const-string v6, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_2

    .line 1228
    .restart local v5       #target:Lcom/htc/preference/HtcPreference;
    :cond_20
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_sms_preference_category"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    goto/16 :goto_3
.end method

.method private setDefaultSettingLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 390
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 391
    .local v1, mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v6, "pref_key_sms_preference_category"

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    .line 393
    .local v4, mSmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v6, "pref_key_mms_preference_category"

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 395
    .local v0, mMmsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v6, "pref_sent_notification_settings_category"

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 397
    .local v3, mSentNotificationCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v6, "pref_key_vvm_settings_category"

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    .line 400
    .local v5, mVvmCategory:Lcom/htc/preference/HtcPreferenceCategory;
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_a

    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_0

    if-eqz v4, :cond_0

    .line 403
    const-string v6, "pref_key_sms_center"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 406
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 407
    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 411
    :cond_1
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 413
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 415
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 419
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v6

    if-nez v6, :cond_5

    .line 420
    if-eqz v5, :cond_3

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 421
    :cond_3
    const-string v6, "pref_key_attachment_storage_setting"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 422
    const-string v6, "pref_key_attachment_storage_setting"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 425
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 427
    if-eqz v1, :cond_5

    .line 428
    const-string v6, "vvm_preferenceScreen"

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 429
    .local v2, mPrefScreen2:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 431
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 491
    .end local v2           #mPrefScreen2:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSDeliveryReport()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 492
    const-string v6, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 494
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "pref_key_mms_read_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    .line 495
    const-string v6, "pref_key_mms_read_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 514
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "pref_display_message"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 515
    const-string v6, "pref_display_message"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 519
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSRestrictedMode()Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "pref_key_mms_restricted_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 520
    const-string v6, "pref_key_mms_restricted_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 523
    :cond_9
    return-void

    .line 442
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_12

    .line 444
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v6

    if-nez v6, :cond_b

    .line 445
    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 446
    :cond_b
    const-string v6, "pref_key_sms_center"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 449
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 450
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 463
    :cond_c
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v6

    if-nez v6, :cond_d

    .line 464
    const-string v6, "pref_key_sms_priority"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 467
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v6

    if-nez v6, :cond_e

    .line 468
    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 471
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "pref_key_attachment_storage_setting"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 472
    const-string v6, "pref_key_attachment_storage_setting"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 476
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsApp;->isHideConnectionSetting()Z

    move-result v6

    if-ne v9, v6, :cond_10

    const-string v6, "pref_key_htc_cdma_mms_connections_settings_setting"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 477
    const-string v6, "pref_key_htc_cdma_mms_connections_settings_setting"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 481
    :cond_10
    const/16 v6, 0xd2

    invoke-static {v6}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v6

    if-nez v6, :cond_11

    const/16 v6, 0x50

    invoke-static {v6}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_11
    const-string v6, "pref_key_mms_max_size"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 485
    const-string v6, "pref_key_mms_max_size"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 455
    :cond_12
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v8, :cond_c

    .line 456
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 457
    sget-object v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1
.end method

.method private setGreekInputType(Ljava/lang/String;)V
    .locals 6
    .parameter "set"

    .prologue
    .line 2166
    const-string v4, "pref_key_greek_encoding"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 2167
    .local v1, pref:Lcom/htc/preference/HtcListPreference;
    if-eqz v1, :cond_3

    .line 2168
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2169
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2170
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2171
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 2169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2175
    :cond_1
    const/4 v2, 0x0

    .line 2176
    .local v2, sSummary:Ljava/lang/String;
    const-string v4, "7bit"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2177
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09026f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2181
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2184
    .end local v0           #i:I
    .end local v2           #sSummary:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2178
    .restart local v0       #i:I
    .restart local v2       #sSummary:Ljava/lang/String;
    .restart local v3       #values:[Ljava/lang/String;
    :cond_4
    const-string v4, "unicode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2179
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090270

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f090266

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1504
    :cond_0
    return-void
.end method

.method private setNotificationListeners()V
    .locals 3

    .prologue
    .line 3284
    const-string v2, "pref_key_enable_sent_notifications"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 3285
    .local v0, sentCheck:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$23;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$23;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 3304
    const-string v2, "pref_key_enable_sent_failure_notifications"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 3305
    .local v1, sentfailCheck:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$24;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$24;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 3325
    return-void
.end method

.method private setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 4
    .parameter "checkbox"

    .prologue
    .line 1389
    invoke-static {}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1392
    .local v0, isCdma:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1394
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1414
    .local v1, listener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1424
    .end local v1           #listener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    :goto_1
    return-void

    .line 1389
    .end local v0           #isCdma:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1416
    .restart local v0       #isCdma:Z
    :cond_1
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f090266

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1496
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 3055
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3056
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3057
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3058
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3059
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3060
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3061
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 3062
    return-void
.end method


# virtual methods
.method backupSendingOption(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 3338
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "backupSendingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    const-string v0, "sending_options_MmsPriority"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Ljava/lang/String;

    .line 3340
    const-string v0, "sending_options_SmsPriority"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPriority:Ljava/lang/String;

    .line 3341
    const-string v0, "sending_options_SmsDeliveryReport"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Z

    .line 3342
    const-string v0, "sending_options_MmsDeliveryReport"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Z

    .line 3343
    const-string v0, "sending_options_MmsReadReport"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Z

    .line 3344
    const-string v0, "sending_options_SmsCallback"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallback:Z

    .line 3345
    const-string v0, "sending_options_MmsCallback"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallback:Z

    .line 3346
    const-string v0, "sending_options_CallbackNumber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    .line 3347
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    invoke-static {p0, p1, p3}, Lcom/android/mms/util/MsgForwardHelper;->HandleActivityResult(Lcom/htc/preference/HtcPreferenceActivity;ILandroid/content/Intent;)Z

    .line 387
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 356
    const-string v0, "com.android.mms_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mms_sp:Landroid/content/SharedPreferences;

    .line 357
    const-string v0, "com.android.mms.customizationBySIM"

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Do_Customize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbHasCustomize:Z

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Finished_Customize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbCustomizeInitialed:Z

    .line 365
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    if-eqz v0, :cond_1

    .line 366
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 370
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->checkCmasServiceTable()V

    .line 373
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setDefaultPrefLayout(Z)V

    .line 374
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V

    .line 377
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/mms/util/MsgPreferenceUtils;->getMediaMountEventIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2543
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2544
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2545
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbSendingOptions:Z

    if-nez v0, :cond_0

    .line 2546
    const v0, 0x7f090070

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020131

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2548
    :cond_0
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2932
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 2933
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2938
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2939
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2942
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3329
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3330
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNeedRestoreSendingOption:Z

    .line 3331
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "onKeyDown mNeedRestoreSendingOption=false..KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2553
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2562
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2555
    :pswitch_0
    const-string v0, "ANALYTIC_Mms"

    const-string v1, "[MessagingPreferenceActivity]Restore defaults"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    .line 2558
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->onRestoreDefaultSettings()V

    .line 2560
    const/4 v0, 0x1

    goto :goto_0

    .line 2553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 537
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sThis:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 538
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_1

    .line 3240
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090268

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 3263
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0

    .line 3246
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_2

    .line 3247
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090269

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 3254
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 3255
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3257
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3259
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 529
    invoke-static {p0}, Lcom/android/mms/util/MsgForwardHelper;->updateForwardIndicator(Landroid/content/Context;)V

    .line 531
    sput-object p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->sThis:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 532
    return-void
.end method

.method public onSmscEntered(Lcom/android/mms/ui/SmsCenterPreference;Z)V
    .locals 9
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v7, 0x7f09012d

    const/16 v6, 0x50

    const/4 v8, 0x0

    .line 3065
    if-nez p2, :cond_1

    .line 3136
    :cond_0
    :goto_0
    return-void

    .line 3069
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/SmsCenterPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 3071
    .local v4, smsc:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3076
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3077
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showAlert(Ljava/lang/String;)V

    .line 3080
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3081
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 3087
    :cond_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v6, :cond_3

    .line 3088
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x70

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x57

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x77

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x23

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int v2, v5, v6

    .line 3091
    .local v2, posInvalidChar:I
    const/4 v5, -0x6

    if-le v2, v5, :cond_3

    .line 3092
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showAlert(Ljava/lang/String;)V

    .line 3095
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3096
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 3102
    .end local v2           #posInvalidChar:I
    :cond_3
    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 3105
    .local v3, posPlus:I
    if-lez v3, :cond_4

    .line 3106
    const v5, 0x7f090122

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showAlert(Ljava/lang/String;)V

    .line 3109
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3110
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3114
    :cond_4
    if-nez v3, :cond_5

    const/16 v0, 0x15

    .line 3116
    .local v0, maxLength:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_6

    .line 3117
    const v5, 0x7f090123

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showAlert(Ljava/lang/String;)V

    .line 3120
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3121
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/SmsCenterPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3114
    .end local v0           #maxLength:I
    :cond_5
    const/16 v0, 0x14

    goto :goto_1

    .line 3125
    .restart local v0       #maxLength:I
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    invoke-virtual {v5, v4}, Lcom/android/mms/ui/SmsCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3126
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    invoke-virtual {v5, v4}, Lcom/android/mms/ui/SmsCenterPreference;->setText(Ljava/lang/String;)V

    .line 3128
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3129
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3130
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;

    invoke-virtual {v5, v8}, Lcom/android/mms/ui/SmsCenterPreference;->setEnabled(Z)V

    .line 3134
    const-string v5, "MessagingPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ATS]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][set_service_center][successful]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2519
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v3, :cond_1

    .line 2520
    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mContentChanged:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v3, :cond_0

    .line 2521
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2522
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 2525
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 2526
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStop mNeedRestoreSendingOption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNeedRestoreSendingOption:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mbSendingOptions:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNeedRestoreSendingOption:Z

    if-eqz v3, :cond_3

    .line 2528
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2529
    .local v1, pm:Landroid/os/PowerManager;
    if-nez v1, :cond_4

    const/4 v2, 0x1

    .line 2530
    .local v2, screenOn:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v0

    .line 2531
    .local v0, gotoHome:Z
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    .line 2532
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreSendingOption()V

    .line 2533
    sput-boolean v7, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNeedRestoreSendingOption:Z

    .line 2537
    .end local v0           #gotoHome:Z
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #screenOn:Z
    :cond_3
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 2538
    return-void

    .line 2529
    .restart local v1       #pm:Landroid/os/PowerManager;
    :cond_4
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    goto :goto_0
.end method

.method restoreSendingOption()V
    .locals 4

    .prologue
    .line 3350
    const-string v2, "MessagingPreferenceActivity"

    const-string v3, "restoreSendingOption"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3352
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3354
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSPriority()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_mms_priority"

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3355
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_sms_priority"

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPriority:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3356
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pref_key_sms_delivery_reports"

    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3357
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSDeliveryReport()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pref_key_mms_delivery_reports"

    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3358
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "pref_key_mms_read_reports"

    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3359
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3360
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3361
    const-string v2, "pref_key_sms_callback"

    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsCallback:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3362
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3363
    const-string v2, "pref_key_mms_callback"

    iget-boolean v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCallback:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3364
    :cond_7
    const-string v2, "pref_key_set_callback"

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3366
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3367
    return-void
.end method

.method public setNTY_DISPLYONSCREEN(Ljava/lang/String;)V
    .locals 7
    .parameter "set"

    .prologue
    .line 976
    const-string v5, "pref_display_message"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 977
    .local v2, pref:Lcom/htc/preference/HtcListPreference;
    const/4 v0, 0x0

    .line 978
    .local v0, HasValueIndex:Z
    if-eqz v2, :cond_5

    .line 979
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 980
    .local v4, values:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 981
    aget-object v5, v4, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 982
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 983
    const/4 v0, 0x1

    .line 980
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    :cond_1
    if-nez v0, :cond_2

    .line 989
    const-string v5, "pref_sent_success_only"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 990
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1000
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 1001
    .local v3, sSummary:Ljava/lang/String;
    const-string v5, "success"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "pref_sent_success_only"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1002
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1010
    :cond_4
    :goto_2
    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1012
    .end local v1           #i:I
    .end local v3           #sSummary:Ljava/lang/String;
    .end local v4           #values:[Ljava/lang/String;
    :cond_5
    return-void

    .line 991
    .restart local v1       #i:I
    .restart local v4       #values:[Ljava/lang/String;
    :cond_6
    const-string v5, "pref_sent_failure_only"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 992
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 993
    :cond_7
    const-string v5, "pref_sent_success_and_failure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 994
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 995
    :cond_8
    const-string v5, "pref_sent_none"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 996
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 1003
    .restart local v3       #sSummary:Ljava/lang/String;
    :cond_9
    const-string v5, "failure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "pref_sent_failure_only"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1004
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1005
    :cond_b
    const-string v5, "success_and_failure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "pref_sent_success_and_failure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1006
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1007
    :cond_d
    const-string v5, "none"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "pref_sent_none"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1008
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method
