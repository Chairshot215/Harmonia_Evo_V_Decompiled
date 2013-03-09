.class public Lcom/android/mms/ui/MessageGeneralPreference;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "MessageGeneralPreference.java"


# static fields
.field public static final MESSAGE_PREVIEW:Ljava/lang/String; = "pref_key_msg_preview"

.field public static final MESSAGE_SIGNATURE_ENABLE:Ljava/lang/String; = "pref_key_signature_enabled"

.field public static final MESSAGE_SIGNATURE_SHOW:Ljava/lang/String; = "pref_key_signature_settings"

.field public static final MESSAGE_SIGNATURE_TEXT:Ljava/lang/String; = "pref_key_signature_text"

.field public static final MESSAGE_SIGNATURE_TEXT_BY_USER:Ljava/lang/String; = "pref_key_signature_text_by_user"

.field public static final RECIPIENT_CALL_HISTORY:Ljava/lang/String; = "pref_key_call_history"

.field public static final RECIPIENT_EMAIL_ADDRESS:Ljava/lang/String; = "pref_key_email_address"

.field public static final RECIPIENT_LIST_SETTINGS_PREFERENCE_CATEGORY:Ljava/lang/String; = "pref_recipient_list_settings"

.field public static final RECIPIENT_SENT_HISTORY:Ljava/lang/String; = "pref_key_sent_history"

.field public static final STORAGE_DEL_OLD_MSG:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final STORAGE_MMS_MSG_LIMIT:Ljava/lang/String; = "pref_key_mms_delete_limit"

.field public static final STORAGE_SETTINGS_PREFERENCE_CATEGORY:Ljava/lang/String; = "pref_key_storage_settings"

.field public static final STORAGE_TEXT_MSG_LIMIT:Ljava/lang/String; = "pref_key_sms_delete_limit"

.field private static final TAG:Ljava/lang/String; = "MessageGeneralPreference"

.field private static sThis:Lcom/android/mms/ui/MessageGeneralPreference;


# instance fields
.field mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Lcom/htc/preference/HtcPreference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

.field mSetCallbackPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Lcom/htc/preference/HtcPreference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mbCustomizeInitialed:Z

.field private mbHasCustomize:Z

.field private mms_sp:Landroid/content/SharedPreferences;

.field private preMsgPreview:Lcom/htc/preference/HtcPreference;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageGeneralPreference;->sThis:Lcom/android/mms/ui/MessageGeneralPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    .line 89
    iput-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mms_sp:Landroid/content/SharedPreferences;

    .line 90
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbHasCustomize:Z

    .line 314
    new-instance v0, Lcom/android/mms/ui/MessageGeneralPreference$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageGeneralPreference$1;-><init>(Lcom/android/mms/ui/MessageGeneralPreference;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 322
    new-instance v0, Lcom/android/mms/ui/MessageGeneralPreference$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageGeneralPreference$2;-><init>(Lcom/android/mms/ui/MessageGeneralPreference;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 467
    new-instance v0, Lcom/android/mms/ui/MessageGeneralPreference$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageGeneralPreference$6;-><init>(Lcom/android/mms/ui/MessageGeneralPreference;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageGeneralPreference;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageGeneralPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageGeneralPreference;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageGeneralPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageGeneralPreference;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageGeneralPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mms_sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageGeneralPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageGeneralPreference;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/MessageGeneralPreference;
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lcom/android/mms/ui/MessageGeneralPreference;->sThis:Lcom/android/mms/ui/MessageGeneralPreference;

    return-object v0
.end method

.method private initCallbackNumberPref()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 422
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 423
    .local v2, mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "pref_callback_number_setting_category_key"

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 425
    .local v1, mCallbackNumberCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "pref_key_sms_callback"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 426
    const-string v5, "pref_key_mms_callback"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 427
    const-string v5, "pref_key_set_callback"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    .line 429
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    if-nez v5, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v5

    if-nez v5, :cond_2

    .line 433
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 434
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v5

    if-nez v5, :cond_3

    .line 435
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 437
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 439
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 444
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, mdn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 448
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 458
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_7

    .line 459
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 460
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 464
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v6, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 441
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v3           #mdn:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 450
    .restart local v3       #mdn:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_6

    .line 451
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initMsgPreviewPreference()V
    .locals 7

    .prologue
    .line 332
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v4, "pref_key_msg_preview"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, Str:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 341
    .local v2, mSize:Ljava/lang/String;
    const/4 v1, 0x0

    .line 344
    .local v1, mIndex:I
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 345
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_msg_preview"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 348
    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    aget-object v5, v0, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    new-instance v5, Lcom/android/mms/ui/MessageGeneralPreference$3;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/ui/MessageGeneralPreference$3;-><init>(Lcom/android/mms/ui/MessageGeneralPreference;[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initSignature()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 368
    iget-object v3, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mms_sp:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_signature_text_by_user"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 369
    .local v2, signature_modified:Z
    const-string v3, "pref_key_signature_enabled"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 370
    .local v0, mSignaturePref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 371
    const v3, 0x7f090330

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 374
    :goto_0
    new-instance v3, Lcom/android/mms/ui/MessageGeneralPreference$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageGeneralPreference$4;-><init>(Lcom/android/mms/ui/MessageGeneralPreference;)V

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 389
    const-string v3, "pref_key_signature_text"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .line 390
    .local v1, mSignatureTextPref:Lcom/htc/preference/HtcEditTextPreference;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSIEUseSignature()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    const-string v4, "MSG_Use_Signature"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbHasCustomize:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    if-eqz v3, :cond_2

    .line 393
    :cond_0
    if-nez v2, :cond_1

    .line 394
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 395
    :cond_1
    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    :cond_2
    new-instance v3, Lcom/android/mms/ui/MessageGeneralPreference$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageGeneralPreference$5;-><init>(Lcom/android/mms/ui/MessageGeneralPreference;)V

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 417
    return-void

    .line 373
    .end local v1           #mSignatureTextPref:Lcom/htc/preference/HtcEditTextPreference;
    :cond_3
    const v3, 0x7f090331

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private prepareSmsStorageSetting()V
    .locals 3

    .prologue
    .line 237
    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->addPreferencesFromResource(I)V

    .line 239
    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    .line 241
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_storage_settings"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v2, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 248
    :goto_0
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 249
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 252
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->setSmsDisplayLimit()V

    .line 253
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->setMmsDisplayLimit()V

    .line 257
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_storage_settings"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v0, v1

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 259
    .local v0, deleted_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v0, :cond_1

    .line 260
    const-string v1, "pref_key_delete_immediately"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 265
    .end local v0           #deleted_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1
    return-void

    .line 246
    :cond_2
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    goto :goto_0
.end method

.method private setCustomizeSetting(Z)V
    .locals 22
    .parameter "restore"

    .prologue
    .line 511
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v18

    if-nez v18, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const/4 v7, 0x0

    .line 515
    .local v7, bRecipientCategoryExist:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    .line 516
    .local v11, mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v18, "pref_recipient_list_settings"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    check-cast v12, Lcom/htc/preference/HtcPreferenceCategory;

    .line 518
    .local v12, mRecipientCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v18, "pref_key_storage_settings"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    check-cast v16, Lcom/htc/preference/HtcPreferenceCategory;

    .line 523
    .local v16, mStorageCategory:Lcom/htc/preference/HtcPreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "RECIPT_Show_Sent_Msg_History"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 524
    if-nez p1, :cond_2

    .line 525
    const-string v18, "pref_key_sent_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 540
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "RECIPT_Show_Call_History"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 541
    if-nez p1, :cond_3

    .line 542
    const-string v18, "pref_key_call_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 557
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsEmailAddress()Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "RECIPT_Show_Email_Address"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 558
    :cond_5
    if-nez p1, :cond_6

    const-string v18, "pref_key_email_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 559
    const-string v18, "pref_key_email_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 573
    :cond_6
    :goto_3
    if-nez v7, :cond_7

    .line 574
    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 577
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "STORAGE_Del_Old_Msg"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 578
    if-nez p1, :cond_8

    if-eqz v16, :cond_8

    .line 579
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 583
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "MSG_Preview_Line"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 586
    const/4 v10, 0x0

    .line 587
    .local v10, mIndex:I
    const/4 v2, 0x0

    .line 589
    .local v2, Line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "MSG_Preview_Line"

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 595
    const-string v18, "pref_key_msg_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    .line 596
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v2, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 597
    add-int/lit8 v10, v2, -0x1

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060024

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 602
    .local v6, Str:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    aget-object v19, v6, v10

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    aget-object v19, v6, v10

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 631
    .end local v2           #Line:I
    .end local v6           #Str:[Ljava/lang/String;
    .end local v10           #mIndex:I
    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSIEUseSignature()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "MSG_Use_Signature"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 632
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 634
    const-string v18, "pref_key_signature_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 635
    .local v13, mSignaturePref:Lcom/htc/preference/HtcCheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "MSG_Use_Signature"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 637
    .local v9, isOn:Z
    if-eqz v13, :cond_a

    .line 639
    invoke-virtual {v13, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 640
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 641
    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 642
    const v18, 0x7f090330

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 646
    :goto_5
    const-string v18, "pref_key_signature_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcEditTextPreference;

    .line 648
    .local v14, mSignatureTextPref:Lcom/htc/preference/HtcEditTextPreference;
    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    .end local v9           #isOn:Z
    .end local v13           #mSignaturePref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v14           #mSignatureTextPref:Lcom/htc/preference/HtcEditTextPreference;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 660
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v18, "Finished_General_Customize"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 661
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 528
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 529
    const-string v18, "pref_key_sent_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 530
    .local v5, RecipSentHistoryPref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v5, :cond_c

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "RECIPT_Show_Sent_Msg_History"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 532
    const-string v18, "pref_key_sent_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    const-string v20, "RECIPT_Show_Sent_Msg_History"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 536
    .end local v5           #RecipSentHistoryPref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 545
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 546
    const-string v18, "pref_key_call_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 547
    .local v3, RecipCallHistoryPref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v3, :cond_e

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "RECIPT_Show_Call_History"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 549
    const-string v18, "pref_key_call_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    const-string v20, "RECIPT_Show_Call_History"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 553
    .end local v3           #RecipCallHistoryPref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 562
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 563
    const-string v18, "pref_key_email_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 564
    .local v4, RecipEmailAddrPref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v4, :cond_10

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "RECIPT_Show_Email_Address"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 566
    const-string v18, "pref_key_email_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    const-string v20, "RECIPT_Show_Email_Address"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 570
    .end local v4           #RecipEmailAddrPref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 609
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 615
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 618
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v18, "pref_key_msg_preview"

    const-string v19, "1"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 619
    .local v15, mSize:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 621
    .restart local v10       #mIndex:I
    const-string v18, "Toby"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setCustomizeSetting mIndex ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060024

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 625
    .restart local v6       #Str:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    aget-object v19, v6, v10

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageGeneralPreference;->preMsgPreview:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    aget-object v19, v6, v10

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 644
    .end local v6           #Str:[Ljava/lang/String;
    .end local v10           #mIndex:I
    .end local v15           #mSize:Ljava/lang/String;
    .end local v17           #prefs:Landroid/content/SharedPreferences;
    .restart local v9       #isOn:Z
    .restart local v13       #mSignaturePref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_12
    const v18, 0x7f090331

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto/16 :goto_5
.end method

.method private setDefaultSettingLayout()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f090266

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessageGeneralPreference;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f090266

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessageGeneralPreference;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 498
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 500
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 501
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 502
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 503
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 504
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 505
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 217
    invoke-static {p0, p1, p3}, Lcom/android/mms/util/MsgForwardHelper;->HandleActivityResult(Lcom/htc/preference/HtcPreferenceActivity;ILandroid/content/Intent;)Z

    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 96
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->requestWindowFeature(I)Z

    .line 97
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const-string v4, "com.android.mms_preferences"

    invoke-virtual {p0, v4, v6}, Lcom/android/mms/ui/MessageGeneralPreference;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mms_sp:Landroid/content/SharedPreferences;

    .line 100
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "com.android.mms.customizationBySIM"

    invoke-virtual {p0, v4, v6}, Lcom/android/mms/ui/MessageGeneralPreference;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    .line 105
    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    const-string v5, "Do_Customize"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbHasCustomize:Z

    .line 108
    iget-object v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->sp:Landroid/content/SharedPreferences;

    const-string v5, "Finished_General_Customize"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbCustomizeInitialed:Z

    .line 118
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRecipientListEnhance()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    const v4, 0x7f04000f

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->addPreferencesFromResource(I)V

    .line 120
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    const v4, 0x7f04000a

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->addPreferencesFromResource(I)V

    .line 122
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->prepareSmsStorageSetting()V

    .line 125
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    const v4, 0x7f040010

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->addPreferencesFromResource(I)V

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v5, "pref_recipient_list_settings"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v3, v4

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 130
    .local v3, recipient_list_settingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSendCallLog()Z

    move-result v4

    if-nez v4, :cond_5

    .line 131
    if-eqz v3, :cond_5

    .line 132
    const-string v4, "pref_key_sent_history"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 133
    const-string v4, "pref_key_call_history"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 136
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->initMsgPreviewPreference()V

    .line 137
    invoke-static {p0}, Lcom/android/mms/util/MsgForwardHelper;->initPreferenceLayout(Lcom/htc/preference/HtcPreferenceActivity;)Z

    .line 141
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v5, "pref_cmcc_setting"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v0, v4

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 144
    .local v0, blockListCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v0, :cond_8

    .line 145
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v4

    if-nez v4, :cond_6

    .line 146
    const-string v4, "pref_key_save_block_message"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 149
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 150
    const-string v4, "pref_key_mms_thread_mode"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 153
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSenderInformation()Z

    move-result v4

    if-nez v4, :cond_8

    .line 154
    const-string v4, "pref_key_forward_sender_info"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    .end local v0           #blockListCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsEmailAddress()Z

    move-result v4

    if-nez v4, :cond_b

    .line 167
    const-string v4, "pref_key_email_address"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 168
    const-string v4, "pref_key_email_address"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 171
    :cond_9
    const-string v4, "pref_key_msg_forwarding_email"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 172
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v5, "pref_key_msg_forwarding"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v5, "pref_key_msg_forwarding_email"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 178
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 180
    .local v2, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v2, :cond_b

    .line 181
    const-string v4, "pref_key_msg_forwarding"

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 183
    .local v1, forwardingCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v1, :cond_b

    .line 184
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 192
    .end local v1           #forwardingCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v2           #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 193
    const v4, 0x7f040016

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->addPreferencesFromResource(I)V

    .line 194
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->initSignature()V

    .line 199
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 200
    :cond_d
    const v4, 0x7f040001

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->addPreferencesFromResource(I)V

    .line 201
    invoke-direct {p0}, Lcom/android/mms/ui/MessageGeneralPreference;->initCallbackNumberPref()V

    .line 206
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 207
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mbHasCustomize:Z

    if-eqz v4, :cond_f

    .line 208
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageGeneralPreference;->setCustomizeSetting(Z)V

    .line 211
    :cond_f
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageGeneralPreference;->sThis:Lcom/android/mms/ui/MessageGeneralPreference;

    .line 232
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_1

    .line 289
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090268

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 311
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsLimitPref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_2

    .line 296
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090269

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 303
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mMmsCallbackCheck:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    goto :goto_0

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference;->mSetCallbackEditText:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 225
    sput-object p0, Lcom/android/mms/ui/MessageGeneralPreference;->sThis:Lcom/android/mms/ui/MessageGeneralPreference;

    .line 226
    return-void
.end method
